CREATE TABLE cursos (
    cursoID INT PRIMARY KEY,
    nomeCurso VARCHAR(100),
    duracaoEmHoras INT
  	professor VARCHAR(100)
); 

CREATE TABLE alunos (
    alunoID INT PRIMARY KEY,
    nome VARCHAR(100),
    dataNascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(15)
); 

CREATE TABLE matriculas (
    matriculaID INT PRIMARY KEY,
    alunoID INT,
    cursoID INT,
    dataMatricula DATE,
    FOREIGN KEY (alunoID) REFERENCES alunos(alunoID),
    FOREIGN KEY (cursoID) REFERENCES cursos(cursoID)
);

INSERT INTO alunos (alunoID, nome, dataNascimento, email, telefone) VALUES
(1, 'João Silva', '2000-05-10', 'joao.silva@gmail.com', '123456789'),
(2, 'Julia Souza', '1998-11-22', 'maria.souza@gmail.com', '987654321'),
(3, 'Gabriel Monte', '2007-09-12', 'gabriel.monte@gmail.com', '903491289');

INSERT INTO cursos (cursoID, nomeCurso, duracaoEmHoras, professor) VALUES
(1, 'Inglês', 300 , 'Janaina Castel'),
(2, 'Holândes', 200 , 'Ana Pimenta'), 
(3, 'Francês', 400 , 'Roberto Silva');

INSERT INTO matriculas (alunoID, cursoID, dataMatricula) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-01-23'),
(2, 2, '2024-02-14');

CREATE TABLE historicoMatriculas (
    historicoID INT AUTO_INCREMENT PRIMARY KEY,
    alunoID INT,
    cursoID INT,
    dataMatricula DATE,
    dataRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER after_insert_matriculas
AFTER INSERT ON matriculas
FOR EACH ROW
BEGIN
    INSERT INTO historicoMatriculas (alunoID, cursoID, dataMatricula)
    VALUES (NEW.AlunoID, NEW.CursoID, NEW.DataMatricula);
END//

DELIMITER ;