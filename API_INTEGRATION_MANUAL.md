# Manual de Integração - API REST de Assiduidade

## Informações Gerais

**Nome do Projeto:** Flask Attendance API  
**URL de Produção:** `https://flask-attendance-api-ymvx.onrender.com`  
**Repositório:** `https://github.com/JCadizor/FLASK-API`  
**Versão:** 1.0  
**Data:** Agosto 2025  

## Autenticação

### Método de Autenticação
- **Tipo:** API Key
- **Header Obrigatório:** `X-API-KEY`
- **Chave de Desenvolvimento:** `desenvolvimento_key_123`
- **Chave de Produção:** Configurada como variável de ambiente `API_KEY` no Render

### Exemplo de Autenticação
```bash
# cURL
curl -H "X-API-KEY: desenvolvimento_key_123" \
     https://flask-attendance-api-ymvx.onrender.com/attendance

# Python requests
headers = {"X-API-KEY": "desenvolvimento_key_123"}
response = requests.get("https://flask-attendance-api-ymvx.onrender.com/attendance", headers=headers)

# JavaScript fetch
const headers = {"X-API-KEY": "desenvolvimento_key_123"};
fetch("https://flask-attendance-api-ymvx.onrender.com/attendance", {headers})
```

## Endpoints Disponíveis

### 1. Informações Gerais (Público)

#### `GET /`
- **Descrição:** Informações básicas da API
- **Autenticação:** Não requerida
- **Resposta:**
```json
{
  "message": "Welcome to my API!",
  "status": "online",
  "authentication": "required",
  "header_required": "X-API-KEY"
}
```

#### `GET /auth-info`
- **Descrição:** Informações sobre autenticação
- **Autenticação:** Não requerida
- **Resposta:**
```json
{
  "authentication_method": "API Key",
  "header_name": "X-API-KEY",
  "example_usage": "curl -H \"X-API-KEY: your_key_here\" https://api-url/attendance",
  "endpoints_requiring_auth": ["/attendance", "/attendance/{id}", "/attendance/history"],
  "public_endpoints": ["/", "/auth-info"]
}
```

### 2. Gestão de Registos de Assiduidade (Autenticação Obrigatória)

#### `GET /attendance`
- **Descrição:** Lista todos os registos ou filtra por parâmetros
- **Autenticação:** Obrigatória
- **Parâmetros de Query (Opcionais):**
  - `name` (string): Nome do colaborador
  - `date` (string): Data no formato YYYY-MM-DD
- **Exemplo de Request:**
```bash
GET /attendance?name=Colaborador A&date=2025-08-21
```
- **Resposta de Sucesso (200):**
```json
[
  {
    "id": 1,
    "name": "Colaborador A",
    "date": "2025-08-21",
    "location": "Escritório Central",
    "time_entry": "08:42:00",
    "time_exit": null,
    "created_at": "2025-08-21T21:31:07.379543"
  }
]
```

#### `POST /attendance`
- **Descrição:** Cria um novo registo de assiduidade
- **Autenticação:** Obrigatória
- **Content-Type:** `application/json`
- **Body (JSON):**
```json
{
  "name": "Nome do Colaborador",
  "date": "2025-08-23",
  "location": "Escritório Norte",
  "time_entry": "09:15:00",
  "time_exit": "17:30:00"
}
```
- **Campos Obrigatórios:** `name`, `date`
- **Campos Opcionais:** `location`, `time_entry`, `time_exit`
- **Resposta de Sucesso (201):**
```json
{
  "id": 4,
  "name": "Nome do Colaborador",
  "date": "2025-08-23",
  "location": "Escritório Norte",
  "time_entry": "09:15:00",
  "time_exit": "17:30:00",
  "created_at": "2025-08-23T10:15:30.123456"
}
```

#### `GET /attendance/{id}`
- **Descrição:** Obtém um registo específico por ID
- **Autenticação:** Obrigatória
- **Parâmetros de URL:**
  - `id` (integer): ID do registo
