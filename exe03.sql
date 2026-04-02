-- =========================
-- EXERCÍCIO 3 - ESCOLA
-- =========================

DROP TABLE IF EXISTS estudantes;

CREATE TABLE estudantes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    idade INTEGER,
    turma TEXT,
    nota REAL,
    periodo TEXT
);

INSERT INTO estudantes (nome, idade, turma, nota, periodo) VALUES
('Pedro', 15, '1A', 8.5, 'Manhã'),
('Julia', 16, '2B', 6.0, 'Tarde'),
('Lucas', 14, '1A', 7.2, 'Manhã'),
('Marina', 17, '3C', 9.0, 'Noite'),
('Rafaela', 15, '2B', 5.5, 'Tarde'),
('Bruno', 16, '3C', 6.8, 'Noite'),
('Ana', 14, '1A', 7.9, 'Manhã'),
('Carlos', 17, '2B', 4.5, 'Tarde');

-- SELECT nota > 7
SELECT * FROM estudantes WHERE nota > 7;

-- SELECT nota < 7
SELECT * FROM estudantes WHERE nota < 7;

-- UPDATE
UPDATE estudantes SET nota = 7.5 WHERE id = 2;

-- Mostrar tudo
SELECT * FROM estudantes;
