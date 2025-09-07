#!/usr/bin/env python
"""
Script para automaticamente repopular a base de dados quando necessário
Pode ser chamado via endpoint ou executado periodicamente
"""
import requests
import json
import os
from datetime import datetime

# Configuração
API_CONFIG = {
    "base_url": "https://flask-attendance-api-ymvx.onrender.com",
    "api_key": "b41c267d8948386337124a641688b0de",  # Chave de produção
}

def get_headers():
    return {
        "X-API-KEY": API_CONFIG["api_key"],
        "Content-Type": "application/json"
    }

def check_database_state():
    """Verifica se a base de dados precisa ser repopulada"""
    try:
        response = requests.get(f"{API_CONFIG['base_url']}/attendance", 
                              headers=get_headers(), 
                              timeout=30)
        
        if response.status_code == 200:
            records = response.json()
            # Se há menos de 50 registos, assumimos que a BD foi reinicializada
            if len(records) < 50:
                print(f"⚠️ Base de dados com apenas {len(records)} registos. Precisa ser repopulada.")
                return True
            else:
                print(f"✅ Base de dados OK com {len(records)} registos.")
                return False
        else:
            print(f"❌ Erro ao verificar BD: {response.status_code}")
            return True
    except Exception as e:
        print(f"❌ Erro de conexão: {e}")
        return False

def repopulate_database():
    """Executa o script de inserção em massa"""
    try:
        # Importar e executar a lógica do test_post.py
        import sys
        import subprocess
        
        script_dir = os.path.dirname(__file__)
        test_post_path = os.path.join(script_dir, 'test_post.py')
        
        print("🔄 Repopulando base de dados...")
        
        # Executar o script com input automático
        process = subprocess.Popen(
            [sys.executable, test_post_path],
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            cwd=script_dir
        )
        
        # Fornecer input automático
        input_data = f"{API_CONFIG['api_key']}\ns\n"
        stdout, stderr = process.communicate(input=input_data, timeout=300)
        
        if process.returncode == 0:
            print("✅ Base de dados repopulada com sucesso!")
            print("📊 Últimas linhas do output:")
            for line in stdout.split('\n')[-10:]:
                if line.strip():
                    print(f"  {line}")
            return True
        else:
            print("❌ Erro ao repopular BD:")
            print(stderr)
            return False
            
    except Exception as e:
        print(f"❌ Erro ao executar repopulação: {e}")
        return False

def main():
    print("🔍 VERIFICADOR E REPOPULADOR AUTOMÁTICO DA BASE DE DADOS")
    print("=" * 60)
    print(f"🌐 API: {API_CONFIG['base_url']}")
    print(f"⏰ Timestamp: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("=" * 60)
    
    # Verificar estado da BD
    needs_repopulation = check_database_state()
    
    if needs_repopulation:
        print("\n🚀 Iniciando repopulação automática...")
        success = repopulate_database()
        
        if success:
            # Verificar novamente para confirmar
            print("\n🔍 Verificação final...")
            needs_repopulation = check_database_state()
            
            if not needs_repopulation:
                print("🎉 Repopulação concluída com sucesso!")
            else:
                print("⚠️ Repopulação pode não ter sido completamente bem-sucedida.")
        else:
            print("❌ Falha na repopulação automática.")
    else:
        print("✅ Base de dados não precisa ser repopulada.")
    
    print("\n" + "=" * 60)

if __name__ == "__main__":
    main()