- **Exemplo:** `GET /attendance/1`
- **Resposta de Sucesso (200):** Objeto de registo (mesmo formato do POST)
- **Resposta de Erro (404):**
```json
{
  "message": "Registo não encontrado"
}
```

#### `GET /attendance/history`
- **Descrição:** Histórico de registos por colaborador
- **Autenticação:** Obrigatória
- **Parâmetros de Query:**
  - `name` (string, obrigatório): Nome do colaborador
  - `limit` (integer, opcional): Número máximo de registos (padrão: 10)
- **Exemplo:** `GET /attendance/history?name=Colaborador A&limit=5`
- **Resposta:** Array de registos ordenados por data/hora (mais recente primeiro)

## Códigos de Resposta HTTP

| Código | Descrição | Cenário |
|--------|-----------|---------|
| 200 | OK | Request bem-sucedido |
| 201 | Created | Registo criado com sucesso |
| 400 | Bad Request | Dados inválidos ou em falta |
| 401 | Unauthorized | API key inválida ou ausente |
| 404 | Not Found | Registo não encontrado |
| 500 | Internal Server Error | Erro interno do servidor |

## Formato de Dados

### Objeto Attendance (Registo de Assiduidade)
```json
{
  "id": "integer - ID único do registo",
  "name": "string - Nome do colaborador",
  "date": "string - Data no formato YYYY-MM-DD",
  "location": "string|null - Local de trabalho",
  "time_entry": "string|null - Hora de entrada (HH:MM:SS)",
  "time_exit": "string|null - Hora de saída (HH:MM:SS)",
  "created_at": "string - Timestamp de criação (ISO 8601)"
}
```

### Validações
- **date:** Formato YYYY-MM-DD obrigatório
- **time_entry/time_exit:** Formato HH:MM:SS ou HH:MM
- **name:** String não vazia
- **location:** Opcional, pode ser null

## Exemplos de Integração

### Python (requests)
```python
import requests
from datetime import date

class AttendanceAPI:
    def __init__(self, base_url, api_key):
        self.base_url = base_url
        self.headers = {"X-API-KEY": api_key, "Content-Type": "application/json"}
    
    def get_attendance(self, name=None, date=None):
        """Obter registos de assiduidade"""
        params = {}
        if name: params['name'] = name
        if date: params['date'] = date
        
        response = requests.get(f"{self.base_url}/attendance", 
                              headers=self.headers, params=params)
        return response.json()
    
    def create_attendance(self, name, date, location=None, time_entry=None, time_exit=None):
        """Criar novo registo"""
        data = {"name": name, "date": date}
        if location: data["location"] = location
        if time_entry: data["time_entry"] = time_entry
        if time_exit: data["time_exit"] = time_exit
        
        response = requests.post(f"{self.base_url}/attendance", 
                               headers=self.headers, json=data)
        return response.json()
    
    def get_history(self, name, limit=10):
        """Obter histórico por colaborador"""
        params = {"name": name, "limit": limit}
        response = requests.get(f"{self.base_url}/attendance/history", 
                              headers=self.headers, params=params)
        return response.json()

# Exemplo de uso
api = AttendanceAPI("https://flask-attendance-api-ymvx.onrender.com", "desenvolvimento_key_123")

# Verificar se colaborador já entrou hoje
today = date.today().isoformat()
records = api.get_attendance(name="Colaborador A", date=today)
if records and records[0]["time_entry"]:
    print(f"Sim — o Colaborador A entrou hoje às {records[0]['time_entry']}.")
else:
    print("Hoje o Colaborador A ainda não entrou na empresa.")
```

