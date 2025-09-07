-- =================================================================
-- COMANDOS SQL PARA POPULAR A BASE DE DADOS ATTENDANCE
-- Base de dados: myapi.db
-- Tabela: attendance
-- Data: 2025-09-05
-- =================================================================

-- Primeiro, limpar registos existentes se necessário (OPCIONAL)
-- DELETE FROM attendance WHERE id > 3; -- Manter apenas os 3 registos padrão

-- =================================================================
-- INSERIR DADOS REALISTAS DOS ÚLTIMOS 30 DIAS
-- =================================================================

-- Colaboradores: Ana Silva
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-06', 'Escritório Principal', '08:15:00', '17:30:00', '2025-08-06 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-07', 'Laboratório', '08:30:00', '17:15:00', '2025-08-07 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-08', 'Escritório Principal', '08:00:00', '16:45:00', '2025-08-08 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-09', 'Sala de Reuniões', '08:45:00', '17:00:00', '2025-08-09 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-12', 'Escritório Principal', '07:55:00', '16:30:00', '2025-08-12 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-13', 'Laboratório', '08:20:00', '17:45:00', '2025-08-13 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-14', 'Campo', '07:30:00', '16:15:00', '2025-08-14 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-15', 'Escritório Principal', '08:10:00', '17:20:00', '2025-08-15 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-16', 'Oficina', '08:35:00', '16:50:00', '2025-08-16 08:35:00');

-- Colaboradores: Bruno Costa
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-06', 'Oficina', '07:45:00', '16:30:00', '2025-08-06 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-07', 'Campo', '08:00:00', '17:00:00', '2025-08-07 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-08', 'Oficina', '07:30:00', '16:45:00', '2025-08-08 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-09', 'Escritório Principal', '08:15:00', '17:15:00', '2025-08-09 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-12', 'Campo', '07:50:00', '16:20:00', '2025-08-12 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-13', 'Oficina', '08:25:00', '17:30:00', '2025-08-13 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-14', 'Laboratório', '08:05:00', '16:55:00', '2025-08-14 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-15', 'Campo', '07:40:00', '16:40:00', '2025-08-15 07:40:00');

-- Colaboradores: Carlos Mendes
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-06', 'Laboratório', '08:20:00', '17:10:00', '2025-08-06 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-07', 'Sala de Reuniões', '08:45:00', '17:45:00', '2025-08-07 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-08', 'Laboratório', '08:00:00', '16:30:00', '2025-08-08 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-09', 'Escritório Principal', '08:30:00', '17:00:00', '2025-08-09 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-12', 'Laboratório', '08:10:00', '17:20:00', '2025-08-12 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-13', 'Campo', '07:55:00', '16:45:00', '2025-08-13 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-14', 'Laboratório', '08:25:00', '17:35:00', '2025-08-14 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-15', 'Sala de Reuniões', '08:40:00', '16:50:00', '2025-08-15 08:40:00');

-- Colaboradores: Diana Santos
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-06', 'Escritório Principal', '08:05:00', '17:25:00', '2025-08-06 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-07', 'Oficina', '08:30:00', '17:00:00', '2025-08-07 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-08', 'Escritório Principal', '07:50:00', '16:40:00', '2025-08-08 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-09', 'Laboratório', '08:15:00', '17:15:00', '2025-08-09 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-12', 'Escritório Principal', '08:35:00', '17:40:00', '2025-08-12 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-13', 'Sala de Reuniões', '08:00:00', '16:30:00', '2025-08-13 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-14', 'Escritório Principal', '08:20:00', '17:10:00', '2025-08-14 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-15', 'Campo', '07:45:00', '16:25:00', '2025-08-15 07:45:00');

-- Colaboradores: Eduardo Lima
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-06', 'Campo', '07:35:00', '16:15:00', '2025-08-06 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-07', 'Escritório Principal', '08:10:00', '17:30:00', '2025-08-07 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-08', 'Campo', '07:25:00', '16:35:00', '2025-08-08 07:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-09', 'Oficina', '08:45:00', '17:45:00', '2025-08-09 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-12', 'Campo', '07:40:00', '16:20:00', '2025-08-12 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-13', 'Escritório Principal', '08:25:00', '17:05:00', '2025-08-13 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-14', 'Campo', '07:50:00', '16:50:00', '2025-08-14 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-15', 'Laboratório', '08:15:00', '17:20:00', '2025-08-15 08:15:00');

