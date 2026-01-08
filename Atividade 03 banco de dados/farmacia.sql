-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- 1. Tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- 2. Tabela tb_produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2),
    fabricante VARCHAR(50),
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4. Inserir 5 registros em tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamento', 'Remédios controlados e não controlados'),
('Cosmético', 'Produtos de beleza e higiene pessoal'),
('Vitaminas', 'Suplementos vitamínicos'),
('Primeiros Socorros', 'Curativos, antissépticos, etc.'),
('Infantil', 'Produtos específicos para crianças');

-- 5. Inserir 8 registros em tb_produtos
INSERT INTO tb_produtos (nome, preco, fabricante, validade, categoria_id) VALUES
('Paracetamol', 15.90, 'EMS', '2025-12-01', 1),
('Shampoo Anticaspa', 32.50, 'Head & Shoulders', '2026-06-01', 2),
('Vitamina C', 45.00, 'Nature´s Bounty', '2027-01-01', 3),
('Band-Aid', 8.90, 'Johnson & Johnson', '2028-03-01', 4),
('Creme Dental Infantil', 12.00, 'Colgate', '2026-09-01', 5),
('Creme Hidratante', 55.00, 'Nivea', '2027-05-01', 2),
('Ibuprofeno', 18.50, 'Medley', '2026-08-01', 1),
('Curativo Estéril', 6.90, 'Band-Aid', '2028-02-01', 4);

-- 6. SELECT com preço > 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 7. SELECT com preço entre 5 e 60
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- 8. SELECT usando LIKE para nome com 'C'
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 9. INNER JOIN entre tb_produtos e tb_categorias
SELECT p.*, c.nome_categoria, c.descricao 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- 10. INNER JOIN filtrando por categoria específica (ex: Cosmético)
SELECT p.*, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Cosmético';