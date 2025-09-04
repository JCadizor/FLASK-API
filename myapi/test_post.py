#!/usr/bin/env python
"""
Script para inserção em massa de dados de assiduidade
Gera registos para setembro 2025 com padrões realistas
"""
import requests
import json
import random
from datetime import datetime, timedelta
from calendar import monthrange

# Configuração da API
API_CONFIG = {
    "base_url": "https://flask-attendance-api-ymvx.onrender.com",  # API online
    "local_url": "http://127.0.0.1:5000",  # Para teste local
    "api_key": None,  # Será solicitada ao utilizador
    "use_online": True  # True para usar API online, False para local
}

def get_headers():
    return {
        "X-API-KEY": get_api_key(),
        "Content-Type": "application/json"
    }

def get_base_url():
    return API_CONFIG["base_url"] if API_CONFIG["use_online"] else API_CONFIG["local_url"]

def get_api_key():
    """Solicita a API key ao utilizador"""
    if API_CONFIG["api_key"] is None:
        print("🔑 AUTENTICAÇÃO NECESSÁRIA")
        print("-" * 30)
        print("Para usar a API de produção, é necessária uma chave de autenticação.")
        print("Contacte o administrador para obter a chave correta.")
        print()
        
        while True:
            api_key = input("Digite a API key: ").strip()
            if api_key:
                API_CONFIG["api_key"] = api_key
                break
            else:
                print("❌ API key não pode estar vazia. Tente novamente.")
    
    return API_CONFIG["api_key"]

def generate_time_with_variance(base_hour, base_minute, variance_minutes=15):
    """Gera horário com variação aleatória"""
    total_minutes = base_hour * 60 + base_minute
    variance = random.randint(-variance_minutes, variance_minutes)
    total_minutes += variance
    
    # Garantir que não passa para o dia seguinte ou anterior
    total_minutes = max(0, min(total_minutes, 23 * 60 + 59))
    
    hour = total_minutes // 60
    minute = total_minutes % 60
    return f"{hour:02d}:{minute:02d}:00"

def is_weekend(date_obj):
    """Verifica se é fim de semana (sábado=5, domingo=6)"""
    return date_obj.weekday() >= 5

def generate_employee_patterns():
    """Define padrões específicos para cada colaborador"""
    return {
        "Ana": {
            "entry_base": (8, 0),      # 08:00
            "exit_base": (17, 0),      # 17:00
            "entry_variance": 10,       # ±10 minutos
            "exit_variance": 15,        # ±15 minutos
            "lunch_out": (12, 0),      # Sai para almoço às 12:00
            "lunch_in": (13, 0),       # Volta às 13:00
            "lunch_frequency": 0.9,     # 90% das vezes sai para almoço
            "location": "Escritório Central"
        },
        "Bruno": {
            "entry_base": (8, 0),
            "exit_base": (17, 0), 
            "entry_variance": 8,
            "exit_variance": 12,
            "lunch_out": (12, 15),     # Sai às 12:15
            "lunch_in": (13, 0),
            "lunch_frequency": 0.85,
            "location": "Escritório Central"
        },
        "Clara": {
            "entry_base": (8, 0),
            "exit_base": (17, 0),
            "entry_variance": 5,        # Muito pontual
            "exit_variance": 10,
            "lunch_out": (12, 0),
            "lunch_in": (13, 0),
            "lunch_frequency": 0.2,     # Só sextas-feiras (20% das vezes)
            "location": "Escritório Norte"
        },
        "David": {
            "entry_base": (8, 45),     # Habitualmente atrasado - chega às 08:45
            "exit_base": (17, 30),     # Compensa saindo mais tarde
            "entry_variance": 20,       # Muito variável (às vezes mais atrasado)
            "exit_variance": 25,
            "lunch_out": (12, 30),     # Almoça mais tarde
            "lunch_in": (13, 15),      # Volta mais tarde
            "lunch_frequency": 0.95,    # Quase sempre sai para almoço
            "location": "Escritório Norte"
        }
    }

def generate_september_data():
    """Gera todos os registos para setembro de 2025"""
    employees = generate_employee_patterns()
    records = []
    
    # Setembro 2025: 1 a 30
    year = 2025
    month = 9
    days_in_month = monthrange(year, month)[1]
    
    for day in range(1, days_in_month + 1):
        date_obj = datetime(year, month, day)
        date_str = date_obj.strftime("%Y-%m-%d")
        
        # Pular fins de semana
        if is_weekend(date_obj):
            continue
        
        print(f"Gerando dados para {date_str}...")
        
        for emp_name, pattern in employees.items():
            # Horário de entrada
            entry_time = generate_time_with_variance(
                pattern["entry_base"][0], 
                pattern["entry_base"][1], 
                pattern["entry_variance"]
            )
            
            # Horário de saída
            exit_time = generate_time_with_variance(
                pattern["exit_base"][0], 
                pattern["exit_base"][1], 
                pattern["exit_variance"]
            )
            
            # Registo principal (entrada e saída do dia)
            main_record = {
                "name": emp_name,
                "date": date_str,
                "location": pattern["location"],
                "time_entry": entry_time,
                "time_exit": exit_time
            }
            records.append(main_record)
            
            # Registos de almoço (se aplicável)
            should_lunch = random.random() < pattern["lunch_frequency"]
            
            # Clara só sai às sextas
            if emp_name == "Clara" and date_obj.weekday() != 4:  # 4 = sexta-feira
                should_lunch = False
            elif emp_name == "Clara" and date_obj.weekday() == 4:
                should_lunch = True
            
            if should_lunch:
                lunch_out_time = generate_time_with_variance(
                    pattern["lunch_out"][0],
                    pattern["lunch_out"][1],
                    5  # Pouca variação no almoço
                )
                
                lunch_in_time = generate_time_with_variance(
                    pattern["lunch_in"][0],
                    pattern["lunch_in"][1],
                    8
                )
                
                # Registo de saída para almoço
                lunch_out_record = {
                    "name": emp_name,
                    "date": date_str,
                    "location": pattern["location"],
                    "time_entry": None,
                    "time_exit": lunch_out_time
                }
                records.append(lunch_out_record)
                
                # Registo de volta do almoço
                lunch_in_record = {
                    "name": emp_name,
                    "date": date_str,
                    "location": pattern["location"],
                    "time_entry": lunch_in_time,
                    "time_exit": None
                }
                records.append(lunch_in_record)
    
    return records

