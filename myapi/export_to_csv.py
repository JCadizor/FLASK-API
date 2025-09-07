#!/usr/bin/env python
"""
Script para exportar dados da API de assiduidade para CSV
Exporta todos os registos para um ficheiro Excel-compatível
"""
import requests
import csv
import json
from datetime import datetime
import os

# Configuração da API
API_CONFIG = {
    "base_url": "https://flask-attendance-api-ymvx.onrender.com",
    "local_url": "http://127.0.0.1:5000",
    "api_key": None,  # Será solicitada ao utilizador
    "use_online": True
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
        print()
        
        while True:
            api_key = input("Digite a API key: ").strip()
            if api_key:
                API_CONFIG["api_key"] = api_key
                break
            else:
                print("❌ API key não pode estar vazia. Tente novamente.")
    
    return API_CONFIG["api_key"]

def fetch_all_records():
    """Obtém todos os registos da API"""
    try:
        print("📥 Obtendo registos da API...")
        response = requests.get(f"{get_base_url()}/attendance", 
                              headers=get_headers(), 
                              timeout=60)  # Aumentar timeout para 60 segundos
        
        if response.status_code == 200:
            records = response.json()
            print(f"✅ {len(records)} registos obtidos com sucesso!")
            return records
        else:
            print(f"❌ Erro ao obter registos: {response.status_code} - {response.text}")
            return None
            
    except requests.exceptions.Timeout:
        print("⏰ Timeout ao conectar à API")
        return None
    except requests.exceptions.ConnectionError:
        print("🔌 Erro de conexão à API")
        return None
    except Exception as e:
        print(f"💥 Erro inesperado: {e}")
        return None

def export_to_csv(records, filename=None):
    """Exporta os registos para um ficheiro CSV"""
    if not records:
        print("❌ Não há registos para exportar")
        return False
    
    # Gerar nome do ficheiro se não especificado
    if not filename:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"assiduidade_export_{timestamp}.csv"
    
    # Garantir que termina em .csv
    if not filename.endswith('.csv'):
        filename += '.csv'
    
    # Caminho completo para a pasta output
    output_dir = os.path.join(os.path.dirname(__file__), 'output')
    filepath = os.path.join(output_dir, filename)
    
    try:
        with open(filepath, 'w', newline='', encoding='utf-8-sig') as csvfile:
            # Definir as colunas
            fieldnames = [
                'ID',
                'Nome',
                'Data',
                'Localização',
                'Hora_Entrada',
                'Hora_Saída',
                'Data_Criação'
            ]
            
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames, delimiter=';')
            
            # Escrever cabeçalho
            writer.writeheader()
            
            # Escrever registos
            for record in records:
                writer.writerow({
                    'ID': record.get('id', ''),
                    'Nome': record.get('name', ''),
                    'Data': record.get('date', ''),
                    'Localização': record.get('location', ''),
                    'Hora_Entrada': record.get('time_entry', ''),
                    'Hora_Saída': record.get('time_exit', ''),
                    'Data_Criação': record.get('created_at', '')
                })
        
        print(f"✅ Ficheiro CSV criado com sucesso!")
        print(f"📁 Localização: {filepath}")
        print(f"📊 Total de registos exportados: {len(records)}")
        return True
        
    except Exception as e:
        print(f"❌ Erro ao criar ficheiro CSV: {e}")
        return False

def generate_summary_stats(records):
    """Gera estatísticas resumidas dos dados"""
    if not records:
        return
    
    print("\n📊 ESTATÍSTICAS DOS DADOS:")
    print("=" * 40)
    
    # Contar registos por colaborador
    collaborators = {}
    dates = set()
    locations = set()
    
    for record in records:
        name = record.get('name', 'Desconhecido')
        date = record.get('date', '')
        location = record.get('location', '')
        
        collaborators[name] = collaborators.get(name, 0) + 1
        if date:
            dates.add(date)
        if location:
            locations.add(location)
    
    print(f"👥 Total de colaboradores: {len(collaborators)}")
    for name, count in sorted(collaborators.items(), key=lambda x: x[1], reverse=True):
        print(f"  • {name}: {count} registos")
    
    print(f"\n📅 Período coberto: {len(dates)} dias")
    if dates:
        sorted_dates = sorted(dates)
        print(f"  • De: {sorted_dates[0]}")
        print(f"  • Até: {sorted_dates[-1]}")
    
    print(f"\n🏢 Localizações: {len(locations)}")
    for location in sorted(locations):
        if location:
            print(f"  • {location}")

def main():
    print("📊 EXPORTADOR DE DADOS DE ASSIDUIDADE PARA CSV")
    print("=" * 55)
    
    # Solicitar API key
    api_key = get_api_key()
    
    print("\n🌐 Conectando à API...")
    print(f"URL: {get_base_url()}")
    
    # Obter todos os registos
    records = fetch_all_records()
    
    if records is None:
        print("❌ Falha ao obter dados da API. Verifique a conexão e API key.")
        return
    
    if len(records) == 0:
        print("⚠️ Não há registos na API para exportar.")
        return
    
    # Gerar estatísticas
    generate_summary_stats(records)
    
    # Perguntar se quer prosseguir com a exportação
    print("\n" + "=" * 55)
    export = input("🚀 Exportar dados para CSV? (s/N): ").strip().lower()
    
    if export in ['s', 'sim', 'y', 'yes']:
        # Permitir especificar nome do ficheiro
        filename = input("\n📝 Nome do ficheiro (Enter para automático): ").strip()
        if not filename:
            filename = None
        
        # Exportar para CSV
        success = export_to_csv(records, filename)
        
        if success:
            print("\n🎉 Exportação concluída com sucesso!")
            print("💡 O ficheiro está pronto para abrir no Excel!")
        else:
            print("\n❌ Falha na exportação.")
    else:
        print("❌ Exportação cancelada.")

if __name__ == "__main__":
    main()
