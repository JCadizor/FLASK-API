# Flask Attendance API

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-3.1.1-green.svg)
![Status](https://img.shields.io/badge/Status-Online-brightgreen.svg)

API REST para gestão de registos de assiduidade de colaboradores, desenvolvida como parte de um projeto de licenciatura em Engenharia Eletrotécnica e de Computadores.

## 🌐 API Online

**URL de Produção:** [https://flask-attendance-api-ymvx.onrender.com](https://flask-attendance-api-ymvx.onrender.com)

## 📋 Características

- ✅ **Autenticação por API Key** - Segurança básica implementada
- ✅ **Endpoints RESTful** - Operações CRUD completas
- ✅ **Base de dados SQLite** - Adequada para prototipagem
- ✅ **Deploy automático** - Hospedado no Render.com
- ✅ **Validação de dados** - Formatos de data/hora validados
- ✅ **Documentação completa** - Manuais de integração incluídos

## 🚀 Quick Start

### Testar a API Online
```bash
# Endpoint público (sem autenticação)
curl https://flask-attendance-api-ymvx.onrender.com/

# Endpoints protegidos (com autenticação)
curl -H "X-API-KEY: desenvolvimento_key_123" \
     https://flask-attendance-api-ymvx.onrender.com/attendance
```

### Desenvolvimento Local
```bash
# Clonar repositório
git clone https://github.com/JCadizor/FLASK-API.git
cd FLASK-API/myapi

# Criar ambiente virtual
python -m venv .venv
. .\.venv\Scripts\Activate.ps1  # Windows PowerShell

# Instalar dependências
pip install -r requirements.txt

# Executar API
python api.py
```

## 📚 Documentação

### 📖 [Manual de Integração Completo](./API_INTEGRATION_MANUAL.md)
Documentação técnica completa da API incluindo:
- **Autenticação** - Como usar API Keys
- **Endpoints** - Todos os endpoints documentados com exemplos
- **Códigos de resposta** - Lista completa de códigos HTTP
- **Formato de dados** - Estrutura JSON dos objetos
- **Exemplos de integração** - Python, JavaScript/Node.js
- **Fluxo com agente IA** - Como integrar com sistemas multimodais
- **Considerações de produção** - Segurança, performance, limitações

### 🎯 [Guia de Integração Multimodal](./MULTIMODAL_INTEGRATION_GUIDE.md)
Código pronto para integração com sistemas STT/LLM/TTS:
- **Cliente Python assíncrono** - Classe `AttendanceClient` completa
- **Processamento de linguagem natural** - Interpretação de perguntas
- **Integração de voz** - STT/TTS usando SpeechRecognition + pyttsx3
- **Demo completo** - Sistema multimodal funcional
- **Comandos de teste** - Testes rápidos e validação

### 🛠 [Guia de Deploy](./DEPLOY.md)
Instruções para colocar a API online:
- **Render.com** - Deploy gratuito/pago
- **Configuração** - Variáveis de ambiente
- **Comandos** - Setup passo-a-passo

## 🔗 Endpoints Principais

| Método | Endpoint | Descrição | Auth |
|--------|----------|-----------|------|
| `GET` | `/` | Informações da API | ❌ |
| `GET` | `/auth-info` | Info de autenticação | ❌ |
| `GET` | `/attendance` | Listar registos | ✅ |
| `POST` | `/attendance` | Criar registo | ✅ |
| `GET` | `/attendance/{id}` | Obter registo específico | ✅ |
| `GET` | `/attendance/history` | Histórico por colaborador | ✅ |

**Autenticação:** Header `X-API-KEY: desenvolvimento_key_123`

## 🎯 Exemplo de Uso

### Verificar se colaborador entrou hoje
```python
import requests

headers = {"X-API-KEY": "desenvolvimento_key_123"}
response = requests.get(
    "https://flask-attendance-api-ymvx.onrender.com/attendance",
    params={"name": "Colaborador A", "date": "2025-08-23"},
    headers=headers
)

data = response.json()
if data and data[0]["time_entry"]:
    print(f"✅ Colaborador A entrou às {data[0]['time_entry']}")
else:
    print("❌ Colaborador A ainda não entrou hoje")
```

### Fluxo de Integração com IA
```
Utilizador: "O João já chegou ao trabalho?"
    ↓
Agente IA: Gera request → GET /attendance?name=João&date=2025-08-23
    ↓
API: Responde com dados estruturados
    ↓
Agente IA: "Sim, o João entrou hoje às 08:30."
```

## 📊 Modelo de Dados

```json
{
  "id": 1,
  "name": "Colaborador A",
  "date": "2025-08-23",
  "location": "Escritório Central",
  "time_entry": "08:42:00",
  "time_exit": "17:30:00",
  "created_at": "2025-08-23T08:42:00.123456"
}
```

## 🧪 Testes

```bash
# Executar testes locais
cd myapi
python test_api.py        # Teste completo da API
python test_auth.py       # Teste de autenticação
python test_post.py       # Teste de criação de registos
```

## 🛡️ Segurança

- **Autenticação por API Key** - Header `X-API-KEY` obrigatório
- **Validação de entrada** - Todos os inputs são validados
- **HTTPS** - Comunicação encriptada (automático no Render)
- **Logs de auditoria** - Requests são logged automaticamente

## 🎓 Contexto Académico

Este projeto foi desenvolvido como parte de uma licenciatura em **Engenharia Eletrotécnica e de Computadores** e serve como base de dados simulada para um sistema multimodal de interação utilizador-IA.

### Tecnologias Utilizadas
- **Backend:** Flask 3.1.1 + Flask-RESTful
- **Base de dados:** SQLite (desenvolvimento) / PostgreSQL (produção)
- **Deploy:** Render.com com auto-deploy via GitHub
- **Autenticação:** API Key simples
- **Documentação:** Markdown com exemplos de código

### Integração com Projeto Multimodal
A API está desenhada para integração com:
- **Speech-to-Text (STT)** - Reconhecimento de voz
- **Large Language Models (LLM)** - Processamento de linguagem natural
- **Text-to-Speech (TTS)** - Síntese de voz
- **Aplicação móvel** - React Native/Expo

## 📈 Roadmap

- [ ] **Rate limiting** por API key
- [ ] **Backup automático** da base de dados
- [ ] **Métricas de uso** e monitorização
- [ ] **Webhooks** para notificações
- [ ] **Autenticação JWT** para múltiplos utilizadores
- [ ] **Interface web** para administração

## 🤝 Contribuições

Este é um projeto académico, mas sugestões e melhorias são bem-vindas:

1. Fork o repositório
2. Criar branch para feature (`git checkout -b feature/AmazingFeature`)
3. Commit das alterações (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abrir Pull Request

## 📄 Licença

Este projeto está sob licença MIT. Ver ficheiro `LICENSE` para mais detalhes.

## 📞 Contacto

**Projeto:** Engenharia Eletrotécnica e de Computadores - ISEP  
**Repositório:** [https://github.com/JCadizor/FLASK-API](https://github.com/JCadizor/FLASK-API)  
**API Online:** [https://flask-attendance-api-ymvx.onrender.com](https://flask-attendance-api-ymvx.onrender.com)

---

⭐ **Se este projeto te foi útil, deixa uma estrela no GitHub!**
