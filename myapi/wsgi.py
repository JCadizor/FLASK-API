#!/usr/bin/env python
"""
Script de entrada para production (usado pelo Render/Heroku)
"""
import os
from api import app, init_db

# Configurações para produção
if __name__ != '__main__':
    # Quando executado pelo gunicorn, inicializar BD
    with app.app_context():
        init_db(seed=True)

if __name__ == "__main__":
    # Para desenvolvimento local
    with app.app_context():
        init_db(seed=True)
    
    # Usar variáveis de ambiente para port (Render/Heroku)
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port, debug=False)
