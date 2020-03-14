CREATE DATABASE Exemplo2802;
GO
USE exemplo2802;
GO

/*ESCOLA
CRIAR UMA TABELA ALUNO, COM NOME, CPF E RA;
CRIAR UMA TABELA CURSO COM CARGA HOR�RIA E NOME DO CURSO;
CRIAR UMA TABELA DISCIPLINA COM NOME DA DISCIPLINA E SIGLA; 
*/

CREATE TABLE Aluno (
NomeAluno VARCHAR(70) NOT NULL,
CPF CHAR(11) NOT NULL CONSTRAINT UqCpf UNIQUE, 
RA INT NOT NULL CONSTRAINT PKAluno PRIMARY KEY);
GO

SELECT * FROM Aluno;
GO --CONSULTA DE TESTE

CREATE TABLE Curso(
CargaHoraria INT NOT NULL, 
NomeCurso VARCHAR (70) NOT NULL, 
Cursocod INT NOT NULL CONSTRAINT PKNomeCurso PRIMARY KEY);
GO

CREATE TABLE Disciplina(
NomeDisciplina VARCHAR(70) NOT NULL CONSTRAINT UqNomeDisciplina UNIQUE,
Sigla VARCHAR(70) NOT NULL,
Disciplina INT NOT NULL CONSTRAINT PKDisciplina PRIMARY KEY);
GO

/* 21/02/2020- CRIA��O DE CHAVE ESTRANGEIRA (
RELACIONAMENTO) POR MEIO DE ALTERA��O DE TABELA

CURSO - DISCIPLINA 1:N 
O Lado N da tabela deve receber a primaria do lado 1 como
chave estrangeira
*/

--CRIAR COLUNA CODCURSO NA TABELA DISCIPLINA
ALTER TABLE Disciplina ADD Cursocod INT NOT NULL;
GO

--AP�S COLUNA CRIADA ADICIONA A CHAVE ESTRANGEIRA
ALTER TABLE Disciplina 
ADD CONSTRAINT FKDiscCurso FOREIGN KEY (Cursocod) REFERENCES Curso;
GO

--RELACIONAMENTO ENTRE ALUNO CURSO
ALTER TABLE Aluno ADD Cursocod INT NOT NULL;
GO

--AP�S COLUNA CRIADA ADICIONA A CHAVE ESTRANGEIRA
ALTER TABLE Aluno 
ADD CONSTRAINT FKAlunoCurso FOREIGN KEY (Cursocod) REFERENCES Curso;
GO

