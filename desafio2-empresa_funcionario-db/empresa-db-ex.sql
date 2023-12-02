-- Criação do banco de dados
CREATE DATABASE Empresa;

-- Seleção do banco de dados
USE Empresa;

-- Criação da tabela Departamento
CREATE TABLE Departamento (
    IDDepartamento INT PRIMARY KEY,
    NomeDepartamento VARCHAR(50)
);

-- Criação da tabela Funcionario
CREATE TABLE Funcionario (
    IDFuncionario INT PRIMARY KEY,
    NomeFuncionario VARCHAR(50),
    IDDepartamento INT,
    FOREIGN KEY (IDDepartamento) REFERENCES Departamento(IDDepartamento)
);

-- Inserção de dados na tabela Departamento
INSERT INTO Departamento (IDDepartamento, NomeDepartamento) VALUES
(1, 'TI'),
(2, 'RH');

-- Inserção de dados na tabela Funcionario
INSERT INTO Funcionario (IDFuncionario, NomeFuncionario, IDDepartamento) VALUES
(101, 'João', 1),
(102, 'Maria', 2),
(103, 'Carlos', 1);

-- Consulta usando INNER JOIN para obter os funcionários com seus departamentos
SELECT Funcionario.NomeFuncionario, Departamento.NomeDepartamento
FROM Funcionario
INNER JOIN Departamento ON Funcionario.IDDepartamento = Departamento.IDDepartamento;