### JavaScript (Node.js/React Native)
```javascript
class AttendanceAPI {
    constructor(baseUrl, apiKey) {
        this.baseUrl = baseUrl;
        this.headers = {
            'X-API-KEY': apiKey,
            'Content-Type': 'application/json'
        };
    }
    
    async getAttendance(name = null, date = null) {
        const params = new URLSearchParams();
        if (name) params.append('name', name);
        if (date) params.append('date', date);
        
        const response = await fetch(`${this.baseUrl}/attendance?${params}`, {
            headers: this.headers
        });
        return response.json();
    }
    
    async createAttendance(data) {
        const response = await fetch(`${this.baseUrl}/attendance`, {
            method: 'POST',
            headers: this.headers,
            body: JSON.stringify(data)
        });
        return response.json();
    }
    
    async getHistory(name, limit = 10) {
        const params = new URLSearchParams({name, limit});
        const response = await fetch(`${this.baseUrl}/attendance/history?${params}`, {
            headers: this.headers
        });
        return response.json();
    }
}

// Exemplo de uso
const api = new AttendanceAPI('https://flask-attendance-api-ymvx.onrender.com', 'desenvolvimento_key_123');

// Função para verificar entrada do colaborador
async function checkEmployeeEntry(employeeName) {
    const today = new Date().toISOString().split('T')[0]; // YYYY-MM-DD
    const records = await api.getAttendance(employeeName, today);
    
    if (records.length > 0 && records[0].time_entry) {
        return `Sim — o ${employeeName} entrou hoje às ${records[0].time_entry}.`;
    } else {
        return `Hoje o ${employeeName} ainda não entrou na empresa.`;
    }
}
```

## Fluxo de Integração com Agente IA

### Cenário: "Colaborador A já entrou hoje?"

1. **Input do Utilizador:** Pergunta em linguagem natural
2. **Agente IA (LLM):** Interpreta e gera request estruturado:
```json
{
  "method": "GET",
  "endpoint": "/attendance",
  "params": {
    "name": "Colaborador A",
    "date": "2025-08-23"
  }
}
```
3. **Aplicação:** Executa request à API
4. **API:** Responde com dados estruturados
5. **Agente IA:** Interpreta resposta e gera texto natural
6. **Output:** Resposta em linguagem natural ao utilizador

### Configuração para STT/TTS
```python
# Exemplo de integração completa
async def process_voice_query(audio_input):
    # 1. Speech-to-Text
    text_query = await stt_service.transcribe(audio_input)
    
    # 2. LLM processing
    api_request = await llm_service.generate_api_request(text_query)
    
    # 3. Execute API call
    api_response = await attendance_api.execute_request(api_request)
    
    # 4. LLM response generation
    natural_response = await llm_service.generate_natural_response(api_response)
    
    # 5. Text-to-Speech
    audio_output = await tts_service.synthesize(natural_response)
    
    return audio_output
```

## Considerações de Produção

### Segurança
- ✅ Autenticação por API Key implementada
- ✅ Validação de dados de entrada
- ✅ Headers CORS configurados automaticamente pelo Render
- 🔄 **Recomendado:** Implementar rate limiting para produção
- 🔄 **Recomendado:** Usar HTTPS (automático no Render)

### Performance
- ✅ Base de dados SQLite adequada para ≤1000 registos/dia
- ✅ Queries indexadas por nome e data
- 🔄 **Para escala maior:** Migrar para PostgreSQL

### Monitorização
- ✅ Logs automáticos no Render
- ✅ Health check via endpoint `/`
- 🔄 **Recomendado:** Implementar métricas de uso por API key

## Limitações Conhecidas

1. **Escalabilidade:** SQLite adequado apenas para prototipagem
2. **Concorrência:** Limitada pela natureza single-threaded do SQLite
3. **Backup:** Não há backup automático da base de dados
4. **Rate Limiting:** Não implementado (pode ser adicionado facilmente)

## Contacto e Suporte

**Projeto:** Engenharia Eletrotécnica e de Computadores - ISEP  
**Autor:** José Cádiz 
**Repositório:** https://github.com/JCadizor/FLASK-API  
**Data de Criação:** Agosto 2025  

---

*Este documento serve como referência técnica para integração com a API REST de Assiduidade desenvolvida como parte do projeto de licenciatura em Engenharia Eletrotécnica e de Computadores.*
