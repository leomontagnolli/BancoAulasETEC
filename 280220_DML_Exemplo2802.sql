--AULA 28/02/2020
--INSERÇÃO DE DADOS

USE Exemplo2802;

-- tabela curso -- INSERT INTO É INSERIR DENTRO DA TABELA
INSERT INTO Curso(Cursocod,NomeCurso,CargaHoraria)
VALUES (1, 'Desenvolvimento de sistemas', 1500);

SELECT Cursocod, NomeCurso, CargaHoraria FROM Curso
GO

INSERT INTO Curso(Cursocod,NomeCurso,CargaHoraria)
VALUES (2,'Administração',1500);
GO
SELECT Cursocod, NomeCurso, CargaHoraria FROM Curso
GO

INSERT INTO Curso (Cursocod,NomeCurso,CargaHoraria)
VALUES (3, 'Logística',1500);
GO
SELECT Cursocod, NomeCurso, CargaHoraria FROM Curso
GO

INSERT INTO Curso (Cursocod,NomeCurso,CargaHoraria)
VALUES (4, 'ETIM',3000);
GO
SELECT Cursocod, NomeCurso, CargaHoraria FROM Curso
GO

--select não precisa repetir no dml pq vai se atualizando sozinho conforme as inserções 
--GO APENAS NO MYSQL

--EXERCICIO
--criar 6 registros para aluno
--criar 5 REGISTROS PARA DISC.

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Nataly', 12345, 12345678910, 1);
GO

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Isabella',12346,32165498710,2);
GO

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Gustavo',123457,98765432100,1);
GO

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Alicia',123458,5454543210,3);
GO

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Leticia',133458,54256523210,4);
GO

INSERT INTO Aluno (NomeAluno,RA,CPF,Cursocod)
VALUES ('Milena',133858,54222523210,4);
GO

SELECT * FROM Aluno
GO

INSERT INTO Disciplina (Disciplina, Sigla, NomeDisciplina, Cursocod)
VALUES (1, 'PORT', 'linguaportuguesa', 4);
GO
