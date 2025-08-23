from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Api, Resource, reqparse, abort
import os
from datetime import datetime, date, time
from functools import wraps

app = Flask(__name__)
# construir caminho absoluto para o ficheiro de BD dentro de `myapi/instance`
BASE_DIR = os.path.dirname(__file__)
INSTANCE_DIR = os.path.join(BASE_DIR, 'instance')
os.makedirs(INSTANCE_DIR, exist_ok=True)
DB_PATH = os.path.join(INSTANCE_DIR, 'myapi.db')
app.config['SQLALCHEMY_DATABASE_URI'] = f"sqlite:///{DB_PATH}"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Configuração de autenticação
API_KEY = os.environ.get('API_KEY', 'desenvolvimento_key_123')  # chave padrão para dev local

db = SQLAlchemy(app)
api = Api(app)


def require_api_key(f):
    """Decorator para verificar API key"""
    @wraps(f)
    def decorated_function(*args, **kwargs):
        api_key = request.headers.get('X-API-KEY')
        if not api_key or api_key != API_KEY:
            abort(401, message='API key inválida ou ausente. Use header X-API-KEY.')
        return f(*args, **kwargs)
    return decorated_function

class UserModule(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __repr__(self):
        return f"User (name ={self.name},email = {self.email})"
    
user_args = reqparse.RequestParser()
user_args.add_argument('name', type=str, required=True, help='O name do user. Não pode ser vazio')
user_args.add_argument('email', type=str, required=True, help='O email do user. Não pode ser vazio')


class Users(Resource):
    def get(self):
        users = UserModule.query.all()
        return jsonify([{'id': u.id, 'name': u.name, 'email': u.email} for u in users])

    def post(self):
        args = user_args.parse_args()
        user = UserModule(name=args['name'], email=args['email'])
        db.session.add(user)
        db.session.commit()
        return jsonify({'id': user.id, 'name': user.name, 'email': user.email}), 201


api.add_resource(Users, '/api/users')


class Attendance(db.Model):
    __tablename__ = 'attendance'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(120), nullable=False)
    date = db.Column(db.Date, nullable=False)
    location = db.Column(db.String(120), nullable=True)
    time_entry = db.Column(db.Time, nullable=True)
    time_exit = db.Column(db.Time, nullable=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)

    def to_dict(self):
        return {
            'id': self.id,
            'name': self.name,
            'date': self.date.isoformat() if self.date else None,
            'location': self.location,
            'time_entry': self.time_entry.strftime('%H:%M:%S') if self.time_entry else None,
            'time_exit': self.time_exit.strftime('%H:%M:%S') if self.time_exit else None,
            'created_at': self.created_at.isoformat() if self.created_at else None
        }


def parse_date(s):
    try:
        return datetime.strptime(s, '%Y-%m-%d').date()
    except Exception:
        return None


def parse_time(s):
    try:
        return datetime.strptime(s, '%H:%M:%S').time()
    except Exception:
        try:
            return datetime.strptime(s, '%H:%M').time()
        except Exception:
            return None


class AttendanceListResource(Resource):
    @require_api_key
    def get(self):
        name = request.args.get('name')
        date_str = request.args.get('date')
        query = Attendance.query
        if name:
            query = query.filter(Attendance.name == name)
        if date_str:
            d = parse_date(date_str)
            if not d:
                abort(400, message='Formato de date inválido. Use YYYY-MM-DD')
            query = query.filter(Attendance.date == d)
        results = query.all()
        return [r.to_dict() for r in results]

    @require_api_key
    def post(self):
        data = request.get_json(force=True)
        if not data:
            abort(400, message='JSON inválido ou ausente')
        name = data.get('name')
        date_str = data.get('date')
        if not name or not date_str:
            abort(400, message='Campos obrigatórios: name, date')
        d = parse_date(date_str)
        if not d:
            abort(400, message='Formato de date inválido. Use YYYY-MM-DD')
        loc = data.get('location')
        te = parse_time(data.get('time_entry')) if data.get('time_entry') else None
        tx = parse_time(data.get('time_exit')) if data.get('time_exit') else None
        rec = Attendance(name=name, date=d, location=loc, time_entry=te, time_exit=tx)
        db.session.add(rec)
        db.session.commit()
        return rec.to_dict(), 201


class AttendanceResource(Resource):
    @require_api_key
    def get(self, id):
        rec = Attendance.query.get(id)
        if not rec:
            abort(404, message='Registo não encontrado')
        return rec.to_dict()


class AttendanceHistoryResource(Resource):
    @require_api_key
    def get(self):
        name = request.args.get('name')
        limit = request.args.get('limit', type=int) or 10
        if not name:
            abort(400, message='Parametro name é obrigatório')
        results = Attendance.query.filter(Attendance.name == name).order_by(Attendance.date.desc(), Attendance.time_entry.desc()).limit(limit).all()
        return [r.to_dict() for r in results]


api.add_resource(AttendanceListResource, '/attendance')
api.add_resource(AttendanceResource, '/attendance/<int:id>')
api.add_resource(AttendanceHistoryResource, '/attendance/history')

@app.route('/')
def home():
    return jsonify({
        'message': 'Welcome to my API!', 
        'status': 'online',
        'authentication': 'required',
        'header_required': 'X-API-KEY'
    })


@app.route('/auth-info')
def auth_info():
    return jsonify({
        'authentication_method': 'API Key',
        'header_name': 'X-API-KEY',
        'example_usage': 'curl -H "X-API-KEY: your_key_here" https://api-url/attendance',
        'endpoints_requiring_auth': ['/attendance', '/attendance/{id}', '/attendance/history'],
        'public_endpoints': ['/', '/auth-info']
    })



def init_db(seed=True):
    # assegurar que a pasta instance existe (já criada mais acima, mas garantir)
    inst_path = INSTANCE_DIR
    os.makedirs(inst_path, exist_ok=True)
    # criar tabelas
    db.create_all()
    if seed:
        # inserir um registo de exemplo se não houver nenhum
        if Attendance.query.first() is None:
            sample = Attendance(
                name='Colaborador A',
                date=date.today(),
                location='Escritório Central',
                time_entry=parse_time('08:42:00'),
                time_exit=None
            )
            db.session.add(sample)
            db.session.commit()


if __name__ == '__main__':
    # inicializa DB e inicia a app
    with app.app_context():
        init_db(seed=True)
    app.run(host='127.0.0.1', port=5000, debug=True)
