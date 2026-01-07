-- ecommercer
-- criar banco de dados
CREATE DATABASE ecommerce;

-- selecionar o banco
USE ecommerce;

-- Criar tabela de produtos
CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
categoria VARCHAR(100),
preco DECIMAL(10,2),
estoque INT,
data_cadastro DATE
);

-- Inserir produtos
INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Smartphone Samsung', 'Eletrônicos', 2500.00, 15, '2025-01-01'),
('Notebook Dell', 'Informática', 4800.00, 10, '2025-01-02'),
('Fone Bluetooth', 'Acessórios', 350.00, 40, '2025-01-03'),
('Mouse Gamer', 'Acessórios', 180.00, 60, '2025-01-03'),
('TV LG 55"', 'Eletrônicos', 3900.00, 8, '2025-01-04'),
('Teclado Mecânico', 'Acessórios', 520.00, 25, '2025-01-04'),
('Câmera Fotográfica', 'Eletrônicos', 3200.00, 6, '2025-01-05'),
('Relógio Smartwatch', 'Wearables', 450.00, 30, '2025-01-05');

-- selecionar produtos com valor maior que 500
SELECT * FROM produtos 
WHERE preco > 500;

-- Selecionar produtos com valor menor que 500
SELECT * FROM produtos 
WHERE preco < 500;

-- Atualizar registro (exemplo: alterar preço de um produto)
UPDATE produtos
SET preco = 600.00
WHERE id = 4;

SELECT * FROM produtos;
