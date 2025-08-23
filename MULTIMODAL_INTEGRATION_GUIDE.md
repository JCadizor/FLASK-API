# Guia de Integração - Projeto MULTIMODAL-API-INTEGRATOR

## Configuração Rápida

### 1. Variáveis de Configuração
```python
# config.py - Copiar para o projeto MULTIMODAL-API-INTEGRATOR
API_CONFIG = {
    "base_url": "https://flask-attendance-api-ymvx.onrender.com",
    "api_key": "desenvolvimento_key_123",  # Mudar em produção
    "timeout": 30,
    "retry_attempts": 3
}

HEADERS = {
    "X-API-KEY": API_CONFIG["api_key"],
    "Content-Type": "application/json"
}
```

### 2. Classe Utilitária para Integração
```python
# attendance_client.py
import aiohttp
import asyncio
from datetime import date, datetime
import logging

class AttendanceClient:
    def __init__(self, base_url, api_key):
        self.base_url = base_url.rstrip('/')
        self.headers = {
            "X-API-KEY": api_key,
            "Content-Type": "application/json"
        }
        self.session = None
    
    async def __aenter__(self):
        self.session = aiohttp.ClientSession(headers=self.headers)
        return self
    
    async def __aexit__(self, exc_type, exc_val, exc_tb):
        if self.session:
            await self.session.close()
    
    async def check_employee_status(self, employee_name, check_date=None):
        """
        Verifica se um colaborador já deu entrada numa data específica.
        Retorna resposta formatada para o agente IA.
        """
        if not check_date:
            check_date = date.today().isoformat()
        
        try:
            params = {"name": employee_name, "date": check_date}
            async with self.session.get(f"{self.base_url}/attendance", params=params) as response:
                if response.status == 200:
                    records = await response.json()
                    if records and records[0].get("time_entry"):
                        entry_time = records[0]["time_entry"]
                        location = records[0].get("location", "escritório")
                        return {
                            "status": "entered",
                            "message": f"Sim — o {employee_name} entrou hoje às {entry_time} no {location}.",
                            "data": records[0]
                        }
                    else:
                        return {
                            "status": "not_entered", 
                            "message": f"Hoje o {employee_name} ainda não entrou na empresa.",
                            "data": None
                        }
                elif response.status == 401:
                    return {"status": "error", "message": "Erro de autenticação na API.", "data": None}
                else:
                    return {"status": "error", "message": "Erro ao consultar dados.", "data": None}
        except Exception as e:
            logging.error(f"Erro na consulta: {e}")
            return {"status": "error", "message": "Erro de conexão com a base de dados.", "data": None}
    
    async def get_employee_history(self, employee_name, limit=5):
        """Obtém histórico recente de um colaborador"""
        try:
            params = {"name": employee_name, "limit": limit}
            async with self.session.get(f"{self.base_url}/attendance/history", params=params) as response:
                if response.status == 200:
                    return await response.json()
                return []
        except Exception as e:
            logging.error(f"Erro ao obter histórico: {e}")
            return []
    
    async def record_entry(self, employee_name, entry_time=None, location="Escritório Central"):
        """Registra entrada de um colaborador"""
        if not entry_time:
            entry_time = datetime.now().strftime("%H:%M:%S")
        
        data = {
            "name": employee_name,
            "date": date.today().isoformat(),
            "location": location,
            "time_entry": entry_time
        }
        
        try:
            async with self.session.post(f"{self.base_url}/attendance", json=data) as response:
                if response.status == 201:
                    return await response.json()
                return None
        except Exception as e:
            logging.error(f"Erro ao registar entrada: {e}")
            return None
```

### 3. Integração com Agente IA

```python
# ai_agent_integration.py
async def process_attendance_query(user_input, attendance_client):
    """
    Processa pergunta do utilizador sobre assiduidade.
    Retorna resposta natural.
    """
    
    # Dicionário de padrões simples (pode ser substituído por LLM)
    patterns = {
        "entrou": {"action": "check_entry", "extract_name": True},
        "chegou": {"action": "check_entry", "extract_name": True},
        "está": {"action": "check_entry", "extract_name": True},
        "histórico": {"action": "get_history", "extract_name": True},
        "últimas": {"action": "get_history", "extract_name": True}
    }
    
    # Extração simples de nome (melhorar com NLP)
    def extract_employee_name(text):
        # Procurar padrões como "Colaborador A", "João", etc.
        words = text.split()
        for i, word in enumerate(words):
            if word.lower() in ["colaborador", "funcionário", "empregado"]:
                if i + 1 < len(words):
                    return f"Colaborador {words[i + 1]}"
        # Se não encontrar padrão, assumir que o nome está na string
        return "Colaborador A"  # padrão para demo
    
    user_input_lower = user_input.lower()
    
    # Determinar ação
    action = "check_entry"  # padrão
    for keyword, config in patterns.items():
        if keyword in user_input_lower:
            action = config["action"]
            break
    
    employee_name = extract_employee_name(user_input)
    
    # Executar ação
    if action == "check_entry":
        result = await attendance_client.check_employee_status(employee_name)
        return result["message"]
    
    elif action == "get_history":
        history = await attendance_client.get_employee_history(employee_name)
        if history:
            recent = history[0]
            return f"Última entrada do {employee_name}: {recent['date']} às {recent['time_entry']}."
        else:
            return f"Não encontrei registos recentes do {employee_name}."
    
    return "Desculpe, não compreendi a pergunta."

# Exemplo de uso
async def main():
    async with AttendanceClient(API_CONFIG["base_url"], API_CONFIG["api_key"]) as client:
        
        # Simular perguntas do utilizador
        queries = [
            "O Colaborador A já entrou hoje?",
            "A Maria chegou ao escritório?",
            "Mostra-me o histórico do João"
        ]
        
        for query in queries:
            print(f"Pergunta: {query}")
            response = await process_attendance_query(query, client)
            print(f"Resposta: {response}\\n")

# Executar: asyncio.run(main())
```