-- Colaboradores: Fernanda Oliveira
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-06', 'Sala de Reuniões', '08:50:00', '17:40:00', '2025-08-06 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-07', 'Escritório Principal', '08:15:00', '17:25:00', '2025-08-07 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-08', 'Sala de Reuniões', '08:40:00', '16:30:00', '2025-08-08 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-09', 'Laboratório', '08:05:00', '17:15:00', '2025-08-09 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-12', 'Sala de Reuniões', '08:30:00', '17:30:00', '2025-08-12 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-13', 'Escritório Principal', '08:55:00', '17:45:00', '2025-08-13 08:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-14', 'Oficina', '08:20:00', '16:40:00', '2025-08-14 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-15', 'Sala de Reuniões', '08:35:00', '17:10:00', '2025-08-15 08:35:00');

-- Colaboradores: Gabriel Pereira
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-06', 'Oficina', '07:20:00', '16:10:00', '2025-08-06 07:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-07', 'Campo', '07:45:00', '17:35:00', '2025-08-07 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-08', 'Oficina', '08:10:00', '16:55:00', '2025-08-08 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-09', 'Escritório Principal', '08:35:00', '17:20:00', '2025-08-09 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-12', 'Oficina', '07:30:00', '16:25:00', '2025-08-12 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-13', 'Campo', '07:55:00', '17:40:00', '2025-08-13 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-14', 'Laboratório', '08:25:00', '16:45:00', '2025-08-14 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-15', 'Oficina', '08:00:00', '17:00:00', '2025-08-15 08:00:00');

-- Colaboradores: Helena Rodrigues
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-06', 'Laboratório', '08:25:00', '17:15:00', '2025-08-06 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-07', 'Escritório Principal', '08:00:00', '16:50:00', '2025-08-07 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-08', 'Laboratório', '08:45:00', '17:35:00', '2025-08-08 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-09', 'Sala de Reuniões', '08:20:00', '17:05:00', '2025-08-09 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-12', 'Laboratório', '08:10:00', '16:40:00', '2025-08-12 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-13', 'Escritório Principal', '08:35:00', '17:25:00', '2025-08-13 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-14', 'Campo', '07:50:00', '16:30:00', '2025-08-14 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-15', 'Laboratório', '08:15:00', '17:10:00', '2025-08-15 08:15:00');

-- Colaboradores: Igor Ferreira
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-06', 'Campo', '07:40:00', '16:20:00', '2025-08-06 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-07', 'Oficina', '08:15:00', '17:45:00', '2025-08-07 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-08', 'Campo', '07:25:00', '16:15:00', '2025-08-08 07:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-09', 'Escritório Principal', '08:50:00', '17:30:00', '2025-08-09 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-12', 'Campo', '07:35:00', '16:25:00', '2025-08-12 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-13', 'Laboratório', '08:20:00', '17:00:00', '2025-08-13 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-14', 'Oficina', '08:05:00', '16:55:00', '2025-08-14 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-15', 'Campo', '07:50:00', '16:40:00', '2025-08-15 07:50:00');

-- Colaboradores: Joana Martins  
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-06', 'Escritório Principal', '08:30:00', '17:20:00', '2025-08-06 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-07', 'Sala de Reuniões', '08:55:00', '17:40:00', '2025-08-07 08:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-08', 'Escritório Principal', '08:05:00', '16:35:00', '2025-08-08 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-09', 'Oficina', '08:40:00', '17:30:00', '2025-08-09 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-12', 'Escritório Principal', '08:15:00', '17:05:00', '2025-08-12 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-13', 'Campo', '07:45:00', '16:45:00', '2025-08-13 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-14', 'Sala de Reuniões', '08:25:00', '17:15:00', '2025-08-14 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-15', 'Escritório Principal', '08:10:00', '16:50:00', '2025-08-15 08:10:00');

-- =================================================================
-- DADOS ADICIONAIS - SEMANA RECENTE (29 Agosto - 5 Setembro)
-- =================================================================