def insert_records_batch(records, batch_size=10):
    """Insere registos em lotes para não sobrecarregar a API"""
    base_url = get_base_url()
    headers = get_headers()
    
    total = len(records)
    success_count = 0
    error_count = 0
    
    print(f"\\n📊 Inserindo {total} registos em lotes de {batch_size}...")
    print(f"🌐 URL: {base_url}")
    print(f"🔑 API Key: {API_CONFIG['api_key'][:8]}{'*' * (len(API_CONFIG['api_key']) - 8)}")
    print("-" * 50)
    
    for i in range(0, total, batch_size):
        batch = records[i:i + batch_size]
        batch_num = (i // batch_size) + 1
        total_batches = (total + batch_size - 1) // batch_size
        
        print(f"\\n📦 Lote {batch_num}/{total_batches} ({len(batch)} registos)...")
        
        for j, record in enumerate(batch):
            try:
                response = requests.post(f"{base_url}/attendance", 
                                       json=record, 
                                       headers=headers,
                                       timeout=10)
                
                if response.status_code == 201:
                    success_count += 1
                    print(f"  ✅ {record['name']} - {record['date']} - {record.get('time_entry', 'saída')} - OK")
                else:
                    error_count += 1
                    print(f"  ❌ {record['name']} - {record['date']} - Erro {response.status_code}: {response.text[:100]}")
                    
            except requests.exceptions.Timeout:
                error_count += 1
                print(f"  ⏰ {record['name']} - {record['date']} - Timeout")
            except requests.exceptions.ConnectionError:
                error_count += 1
                print(f"  🔌 {record['name']} - {record['date']} - Erro de conexão")
            except Exception as e:
                error_count += 1
                print(f"  💥 {record['name']} - {record['date']} - Erro: {str(e)[:50]}...")
        
        # Pequena pausa entre lotes para não sobrecarregar
        if i + batch_size < total:
            import time
            time.sleep(1)
    
    print("\\n" + "=" * 50)
    print(f"📊 RESUMO FINAL:")
    print(f"✅ Sucessos: {success_count}")
    print(f"❌ Erros: {error_count}")
    print(f"📈 Taxa de sucesso: {(success_count/total)*100:.1f}%")
    print("=" * 50)

def verify_data():
    """Verifica os dados inseridos"""
    base_url = get_base_url()
    headers = get_headers()
    
    try:
        print("\\n🔍 Verificando dados inseridos...")
        response = requests.get(f"{base_url}/attendance", headers=headers)
        
        if response.status_code == 200:
            data = response.json()
            print(f"📊 Total de registos: {len(data)}")
            
            # Agrupar por colaborador
            by_employee = {}
            for record in data:
                name = record["name"]
                if name not in by_employee:
                    by_employee[name] = []
                by_employee[name].append(record)
            
            print("\\n👥 Registos por colaborador:")
            for name, records in by_employee.items():
                print(f"  {name}: {len(records)} registos")
            
            # Mostrar alguns exemplos
            print("\\n📋 Exemplos de registos:")
            for i, record in enumerate(data[-5:], 1):  # Últimos 5
                entry = record.get('time_entry', 'N/A')
                exit_time = record.get('time_exit', 'N/A')
                print(f"  {i}. {record['name']} - {record['date']} - Entrada: {entry} - Saída: {exit_time}")
                
        else:
            print(f"❌ Erro ao verificar dados: {response.status_code}")
    except Exception as e:
        print(f"❌ Erro na verificação: {e}")

def main():
    print("🏢 GERADOR DE DADOS DE ASSIDUIDADE - SETEMBRO 2025")
    print("=" * 60)
    
    # Solicitar API key primeiro
    api_key = get_api_key()
    
    print()
    print("👥 Colaboradores: Ana, Bruno, Clara, David")
    print("📅 Período: 1-30 Setembro 2025 (dias úteis)")
    print("⏰ Padrões:")
    print("  • Ana & Bruno: 8:00-17:00 (pontuais)")
    print("  • Clara: 8:00-17:00 (não almoça, exceto sextas)")
    print("  • David: 8:45-17:30 (atrasado, variável)")
    print("🍽️ Almoço: 12:00-13:00 (com variações)")
    print("=" * 60)
    
    confirm = input("\\n🚀 Gerar e inserir dados? (s/N): ").strip().lower()
    if confirm not in ['s', 'sim', 'y', 'yes']:
        print("❌ Operação cancelada.")
        return
    
    # Gerar dados
    print("\\n📊 Gerando dados...")
    records = generate_september_data()
    print(f"✅ {len(records)} registos gerados!")
    
    # Inserir dados
    insert_records_batch(records, batch_size=5)  # Lotes menores para API online
    
    # Verificar resultado
    verify_data()
    
    print("\\n🎉 Processo concluído!")
    print("💡 Use a API para consultar os dados:")
    print(f"   GET {get_base_url()}/attendance?name=David")
    print(f"   GET {get_base_url()}/attendance/history?name=Clara&limit=10")

if __name__ == "__main__":
    main()
