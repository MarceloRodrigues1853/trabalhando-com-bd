# Passos para Criar o Banco de Dados e a Tabela:

Conectar ao Servidor MySQL:

Abra o MySQL Workbench e conecte-se ao servidor MySQL.
Criar o Banco de Dados ESCOLA:

Execute o seguinte comando SQL para criar o banco de dados ESCOLA:

sql
Copy code
CREATE DATABASE IF NOT EXISTS ESCOLA;
Usar o Banco de Dados ESCOLA:

Execute o seguinte comando para selecionar o banco de dados ESCOLA para uso:

sql
Copy code
USE ESCOLA;
Criar a Tabela ALUNO:

Execute o seguinte comando para criar a tabela ALUNO:

sql
Copy code
CREATE TABLE IF NOT EXISTS ALUNO (
  ID INT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  endereco VARCHAR(255)
);
Este comando cria a tabela ALUNO com os atributos especificados.

Verificar a Criação da Tabela:

Você pode verificar se a tabela foi criada com sucesso usando o seguinte comando:

sql
Copy code
SHOW TABLES;
Isso deve exibir a tabela ALUNO na lista.

Encerrar a Sessão:

Ao finalizar os comandos, você pode desconectar-se do servidor MySQL no MySQL Workbench.
Salvar no GitHub:

Você pode salvar esses comandos em um arquivo SQL e, se desejar, carregá-lo em um repositório do GitHub. O MySQL Workbench também possui a opção de exportar um modelo físico ou script SQL.