-- Última semana com mais funcionários
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-29', 'Escritório Principal', '08:20:00', '17:10:00', '2025-08-29 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-29', 'Oficina', '07:50:00', '16:40:00', '2025-08-29 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-29', 'Laboratório', '08:15:00', '17:30:00', '2025-08-29 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-29', 'Escritório Principal', '08:35:00', '17:25:00', '2025-08-29 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-29', 'Campo', '07:40:00', '16:30:00', '2025-08-29 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-29', 'Sala de Reuniões', '08:45:00', '17:35:00', '2025-08-29 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-29', 'Oficina', '08:00:00', '16:50:00', '2025-08-29 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-29', 'Laboratório', '08:25:00', '17:15:00', '2025-08-29 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-29', 'Campo', '07:35:00', '16:25:00', '2025-08-29 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-29', 'Escritório Principal', '08:10:00', '17:00:00', '2025-08-29 08:10:00');

-- 30 Agosto
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-08-30', 'Laboratório', '08:30:00', '17:20:00', '2025-08-30 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-08-30', 'Campo', '07:45:00', '16:35:00', '2025-08-30 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-08-30', 'Escritório Principal', '08:05:00', '17:45:00', '2025-08-30 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-08-30', 'Oficina', '08:40:00', '16:30:00', '2025-08-30 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-08-30', 'Laboratório', '08:15:00', '17:05:00', '2025-08-30 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-08-30', 'Escritório Principal', '08:50:00', '17:40:00', '2025-08-30 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-08-30', 'Campo', '07:30:00', '16:20:00', '2025-08-30 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-08-30', 'Sala de Reuniões', '08:25:00', '17:15:00', '2025-08-30 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-08-30', 'Oficina', '08:00:00', '16:45:00', '2025-08-30 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-08-30', 'Laboratório', '08:35:00', '17:25:00', '2025-08-30 08:35:00');

-- 2 Setembro (Segunda-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-02', 'Escritório Principal', '08:10:00', '17:30:00', '2025-09-02 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-02', 'Oficina', '07:55:00', '16:45:00', '2025-09-02 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-02', 'Laboratório', '08:25:00', '17:15:00', '2025-09-02 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-02', 'Sala de Reuniões', '08:45:00', '17:40:00', '2025-09-02 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-02', 'Campo', '07:40:00', '16:30:00', '2025-09-02 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-02', 'Escritório Principal', '08:20:00', '17:20:00', '2025-09-02 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-02', 'Oficina', '08:05:00', '16:55:00', '2025-09-02 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-02', 'Laboratório', '08:30:00', '17:10:00', '2025-09-02 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-02', 'Campo', '07:45:00', '16:35:00', '2025-09-02 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-02', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-02 08:15:00');

-- 3 Setembro (Terça-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-03', 'Laboratório', '08:00:00', '17:25:00', '2025-09-03 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-03', 'Campo', '07:50:00', '16:40:00', '2025-09-03 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-03', 'Escritório Principal', '08:35:00', '17:35:00', '2025-09-03 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-03', 'Oficina', '08:20:00', '16:50:00', '2025-09-03 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-03', 'Laboratório', '08:10:00', '17:00:00', '2025-09-03 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-03', 'Sala de Reuniões', '08:40:00', '17:30:00', '2025-09-03 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-03', 'Campo', '07:35:00', '16:25:00', '2025-09-03 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-03', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-03 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-03', 'Oficina', '08:15:00', '16:45:00', '2025-09-03 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-03', 'Laboratório', '08:05:00', '17:20:00', '2025-09-03 08:05:00');

-- 4 Setembro (Quarta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-04', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-04 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-04', 'Oficina', '07:40:00', '16:30:00', '2025-09-04 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-04', 'Campo', '08:50:00', '17:40:00', '2025-09-04 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-04', 'Laboratório', '08:15:00', '17:05:00', '2025-09-04 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-04', 'Escritório Principal', '08:30:00', '16:20:00', '2025-09-04 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-04', 'Oficina', '08:05:00', '17:25:00', '2025-09-04 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-04', 'Sala de Reuniões', '08:45:00', '17:35:00', '2025-09-04 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-04', 'Campo', '07:55:00', '16:45:00', '2025-09-04 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-04', 'Laboratório', '08:20:00', '17:10:00', '2025-09-04 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-04', 'Escritório Principal', '08:35:00', '16:55:00', '2025-09-04 08:35:00');

