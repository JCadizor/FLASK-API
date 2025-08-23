#!/usr/bin/env python
"""
Teste da API com autenticação por API Key
"""
import requests
import json

def test_api_with_auth():
    """Testa endpoints com e sem autenticação"""
    
    # Configuração
    base_url = "https://flask-attendance-api-ymvx.onrender.com"  # ou "http://127.0.0.1:5000" para local
    api_key = "desenvolvimento_key_123"  # chave padrão para desenvolvimento
    
    headers = {
        "X-API-KEY": api_key,
        "Content-Type": "application/json"
    }
    
    print("🔐 Testando API com autenticação...")
    print(f"Base URL: {base_url}")
    print(f"API Key: {api_key}")
    print("-" * 50)
    
    try:
        # Teste 1: Endpoints públicos (sem auth)
        print("\\n1. Testando endpoints públicos (sem autenticação)...")
        
        response = requests.get(f"{base_url}/")
        print(f"GET / - Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        response = requests.get(f"{base_url}/auth-info")
        print(f"GET /auth-info - Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Teste 2: Endpoints protegidos SEM API key (deve falhar)
        print("\\n2. Testando endpoint protegido SEM API key (deve dar erro 401)...")
        response = requests.get(f"{base_url}/attendance")
        print(f"GET /attendance (sem auth) - Status: {response.status_code}")
        if response.status_code != 200:
            print(f"Erro esperado: {response.text}")
        
        # Teste 3: Endpoints protegidos COM API key (deve funcionar)
        print("\\n3. Testando endpoints protegidos COM API key...")
        
        response = requests.get(f"{base_url}/attendance", headers=headers)
        print(f"GET /attendance (com auth) - Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            print(f"Registos encontrados: {len(data)}")
            if data:
                print(f"Primeiro registo: {data[0]}")
        
        # Teste 4: Filtrar por nome
        print("\\n4. Testando filtro por nome...")
        response = requests.get(f"{base_url}/attendance", 
                              params={"name": "Colaborador A"}, 
                              headers=headers)
        print(f"GET /attendance?name=Colaborador A - Status: {response.status_code}")
        if response.status_code == 200:
            data = response.json()
            print(f"Registos do Colaborador A: {len(data)}")
        
        # Teste 5: Criar novo registo
        print("\\n5. Testando criação de novo registo...")
        new_record = {
            "name": "Colaborador Teste",
            "date": "2025-08-23",
            "location": "Escritório Teste",
            "time_entry": "10:30:00"
        }
        response = requests.post(f"{base_url}/attendance", 
                               json=new_record, 
                               headers=headers)
        print(f"POST /attendance - Status: {response.status_code}")
        if response.status_code == 201:
            print(f"Registo criado: {response.json()}")
        
    except requests.exceptions.ConnectionError:
        print("❌ Erro: Não foi possível conectar à API.")
    except Exception as e:
        print(f"❌ Erro: {e}")

def test_different_api_keys():
    """Testa com chaves diferentes para verificar segurança"""
    base_url = "https://flask-attendance-api-ymvx.onrender.com"
    
    print("\\n🔑 Testando diferentes API keys...")
    
    # Teste com chave inválida
    invalid_headers = {"X-API-KEY": "chave_invalida_123"}
    response = requests.get(f"{base_url}/attendance", headers=invalid_headers)
    print(f"Chave inválida - Status: {response.status_code} (esperado: 401)")
    
    # Teste sem header
    response = requests.get(f"{base_url}/attendance")
    print(f"Sem header - Status: {response.status_code} (esperado: 401)")

if __name__ == "__main__":
    test_api_with_auth()
    test_different_api_keys()
    
    print("\\n✅ Testes concluídos!")
    print("\\n📋 Para usar a API nas tuas aplicações:")
    print("   - Adiciona o header: X-API-KEY: desenvolvimento_key_123")
    print("   - Em produção, muda a chave na variável de ambiente API_KEY no Render")
