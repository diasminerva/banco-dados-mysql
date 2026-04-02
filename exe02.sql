DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    categoria TEXT,
    preco REAL,
    estoque INTEGER,
    marca TEXT
);

INSERT INTO produtos (nome, categoria, preco, estoque, marca) VALUES
('Celular', 'Eletrônicos', 1200, 10, 'Samsung'),
('Fone', 'Eletrônicos', 150, 30, 'JBL'),
('Notebook', 'Eletrônicos', 3500, 5, 'Dell'),
('Camiseta', 'Roupas', 80, 50, 'Nike'),
('Tênis', 'Roupas', 600, 20, 'Adidas'),
('Relógio', 'Acessórios', 400, 15, 'Casio'),
('Mochila', 'Acessórios', 200, 25, 'Puma'),
('Tablet', 'Eletrônicos', 900, 8, 'Lenovo');

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 1300 WHERE id = 1;

SELECT * FROM produtos;
