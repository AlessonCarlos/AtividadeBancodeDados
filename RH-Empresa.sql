-- Serviço de RH

-- Criar o banco de dados:
CREATE DATABASE rh_empresa;

-- Selecionar o banco;
USE rh_empresa;

-- Criar tabela de colaboradores:
CREATE TABLE colaboradores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cargo VARCHAR(100),
salario DECIMAL(10,2),
departamento VARCHAR(100),
data_admissao DATE
);

-- Inserção dos colaboradores:
INSERT INTO colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
('Ana Silva', 'Analista de RH', 2500.00, 'Recursos Humanos', '2022-03-10'),
('João Pereira', 'Desenvolvedor', 4500.00, 'TI', '2021-08-15'),
('Maria Souza', 'Assistente Administrativo', 1800.00, 'Administrativo', '2023-01-05'),
('Carlos Lima', 'Gerente de Projetos', 7000.00, 'TI', '2020-06-20'),
('Beatriz Costa', 'Auxiliar de RH', 1700.00, 'Recursos Humanos', '2024-02-01');

-- Selecionar os colaboradores com salario maior que 2000
SELECT * FROM colaboradores 
WHERE salario > 2000;

-- Selecionar os colaboradores com salario menor que 2000
SELECT * FROM colaboradores 
WHERE salario < 2000;

-- Atualizar salario
UPDATE colaboradores 
SET salario = 3000.00
WHERE id = 3;