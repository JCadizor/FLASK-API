# 🔄 Solução para Persistência da Base de Dados

## ⚠️ **Problema Identificado**
O Render.com usa um sistema de ficheiros **efémero** - a base de dados SQLite reverte aos dados padrão após períodos de inatividade ou reinicializações.

## 🛠️ **Soluções Implementadas**

### **Solução 1: Endpoints Administrativos na API**

Foram adicionados dois novos endpoints à API principal:

#### 1. **Health Check** - Verificar Estado da BD
```http
GET /admin/health-check
Headers: X-API-KEY: b41c267d8948386337124a641688b0de
```

**Resposta:**
```json
{
    "timestamp": "2025-01-07 15:30:00",
    "database_status": "needs_repopulation",
    "record_count": 3,
    "message": "Base de dados com 3 registos",
    "suggestion": "Consider running auto_repopulate.py script",
    "repopulation_needed": true
}
```

#### 2. **Repopular BD** - Restaurar Dados Automaticamente
```http
POST /admin/repopulate  
Headers: X-API-KEY: b41c267d8948386337124a641688b0de
```

**Resposta:**
```json
{
    "success": "Database repopulated successfully",
    "records_added": 420,
    "total_records": 423,
    "timestamp": "2025-01-07 15:31:00"
}
```

### **Solução 2: Script de Repopulação Automática**

O arquivo `auto_repopulate.py` permite:
- ✅ Verificação automática do estado da BD
- ✅ Repopulação automática quando necessário
- ✅ Pode ser executado localmente ou programado

## 📋 **Como Usar**

### **Método Rápido - Via API**
1. Aceder ao health-check:
   ```
   https://flask-attendance-api-ymvx.onrender.com/admin/health-check
   ```

2. Se `repopulation_needed: true`, fazer POST para:
   ```
   https://flask-attendance-api-ymvx.onrender.com/admin/repopulate
   ```

### **Método Automático - Script Local**
1. Executar localmente:
   ```powershell
   python auto_repopulate.py
   ```

2. O script verifica e repopula automaticamente se necessário

## 🎯 **Vantagens desta Solução**

- **Rápida**: Repopulação em segundos via API
- **Automática**: Script pode detectar e corrigir automaticamente  
- **Segura**: Usa autenticação API existente
- **Inteligente**: Só repopula quando necessário (<50 registos)
- **Completa**: Gera 420+ registos realistas de 30 dias

## 🔄 **Fluxo de Recuperação**

```
Base de Dados Vazia (3 registos)
       ↓
GET /admin/health-check
       ↓
Detecta repopulation_needed: true
       ↓
POST /admin/repopulate
       ↓
420+ registos adicionados automaticamente
       ↓
Sistema operacional novamente
```

## 📈 **Próximos Passos Opcionais**

Para uma solução **permanente**, considere:
1. **PostgreSQL** no Render.com (base de dados persistente)
2. **Scheduled Tasks** para repopulação automática periódica
3. **Webhook** que dispara repopulação após reinicializações

Esta solução mantém o seu sistema funcional enquanto decide se quer migrar para PostgreSQL ou manter esta abordagem de recuperação automática.