### 4. Integração STT/TTS

```python
# voice_integration.py
import speech_recognition as sr
import pyttsx3
import asyncio

class VoiceAttendanceSystem:
    def __init__(self, attendance_client):
        self.attendance_client = attendance_client
        self.recognizer = sr.Recognizer()
        self.microphone = sr.Microphone()
        self.tts_engine = pyttsx3.init()
        
        # Configurar TTS
        self.tts_engine.setProperty('rate', 150)
        self.tts_engine.setProperty('volume', 0.9)
    
    def listen_for_question(self):
        """Captura áudio do microfone e converte para texto"""
        try:
            with self.microphone as source:
                print("🎤 A ouvir... Faça a sua pergunta:")
                self.recognizer.adjust_for_ambient_noise(source)
                audio = self.recognizer.listen(source, timeout=5)
            
            # STT usando Google Speech Recognition
            text = self.recognizer.recognize_google(audio, language='pt-PT')
            print(f"🗣️ Pergunta: {text}")
            return text
            
        except sr.UnknownValueError:
            return "Não consegui compreender o que disse."
        except sr.RequestError as e:
            return f"Erro no serviço de reconhecimento: {e}"
        except sr.WaitTimeoutError:
            return "Timeout - nenhuma pergunta detectada."
    
    def speak_response(self, text):
        """Converte texto para voz"""
        print(f"🔊 Resposta: {text}")
        self.tts_engine.say(text)
        self.tts_engine.runAndWait()
    
    async def run_voice_session(self):
        """Sessão completa de voz: STT → API → TTS"""
        try:
            # 1. Capturar pergunta por voz
            question = self.listen_for_question()
            
            if "erro" in question.lower() or "não consegui" in question.lower():
                self.speak_response(question)
                return
            
            # 2. Processar com a API de assiduidade
            response = await process_attendance_query(question, self.attendance_client)
            
            # 3. Responder por voz
            self.speak_response(response)
            
        except Exception as e:
            error_msg = f"Erro no sistema: {e}"
            print(error_msg)
            self.speak_response("Desculpe, ocorreu um erro no sistema.")

# Exemplo de uso completo
async def run_multimodal_demo():
    """Demo completo do sistema multimodal"""
    async with AttendanceClient(API_CONFIG["base_url"], API_CONFIG["api_key"]) as client:
        voice_system = VoiceAttendanceSystem(client)
        
        print("🎯 Sistema Multimodal de Assiduidade Iniciado")
        print("Diga 'parar' para terminar\\n")
        
        while True:
            await voice_system.run_voice_session()
            
            # Perguntar se quer continuar
            voice_system.speak_response("Tem mais alguma pergunta?")
            continue_listening = voice_system.listen_for_question()
            
            if any(word in continue_listening.lower() for word in ["não", "parar", "sair", "fim"]):
                voice_system.speak_response("Obrigado! Sistema terminado.")
                break

# Para executar: asyncio.run(run_multimodal_demo())
```

## Comandos de Teste Rápido

```bash
# Testar API diretamente
curl -H "X-API-KEY: desenvolvimento_key_123" \
     "https://flask-attendance-api-ymvx.onrender.com/attendance?name=Colaborador A"

# Instalar dependências para o cliente Python
pip install aiohttp speech_recognition pyttsx3 pyaudio

# Testar conexão
python -c "import requests; print(requests.get('https://flask-attendance-api-ymvx.onrender.com/').json())"
```

## Próximos Passos

1. **Copiar ficheiros** para o projeto MULTIMODAL-API-INTEGRATOR
2. **Instalar dependências** necessárias
3. **Testar conexão** com a API
4. **Integrar com modelos** STT/TTS/LLM existentes
5. **Configurar chave de produção** no Render quando necessário

---

*Este guia complementa o manual principal e fornece código pronto para integração no projeto multimodal.*
