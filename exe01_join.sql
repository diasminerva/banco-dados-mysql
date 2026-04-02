-- =========================
-- ATIVIDADE JOIN - GAME ONLINE
-- =========================

DROP TABLE IF EXISTS tb_personagens;
DROP TABLE IF EXISTS tb_classes;

CREATE TABLE tb_classes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    descricao TEXT
);

CREATE TABLE tb_personagens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    poder_ataque INTEGER,
    poder_defesa INTEGER,
    nivel INTEGER,
    classe_id INTEGER,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Ataque forte'),
('Mago', 'Magia poderosa'),
('Arqueiro', 'Ataque à distância'),
('Tank', 'Alta defesa'),
('Assassino', 'Ataque rápido');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Arthur', 2500, 1500, 10, 1),
('Merlin', 3000, 1000, 12, 2),
('Legolas', 2200, 1200, 9, 3),
('Thor', 2800, 2000, 11, 4),
('Shadow', 2600, 1100, 10, 5),
('Clara', 1800, 900, 8, 3),
('Carlos', 2100, 1300, 9, 1),
('Cecilia', 1900, 1400, 8, 2);

-- ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- LIKE com letra C
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- INNER JOIN
SELECT p.nome, p.poder_ataque, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- INNER JOIN com filtro (Arqueiro)
SELECT p.nome, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
