-- =========================
-- ATIVIDADE JOIN 3 - FARMÁCIA
-- =========================

DROP TABLE IF EXISTS tb_produtos;
DROP TABLE IF EXISTS tb_categorias;

CREATE TABLE tb_categorias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    preco REAL,
    estoque INTEGER,
    categoria_id INTEGER,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Beleza e cuidados'),
('Infantil', 'Produtos para crianças'),
('Vitaminas', 'Suplementos');

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Dipirona', 12.00, 50, 1),
('Shampoo', 25.00, 30, 2),
('Perfume', 120.00, 10, 3),
('Fralda', 60.00, 20, 4),
('Vitamina C', 35.00, 40, 5),
('Sabonete', 5.00, 100, 2),
('Protetor Solar', 80.00, 15, 3),
('Ibuprofeno', 18.00, 60, 1);

-- preço > 50
SELECT * FROM tb_produtos WHERE preco > 50;

-- preço entre 5 e 60
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

-- LIKE com letra S
SELECT * FROM tb_produtos WHERE nome LIKE '%S%';

-- INNER JOIN
SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- INNER JOIN filtrando Higiene
SELECT p.nome, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Higiene';
