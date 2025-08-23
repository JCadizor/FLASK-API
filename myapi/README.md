Instruções para arrancar a API Flask (desenvolvimento)

## Desenvolvimento Local

1) Criar e ativar um virtualenv (PowerShell):

```powershell
python -m venv .venv
. .\.venv\Scripts\Activate.ps1
```

2) Instalar dependências:

```powershell
pip install -r requirements.txt
```

3) Arrancar a API:

```powershell
python api.py
```

A primeira execução cria `instance/myapi.db` e insere um registo de exemplo (Colaborador A). Endpoint base: http://127.0.0.1:5000/

## Deploy Online

Para colocar a API online (Render.com), ver instruções em `../DEPLOY.md`.

## Endpoints da API

- `GET /` - Mensagem de boas-vindas
- `GET /attendance` - Listar todos os registos
- `GET /attendance?name={nome}&date={YYYY-MM-DD}` - Filtrar registos
- `POST /attendance` - Criar novo registo
- `GET /attendance/{id}` - Ver registo específico
- `GET /attendance/history?name={nome}&limit={n}` - Histórico por colaborador
