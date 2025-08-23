# Flask API - Assiduidade de Colaboradores

API REST simples para gestão de registos de entrada/saída de colaboradores.

## Deploy Online (Render.com)

### Passos para colocar online:

1. **Push para GitHub**
   ```bash
   git add .
   git commit -m "Add production files"
   git push origin main
   ```

2. **Criar conta no Render.com**
   - Ir a [render.com](https://render.com)
   - Fazer login com GitHub

3. **Criar Web Service**
   - "New" → "Web Service"
   - Conectar ao repositório `FLASK-API`
   - Configurações:
     - **Name**: `flask-attendance-api`
     - **Root Directory**: `myapi`
     - **Environment**: `Python 3`
     - **Build Command**: `pip install -r requirements.txt`
     - **Start Command**: `gunicorn wsgi:app`
     - **Plan**: Free (ou Starter $7/mês para sempre online)

4. **Deploy automático**
   - Render faz deploy automaticamente
   - URL será algo como: `https://flask-attendance-api.onrender.com`

### Testar a API online
```bash
# Endpoint raiz
curl https://flask-attendance-api.onrender.com/

# Ver registos
curl https://flask-attendance-api.onrender.com/attendance

# Filtrar por nome
curl "https://flask-attendance-api.onrender.com/attendance?name=Colaborador A"
```

### Custos estimados:
- **Free tier**: $0/mês (app "dorme" após 15min sem uso)
- **Starter**: $7/mês (sempre online, ideal para produção)

Para 10 requests/dia, o plano gratuito é suficiente.

## Desenvolvimento Local

Ver instruções no README.md principal.
