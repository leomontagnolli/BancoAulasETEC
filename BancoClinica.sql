CREATE DATABASE BancoClinica;
GO
USE BancoClinica;
GO

CREATE TABLE Medico (
CodMedico INT NOT NULL CONSTRAINT PKMedico PRIMARY KEY,
NomeMedico VARCHAR(70) NOT NULL,
Especialidade VARCHAR(70) NOT NULL);
GO

CREATE TABLE Paciente (
CodPaciente INT NOT NULL CONSTRAINT PKPaciente PRIMARY KEY,
NomePaciente VARCHAR(70) NOT NULL);
GO

 CREATE TABLE Consulta (
 CodConsulta INT NOT NULL CONSTRAINT PKConsulta PRIMARY KEY,
 DiaConsulta DATE NOT NULL,
 HoraConsulta TIME NOT NULL );
GO

SELECT * FROM Medico;
GO

ALTER TABLE Consulta ADD CodMedico INT NOT NULL;
GO

ALTER TABLE Consulta 
ADD CONSTRAINT FKConsulta2 FOREIGN KEY (CodMedico) REFERENCES Medico;
GO

ALTER TABLE Consulta ADD CodPaciente INT NOT NULL;
GO

ALTER TABLE Consulta 
ADD CONSTRAINT FKConsulta FOREIGN KEY (CodPaciente) REFERENCES Paciente;
GO

