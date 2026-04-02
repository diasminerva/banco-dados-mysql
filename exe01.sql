DROP TABLE IF EXISTS colaboradores;

CREATE TABLE colaboradores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    idade INTEGER,
    cargo TEXT,
    salario REAL,
    departamento TEXT
);

INSERT INTO colaboradores (nome, idade, cargo, salario, departamento) VALUES
('Ana', 28, 'Analista', 2500, 'RH'),
('Carlos', 35, 'Gerente', 5000, 'Financeiro'),
('Mariana', 22, 'Assistente', 1800, 'RH'),
('João', 40, 'Supervisor', 3000, 'Operações'),
('Lucas', 19, 'Estagiário', 1200, 'TI');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2700 WHERE id = 1;

SELECT * FROM colaboradores;