-- 5 Setembro (Quinta-feira - HOJE)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-05', 'Laboratório', '08:15:00', '17:20:00', '2025-09-05 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-05', 'Campo', '07:45:00', '16:35:00', '2025-09-05 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-05', 'Escritório Principal', '08:30:00', '17:30:00', '2025-09-05 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-05', 'Sala de Reuniões', '08:10:00', '17:00:00', '2025-09-05 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-05', 'Oficina', '08:00:00', '16:50:00', '2025-09-05 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-05', 'Laboratório', '08:40:00', '17:40:00', '2025-09-05 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-05', 'Campo', '07:35:00', '16:25:00', '2025-09-05 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-05', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-05 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-05', 'Oficina', '08:20:00', '16:40:00', '2025-09-05 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-05', 'Campo', '08:05:00', '17:10:00', '2025-09-05 08:05:00');

-- 6 Setembro (Sexta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-06', 'Escritório Principal', '08:20:00', '17:10:00', '2025-09-06 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-06', 'Oficina', '07:50:00', '16:40:00', '2025-09-06 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-06', 'Campo', '08:35:00', '17:25:00', '2025-09-06 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-06', 'Laboratório', '08:15:00', '17:05:00', '2025-09-06 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-06', 'Escritório Principal', '08:00:00', '16:50:00', '2025-09-06 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-06', 'Sala de Reuniões', '08:45:00', '17:35:00', '2025-09-06 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-06', 'Oficina', '08:10:00', '17:00:00', '2025-09-06 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-06', 'Campo', '07:40:00', '16:30:00', '2025-09-06 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-06', 'Laboratório', '08:25:00', '17:15:00', '2025-09-06 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-06', 'Escritório Principal', '08:30:00', '16:45:00', '2025-09-06 08:30:00');

-- 9 Setembro (Segunda-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-09', 'Laboratório', '08:05:00', '17:20:00', '2025-09-09 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-09', 'Campo', '07:45:00', '16:35:00', '2025-09-09 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-09', 'Escritório Principal', '08:40:00', '17:30:00', '2025-09-09 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-09', 'Oficina', '08:25:00', '16:55:00', '2025-09-09 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-09', 'Campo', '07:30:00', '16:20:00', '2025-09-09 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-09', 'Escritório Principal', '08:15:00', '17:10:00', '2025-09-09 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-09', 'Laboratório', '08:50:00', '17:40:00', '2025-09-09 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-09', 'Sala de Reuniões', '08:10:00', '17:00:00', '2025-09-09 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-09', 'Oficina', '08:35:00', '16:45:00', '2025-09-09 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-09', 'Campo', '07:55:00', '17:25:00', '2025-09-09 07:55:00');

-- 10 Setembro (Terça-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-10', 'Escritório Principal', '08:20:00', '17:15:00', '2025-09-10 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-10', 'Oficina', '08:00:00', '16:50:00', '2025-09-10 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-10', 'Laboratório', '08:30:00', '17:20:00', '2025-09-10 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-10', 'Campo', '07:45:00', '16:35:00', '2025-09-10 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-10', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-10 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-10', 'Oficina', '08:45:00', '17:35:00', '2025-09-10 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-10', 'Campo', '07:40:00', '16:30:00', '2025-09-10 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-10', 'Laboratório', '08:25:00', '17:10:00', '2025-09-10 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-10', 'Sala de Reuniões', '08:10:00', '16:40:00', '2025-09-10 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-10', 'Escritório Principal', '08:35:00', '17:25:00', '2025-09-10 08:35:00');

-- 11 Setembro (Quarta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-11', 'Campo', '07:50:00', '16:40:00', '2025-09-11 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-11', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-11 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-11', 'Oficina', '08:05:00', '16:55:00', '2025-09-11 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-11', 'Laboratório', '08:40:00', '17:30:00', '2025-09-11 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-11', 'Sala de Reuniões', '08:15:00', '17:00:00', '2025-09-11 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-11', 'Campo', '07:35:00', '16:25:00', '2025-09-11 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-11', 'Escritório Principal', '08:30:00', '17:20:00', '2025-09-11 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-11', 'Oficina', '08:50:00', '17:40:00', '2025-09-11 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-11', 'Campo', '07:20:00', '16:10:00', '2025-09-11 07:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-11', 'Laboratório', '08:10:00', '17:05:00', '2025-09-11 08:10:00');

-- 12 Setembro (Quinta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-12', 'Sala de Reuniões', '08:35:00', '17:25:00', '2025-09-12 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-12', 'Campo', '07:55:00', '16:45:00', '2025-09-12 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-12', 'Escritório Principal', '08:20:00', '17:10:00', '2025-09-12 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-12', 'Oficina', '08:45:00', '17:35:00', '2025-09-12 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-12', 'Laboratório', '08:00:00', '16:50:00', '2025-09-12 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-12', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-12 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-12', 'Oficina', '08:10:00', '16:30:00', '2025-09-12 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-12', 'Campo', '07:40:00', '17:20:00', '2025-09-12 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-12', 'Escritório Principal', '08:30:00', '17:00:00', '2025-09-12 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-12', 'Sala de Reuniões', '08:15:00', '16:40:00', '2025-09-12 08:15:00');

-- 13 Setembro (Sexta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-13', 'Laboratório', '08:10:00', '17:00:00', '2025-09-13 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-13', 'Escritório Principal', '08:40:00', '17:30:00', '2025-09-13 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-13', 'Campo', '07:30:00', '16:20:00', '2025-09-13 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-13', 'Sala de Reuniões', '08:25:00', '17:15:00', '2025-09-13 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-13', 'Oficina', '08:05:00', '16:55:00', '2025-09-13 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-13', 'Laboratório', '08:50:00', '17:40:00', '2025-09-13 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-13', 'Campo', '07:45:00', '16:35:00', '2025-09-13 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-13', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-13 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-13', 'Oficina', '08:35:00', '17:25:00', '2025-09-13 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-13', 'Campo', '07:50:00', '16:45:00', '2025-09-13 07:50:00');

-- 16 Setembro (Segunda-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-16', 'Escritório Principal', '08:30:00', '17:20:00', '2025-09-16 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-16', 'Oficina', '08:00:00', '16:50:00', '2025-09-16 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-16', 'Laboratório', '08:20:00', '17:10:00', '2025-09-16 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-16', 'Campo', '07:40:00', '16:30:00', '2025-09-16 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-16', 'Escritório Principal', '08:45:00', '17:35:00', '2025-09-16 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-16', 'Sala de Reuniões', '08:15:00', '17:05:00', '2025-09-16 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-16', 'Oficina', '08:25:00', '16:40:00', '2025-09-16 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-16', 'Campo', '07:35:00', '17:25:00', '2025-09-16 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-16', 'Laboratório', '08:10:00', '17:00:00', '2025-09-16 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-16', 'Escritório Principal', '08:35:00', '16:55:00', '2025-09-16 08:35:00');

-- 17 Setembro (Terça-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-17', 'Campo', '07:50:00', '16:40:00', '2025-09-17 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-17', 'Laboratório', '08:30:00', '17:20:00', '2025-09-17 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-17', 'Escritório Principal', '08:05:00', '16:55:00', '2025-09-17 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-17', 'Oficina', '08:40:00', '17:30:00', '2025-09-17 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-17', 'Campo', '07:25:00', '16:15:00', '2025-09-17 07:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-17', 'Escritório Principal', '08:20:00', '17:10:00', '2025-09-17 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-17', 'Sala de Reuniões', '08:45:00', '17:35:00', '2025-09-17 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-17', 'Laboratório', '08:15:00', '17:05:00', '2025-09-17 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-17', 'Oficina', '08:50:00', '16:45:00', '2025-09-17 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-17', 'Campo', '07:55:00', '17:25:00', '2025-09-17 07:55:00');

-- 18 Setembro (Quarta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-18', 'Oficina', '08:25:00', '17:15:00', '2025-09-18 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-18', 'Escritório Principal', '08:10:00', '17:00:00', '2025-09-18 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-18', 'Campo', '07:45:00', '16:35:00', '2025-09-18 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-18', 'Laboratório', '08:35:00', '17:25:00', '2025-09-18 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-18', 'Sala de Reuniões', '08:00:00', '16:50:00', '2025-09-18 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-18', 'Oficina', '08:40:00', '17:30:00', '2025-09-18 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-18', 'Campo', '07:30:00', '16:20:00', '2025-09-18 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-18', 'Escritório Principal', '08:20:00', '17:10:00', '2025-09-18 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-18', 'Laboratório', '08:15:00', '16:40:00', '2025-09-18 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-18', 'Oficina', '08:55:00', '17:40:00', '2025-09-18 08:55:00');

-- 19 Setembro (Quinta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-19', 'Laboratório', '08:05:00', '16:55:00', '2025-09-19 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-19', 'Campo', '07:40:00', '17:30:00', '2025-09-19 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-19', 'Sala de Reuniões', '08:30:00', '17:20:00', '2025-09-19 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-19', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-19 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-19', 'Oficina', '08:45:00', '16:35:00', '2025-09-19 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-19', 'Campo', '07:35:00', '17:15:00', '2025-09-19 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-19', 'Laboratório', '08:20:00', '17:10:00', '2025-09-19 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-19', 'Oficina', '08:50:00', '16:45:00', '2025-09-19 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-19', 'Escritório Principal', '08:10:00', '17:00:00', '2025-09-19 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-19', 'Campo', '07:50:00', '16:25:00', '2025-09-19 07:50:00');

-- 20 Setembro (Sexta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-20', 'Escritório Principal', '08:35:00', '17:25:00', '2025-09-20 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-20', 'Oficina', '08:00:00', '16:50:00', '2025-09-20 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-20', 'Laboratório', '08:25:00', '17:15:00', '2025-09-20 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-20', 'Campo', '07:45:00', '16:35:00', '2025-09-20 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-20', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-20 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-20', 'Sala de Reuniões', '08:40:00', '17:30:00', '2025-09-20 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-20', 'Oficina', '08:10:00', '16:40:00', '2025-09-20 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-20', 'Campo', '07:30:00', '17:20:00', '2025-09-20 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-20', 'Laboratório', '08:20:00', '17:10:00', '2025-09-20 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-20', 'Escritório Principal', '08:30:00', '16:55:00', '2025-09-20 08:30:00');

-- 23 Setembro (Segunda-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-23', 'Campo', '07:55:00', '16:45:00', '2025-09-23 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-23', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-23 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-23', 'Oficina', '08:05:00', '16:55:00', '2025-09-23 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-23', 'Laboratório', '08:40:00', '17:30:00', '2025-09-23 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-23', 'Sala de Reuniões', '08:15:00', '17:05:00', '2025-09-23 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-23', 'Campo', '07:40:00', '16:30:00', '2025-09-23 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-23', 'Escritório Principal', '08:30:00', '17:20:00', '2025-09-23 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-23', 'Oficina', '08:50:00', '17:40:00', '2025-09-23 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-23', 'Campo', '07:20:00', '16:10:00', '2025-09-23 07:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-23', 'Laboratório', '08:10:00', '17:00:00', '2025-09-23 08:10:00');

-- 24 Setembro (Terça-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-24', 'Sala de Reuniões', '08:20:00', '17:10:00', '2025-09-24 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-24', 'Campo', '07:50:00', '16:40:00', '2025-09-24 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-24', 'Escritório Principal', '08:35:00', '17:25:00', '2025-09-24 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-24', 'Oficina', '08:10:00', '16:30:00', '2025-09-24 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-24', 'Laboratório', '08:45:00', '17:35:00', '2025-09-24 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-24', 'Escritório Principal', '08:00:00', '16:50:00', '2025-09-24 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-24', 'Campo', '07:35:00', '17:15:00', '2025-09-24 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-24', 'Laboratório', '08:25:00', '17:05:00', '2025-09-24 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-24', 'Sala de Reuniões', '08:15:00', '16:45:00', '2025-09-24 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-24', 'Oficina', '08:40:00', '17:30:00', '2025-09-24 08:40:00');

-- 25 Setembro (Quarta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-25', 'Laboratório', '08:10:00', '17:00:00', '2025-09-25 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-25', 'Escritório Principal', '08:30:00', '17:20:00', '2025-09-25 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-25', 'Campo', '07:45:00', '16:35:00', '2025-09-25 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-25', 'Sala de Reuniões', '08:25:00', '17:15:00', '2025-09-25 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-25', 'Oficina', '08:05:00', '16:55:00', '2025-09-25 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-25', 'Laboratório', '08:40:00', '17:30:00', '2025-09-25 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-25', 'Escritório Principal', '08:15:00', '17:05:00', '2025-09-25 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-25', 'Campo', '07:50:00', '16:40:00', '2025-09-25 07:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-25', 'Oficina', '08:35:00', '17:25:00', '2025-09-25 08:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-25', 'Sala de Reuniões', '08:20:00', '16:45:00', '2025-09-25 08:20:00');

-- 26 Setembro (Quinta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-26', 'Escritório Principal', '08:00:00', '16:50:00', '2025-09-26 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-26', 'Oficina', '08:25:00', '17:15:00', '2025-09-26 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-26', 'Laboratório', '08:45:00', '17:35:00', '2025-09-26 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-26', 'Campo', '07:40:00', '16:30:00', '2025-09-26 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-26', 'Escritório Principal', '08:20:00', '17:10:00', '2025-09-26 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-26', 'Oficina', '08:10:00', '17:00:00', '2025-09-26 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-26', 'Campo', '07:35:00', '16:25:00', '2025-09-26 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-26', 'Sala de Reuniões', '08:30:00', '17:20:00', '2025-09-26 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-26', 'Laboratório', '08:15:00', '16:40:00', '2025-09-26 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-26', 'Escritório Principal', '08:35:00', '17:25:00', '2025-09-26 08:35:00');

-- 27 Setembro (Sexta-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-27', 'Campo', '07:45:00', '16:35:00', '2025-09-27 07:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-27', 'Laboratório', '08:20:00', '17:10:00', '2025-09-27 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-27', 'Escritório Principal', '08:40:00', '17:30:00', '2025-09-27 08:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-27', 'Oficina', '08:05:00', '16:55:00', '2025-09-27 08:05:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-27', 'Campo', '07:30:00', '16:20:00', '2025-09-27 07:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-27', 'Escritório Principal', '08:25:00', '17:15:00', '2025-09-27 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-27', 'Sala de Reuniões', '08:50:00', '17:40:00', '2025-09-27 08:50:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-27', 'Laboratório', '08:15:00', '17:05:00', '2025-09-27 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-27', 'Campo', '07:55:00', '16:45:00', '2025-09-27 07:55:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-27', 'Oficina', '08:10:00', '17:00:00', '2025-09-27 08:10:00');

-- 30 Setembro (Segunda-feira)
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Ana Silva', '2025-09-30', 'Escritório Principal', '08:30:00', '17:20:00', '2025-09-30 08:30:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Bruno Costa', '2025-09-30', 'Oficina', '08:00:00', '16:50:00', '2025-09-30 08:00:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Carlos Mendes', '2025-09-30', 'Campo', '07:40:00', '16:30:00', '2025-09-30 07:40:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Diana Santos', '2025-09-30', 'Laboratório', '08:25:00', '17:15:00', '2025-09-30 08:25:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Eduardo Lima', '2025-09-30', 'Sala de Reuniões', '08:15:00', '17:05:00', '2025-09-30 08:15:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Fernanda Oliveira', '2025-09-30', 'Escritório Principal', '08:45:00', '17:35:00', '2025-09-30 08:45:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Gabriel Pereira', '2025-09-30', 'Oficina', '08:10:00', '16:40:00', '2025-09-30 08:10:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Helena Rodrigues', '2025-09-30', 'Campo', '07:35:00', '17:25:00', '2025-09-30 07:35:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Igor Ferreira', '2025-09-30', 'Laboratório', '08:20:00', '17:10:00', '2025-09-30 08:20:00');
INSERT INTO attendance (name, date, location, time_entry, time_exit, created_at) VALUES ('Joana Martins', '2025-09-30', 'Escritório Principal', '08:35:00', '16:55:00', '2025-09-30 08:35:00');

-- =================================================================
-- VERIFICAÇÃO: Comando para contar registos totais
-- =================================================================
-- SELECT COUNT(*) as total_records FROM attendance;
-- SELECT name, COUNT(*) as days_worked FROM attendance GROUP BY name ORDER BY days_worked DESC;
-- SELECT location, COUNT(*) as frequency FROM attendance GROUP BY location ORDER BY frequency DESC;
