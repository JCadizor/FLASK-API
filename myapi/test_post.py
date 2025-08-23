#!/usr/bin/env python
"""Teste rápido do POST endpoint"""
import requests
import json

def test_post():
    base_url = "http://127.0.0.1:5000"
    
    try:
        # Teste POST /attendance
        print("Testando POST /attendance...")
        new_record = {
            "name": "Colaborador B",
            "date": "2025-08-21",
            "location": "Escritório Norte",
            "time_entry": "09:15:00"
        }
        response = requests.post(f"{base_url}/attendance", json=new_record)
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
        # Verificar que foi criado
        print("\\nVerificando todos os registos...")
        response = requests.get(f"{base_url}/attendance")
        print(f"Status: {response.status_code}")
        print(f"Response: {response.json()}")
        
    except requests.exceptions.ConnectionError:
        print("Erro: API não está disponível. Certifica-te que está a correr.")
    except Exception as e:
        print(f"Erro: {e}")

if __name__ == "__main__":
    test_post()
