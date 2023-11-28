-- Criação do Banco de Dados ESCOLA
CREATE DATABASE ESCOLA;

-- Seleção do Banco de Dados ESCOLA
USE ESCOLA;

-- Criação da Tabela ALUNO
CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Endereco VARCHAR(255),
);

-- Inserção de dados na tabela ALUNO
INSERT INTO ALUNO (ID, Nome, Email, Endereco,)
VALUES
(1, 'João Carlos', 'Jcarlos@gmail.com', 'Rua 13 de maio'),
(2, 'José Vitor', 'Jvitor@gmail.com', 'Rua da Saudade'),
(3, 'Paulo André', 'Pandr@gmail.com', 'Rua do Sol');

-- Visualizar a tabela pronta
SELECT * FROM ALUNO;
