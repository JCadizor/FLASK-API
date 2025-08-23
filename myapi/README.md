Instruções para arrancar a API Flask (desenvolvimento)

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
