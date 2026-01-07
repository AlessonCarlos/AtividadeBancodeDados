-- Criar banco de dados
CREATE DATABASE Escola;

-- Selecionar banco
USE Escola;

-- Criar tabela estudantes
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    serie VARCHAR(20),
    turma VARCHAR(10),
    nota DECIMAL(4,2),
    data_matricula DATE
);

-- Inserir pelo menos 8 registros
INSERT INTO estudantes (nome, idade, serie, turma, nota, data_matricula) VALUES
('Ana Souza', 14, '9º Ano', 'A', 8.5, '2025-02-01'),
('João Pereira', 15, '9º Ano', 'B', 6.0, '2025-02-01'),
('Maria Silva', 13, '8º Ano', 'A', 7.8, '2025-02-01'),
('Carlos Lima', 16, '1º EM', 'C', 5.5, '2025-02-01'),
('Beatriz Costa', 14, '9º Ano', 'A', 9.2, '2025-02-01'),
('Lucas Martins', 12, '7º Ano', 'B', 4.8, '2025-02-01'),
('Fernanda Alves', 13, '8º Ano', 'C', 7.0, '2025-02-01'),
('Rafael Torres', 15, '1º EM', 'B', 8.0, '2025-02-01');

-- Selecionar estudantes com nota maior que 7.0
SELECT * FROM estudantes
WHERE nota > 7.0;

-- Selecionar estudantes com nota menor que 7.0
SELECT * FROM estudantes
WHERE nota < 7.0;

-- Atualizar um registro (exemplo: atualizar nota de um estudante)
UPDATE estudantes
SET nota = 9.0
WHERE id = 3;
