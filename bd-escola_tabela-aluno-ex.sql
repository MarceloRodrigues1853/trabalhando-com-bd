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
    Telefone VARCHAR(15)
);

-- Inserção de dados na tabela ALUNO
INSERT INTO ALUNO (ID, Nome, Email, Endereco, Telefone)
VALUES
(1, 'João Carlos', 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489'),
(2, 'José Vitor', 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
(3, 'Paulo André', 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');