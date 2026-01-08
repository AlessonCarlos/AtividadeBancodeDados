-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 1. Tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- 2. Tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ingredientes TEXT,
    preco DECIMAL(6,2),
    tamanho VARCHAR(20),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4. Inserir 5 registros em tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas tradicionais salgadas'),
('Doce', 'Pizzas com cobertura doce'),
('Vegetariana', 'Sem ingredientes de origem animal'),
('Especial', 'Combinações exclusivas da casa'),
('Vegana', 'Sem nenhum ingrediente animal');

-- 5. Inserir 8 registros em tb_pizzas
INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, categoria_id) VALUES
('Margherita', 'Molho, mussarela, manjericão', 45.00, 'Média', 1),
('Calabresa', 'Molho, mussarela, calabresa, cebola', 50.00, 'Grande', 1),
('Chocolate', 'Chocolate, morango, leite condensado', 60.00, 'Pequena', 2),
('Mussarela', 'Molho, mussarela, orégano', 40.00, 'Média', 1),
('Marguerita Especial', 'Molho, mussarela, tomate, azeitonas', 55.00, 'Grande', 4),
('Mista', 'Molho, presunto, mussarela, milho', 48.00, 'Média', 1),
('Morango com Nutella', 'Nutella, morango, açúcar de confeiteiro', 70.00, 'Pequena', 2),
('Vegetariana Especial', 'Molho, legumes grelhados, queijo vegano', 65.00, 'Média', 5);

-- 6. SELECT com preço > 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- 7. SELECT com preço entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- 8. SELECT usando LIKE para nome com 'M'
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- 9. INNER JOIN entre tb_pizzas e tb_categorias
SELECT p.*, c.nome_categoria, c.descricao 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- 10. INNER JOIN filtrando por categoria específica (ex: Doce)
SELECT p.*, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Doce';