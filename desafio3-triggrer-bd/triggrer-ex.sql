-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS Empresa;

-- Seleção do banco de dados
USE Empresa;

-- Criação da tabela Departamento
CREATE TABLE IF NOT EXISTS Departamento (
    IDDepartamento INT PRIMARY KEY,
    NomeDepartamento VARCHAR(50)
);

-- Criação da tabela Funcionario
CREATE TABLE IF NOT EXISTS Funcionario (
    IDFuncionario INT PRIMARY KEY,
    NomeFuncionario VARCHAR(50),
    IDDepartamento INT,
    FOREIGN KEY (IDDepartamento) REFERENCES Departamento(IDDepartamento)
);

-- Criação da tabela de Registro de Atividades
CREATE TABLE IF NOT EXISTS RegistroAtividades (
    IDRegistro INT PRIMARY KEY AUTO_INCREMENT,
    IDFuncionario INT,
    NomeFuncionario VARCHAR(50),
    DataRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IDFuncionario) REFERENCES Funcionario(IDFuncionario)
);

-- Criação do trigger para inserção automática de registros de atividades
DELIMITER //
CREATE TRIGGER InsertRegistroAtividades AFTER INSERT ON Funcionario
FOR EACH ROW
BEGIN
    INSERT INTO RegistroAtividades (IDFuncionario, NomeFuncionario)
    VALUES (NEW.IDFuncionario, NEW.NomeFuncionario);
END;
//
DELIMITER ;

-- Inserção de um novo funcionário (ativando o trigger)
INSERT INTO Funcionario (IDFuncionario, NomeFuncionario, IDDepartamento) VALUES
(104, 'Ana', 1);

-- Consulta para verificar os registros de atividades
SELECT * FROM RegistroAtividades;
