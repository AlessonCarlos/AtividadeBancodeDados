-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- 1. Tabela tb_classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    especialidade VARCHAR(50)
);

-- 2. Tabela tb_personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ataque INT,
    defesa INT,
    nivel INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- 4. Inserir 5 registros em tb_classes
INSERT INTO tb_classes (nome_classe, especialidade) VALUES
('Guerreiro', 'Combate corpo a corpo'),
('Mago', 'Magia elemental'),
('Arqueiro', 'Precisão à distância'),
('Curandeiro', 'Suporte e cura'),
('Assassino', 'Furtividade e críticos');

-- 5. Inserir 8 registros em tb_personagens
INSERT INTO tb_personagens (nome, ataque, defesa, nivel, classe_id) VALUES
('Thor', 2500, 1500, 10, 1),
('Merlin', 1800, 1200, 9, 2),
('Legolas', 2200, 900, 8, 3),
('Ana', 1900, 1800, 7, 4),
('Sombra', 2700, 800, 10, 5),
('Carla', 2100, 1300, 6, 1),
('Claudio', 2300, 1100, 8, 3),
('Cristiano', 2000, 1600, 9, 4);

-- 6. SELECT com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- 7. SELECT com defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- 8. SELECT usando LIKE para nome com 'C'
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- 9. INNER JOIN entre tb_personagens e tb_classes
SELECT p.*, c.nome_classe, c.especialidade 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- 10. INNER JOIN filtrando por classe específica (ex: Arqueiro)
SELECT p.*, c.nome_classe 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome_classe = 'Arqueiro';