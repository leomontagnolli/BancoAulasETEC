CREATE DATABASE EscolaTecnica;
GO

USE EscolaTecnica;
GO

CREATE TABLE Aluno(
NomeAluno VARCHAR(70) NOT NULL,
CPF CHAR(11) NOT NULL CONSTRAINT PKAluno PRIMARY KEY,
Endereco VARCHAR(70) NOT NULL,
Telefone VARCHAR (11) NOT NULL,
NomeMae VARCHAR(70) NOT NULL);
GO

CREATE TABLE Curso(
NomeCurso VARCHAR (70) NOT NULL,
CodCurso INT NOT NULL CONSTRAINT PKCurso PRIMARY KEY,
CargaHora INT NOT NULL,
Especialidade VARCHAR (70) NOT NULL CONSTRAINT UqEspecialidade UNIQUE);
GO

CREATE TABLE Disciplina(
CodDisciplina INT NOT NULL CONSTRAINT PKDisciplina PRIMARY KEY,
NomeDisciplina  VARCHAR (70) NOT NULL,
ConteudoPrograma VARCHAR (200) NOT NULL,
CargaHora INT NOT NULL );
GO

CREATE TABLE Turma(
DataInicio DATE NOT NULL,
DataTermino DATE NOT NULL,
Periodo VARCHAR(5) NOT NULL);
GO

SELECT * FROM Aluno;
GO

SELECT * FROM Curso;
GO

SELECT * FROM Disciplina;
GO

SELECT * FROM Turma;
GO

ALTER TABLE Turma ADD CodTurma INT NOT NULL CONSTRAINT PKTurma PRIMARY KEY;
GO

ALTER TABLE Turma ADD CodCurso INT NOT NULL;
GO

ALTER TABLE Turma 
ADD CONSTRAINT FKCurso FOREIGN KEY (CodCurso) REFERENCES Curso;
GO


ALTER TABLE Aluno ADD CodTurma INT NOT NULL;
GO

ALTER TABLE Aluno 
ADD CONSTRAINT FKTurma FOREIGN KEY (CodTurma) REFERENCES Turma;
GO

ALTER TABLE Disciplina ADD CodCurso INT NOT NULL;
GO

ALTER TABLE Disciplina 
ADD CONSTRAINT FKCurso1 FOREIGN KEY (CodCurso) REFERENCES Curso;
GO


