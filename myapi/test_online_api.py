#!/usr/bin/env python
"""
Script para testar a API online
"""
import requests
import json

# Configuração
BASE_URL = "https://flask-attendance-api-ymvx.onrender.com"
API_KEY = "b41c267d8948386337124a641688b0de"

def get_headers():
    return {
        "X-API-KEY": API_KEY,
        "Content-Type": "application/json"
    }

def test_api():
    print("🧪 TESTE DA API ONLINE")
    print("=" * 40)
    
    # Teste 1: Endpoint raiz
    print("\n1️⃣ Testando endpoint raiz...")
    try:
        response = requests.get(f"{BASE_URL}/", headers=get_headers())
        print(f"Status: {response.status_code}")
        print(f"Resposta: {response.json()}")
    except Exception as e:
        print(f"Erro: {e}")
    
    # Teste 2: Listar todos os registos
    print("\n2️⃣ Listando todos os registos...")
    try:
        response = requests.get(f"{BASE_URL}/attendance", headers=get_headers())
        print(f"Status: {response.status_code}")
        data = response.json()
        print(f"Total de registos: {len(data) if isinstance(data, list) else 'N/A'}")
        if isinstance(data, list) and len(data) > 0:
            print("Primeiros 3 registos:")
            for i, record in enumerate(data[:3], 1):
                print(f"  {i}. {record.get('name')} - {record.get('date')} - {record.get('time_entry')}")
    except Exception as e:
        print(f"Erro: {e}")
    
    # Teste 3: Tentar inserir um registo
    print("\n3️⃣ Testando inserção de registo...")
    try:
        test_data = {
            "name": "Teste API",
            "date": "2025-09-04",
            "location": "Escritório Central",
            "time_entry": "14:45:00"
        }
        response = requests.post(f"{BASE_URL}/attendance", 
                               headers=get_headers(), 
                               json=test_data)
        print(f"Status: {response.status_code}")
        if response.status_code == 201:
            print("✅ Registo inserido com sucesso!")
            print(f"Resposta: {response.json()}")
        else:
            print(f"❌ Falha na inserção: {response.text}")
    except Exception as e:
        print(f"Erro: {e}")
    
    # Teste 4: Verificar se o registo foi inserido
    print("\n4️⃣ Verificando registos após inserção...")
    try:
        response = requests.get(f"{BASE_URL}/attendance?name=Teste API", headers=get_headers())
        print(f"Status: {response.status_code}")
        data = response.json()
        if isinstance(data, list) and len(data) > 0:
            print(f"✅ Encontrados {len(data)} registos para 'Teste API'")
            for record in data:
                print(f"  - ID: {record.get('id')} | Data: {record.get('date')} | Entrada: {record.get('time_entry')}")
        else:
            print("❌ Nenhum registo encontrado para 'Teste API'")
    except Exception as e:
        print(f"Erro: {e}")

if __name__ == "__main__":
    test_api()
