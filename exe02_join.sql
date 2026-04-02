-- =========================
-- ATIVIDADE JOIN 2 - PIZZARIA
-- =========================

DROP TABLE IF EXISTS tb_pizzas;
DROP TABLE IF EXISTS tb_categorias;

CREATE TABLE tb_categorias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    tamanho TEXT,
    preco REAL,
    borda_recheada TEXT,
    categoria_id INTEGER,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas tradicionais salgadas'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Sem carne'),
('Especial', 'Sabores especiais da casa'),
('Premium', 'Ingredientes selecionados');

INSERT INTO tb_pizzas (nome, tamanho, preco, borda_recheada, categoria_id) VALUES
('Mussarela', 'Grande', 42.00, 'Sim', 1),
('Calabresa', 'Grande', 48.00, 'Não', 1),
('Marguerita', 'Média', 55.00, 'Sim', 3),
('Moda da Casa', 'Grande', 68.00, 'Sim', 4),
('Morango com Chocolate', 'Média', 52.00, 'Não', 2),
('Milho com Bacon', 'Grande', 50.00, 'Sim', 4),
('Frango com Catupiry', 'Grande', 46.00, 'Não', 1),
('Brigadeiro', 'Pequena', 58.00, 'Não', 2);

-- pizzas com valor maior que 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- pizzas com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- INNER JOIN entre pizzas e categorias
SELECT p.nome, p.tamanho, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- INNER JOIN trazendo apenas pizzas doces
SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';
