a#!/usr/bin/env python
"""
Script de teste para a API de assiduidade.
Executa a API e testa os endpoints principais.
"""
import requests
import json
import time
import subprocess
import sys
import os
from threading import Thread

def start_api():
    """Inicia a API Flask numa thread separada"""
    os.chdir(r"c:\Users\JAPC\Documents\PESTA\FLASK API\myapi")
    python_path = r".\\.venv\\Scripts\\python.exe"
    subprocess.run([python_path, "api.py"], cwd=r"c:\Users\JAPC\Documents\PESTA\FLASK API\myapi")

def test_endpoints():
    """Testa os endpoints da API"""
    base_url = "http://127.0.0.1:5000"
    
    print("Aguardando 5 segundos para a API iniciar...")
    time.sleep(5)
    
    try:
        # Teste 1: endpoint raiz
        print("\\n1. Testando endpoint raiz...")
        response = requests.get(f"{base_url}/")
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Teste 2: GET /attendance (todos os registos)
        print("\\n2. Testando GET /attendance...")
        response = requests.get(f"{base_url}/attendance")
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Teste 3: GET /attendance com filtro por nome
        print("\\n3. Testando GET /attendance?name=Colaborador A...")
        response = requests.get(f"{base_url}/attendance", params={"name": "Colaborador A"})
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Teste 4: POST /attendance (novo registo)
        print("\\n4. Testando POST /attendance...")
        new_record = {
            "name": "Colaborador B",
            "date": "2025-08-21",
            "location": "Escritório Norte",
            "time_entry": "09:15:00"
        }
        response = requests.post(f"{base_url}/attendance", json=new_record)
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Teste 5: GET /attendance/history
        print("\\n5. Testando GET /attendance/history?name=Colaborador A...")
        response = requests.get(f"{base_url}/attendance/history", params={"name": "Colaborador A"})
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
    except requests.exceptions.ConnectionError:
        print("Erro: Não foi possível conectar à API. Certifica-te que está a correr.")
    except Exception as e:
        print(f"Erro: {e}")

if __name__ == "__main__":
    print("Iniciando testes da API...")
    
    # Inicia a API numa thread separada
    api_thread = Thread(target=start_api, daemon=True)
    api_thread.start()
    
    # Executa os testes
    test_endpoints()
