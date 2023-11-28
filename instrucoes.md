# instruções

 1. crie uma tabela chamada ALUNO;  
 2. defina os atributos da tabela;
 3. adicione a chave primária de nome ID (identificador);
 4. adicione um atributo nome do tipo varchar;
 5. adicione um atributo e-mail do tipo varchar;
 6. adicione um atributo endereço do tipo varchar.

 Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no campo ao lado para que outros desenvolvedores possam analisá-lo.

# Passos para Criar o Banco de Dados e a Tabela

1. ## Conectar ao Servidor MySQL

- Abra o MySQL Workbench e conecte-se ao servidor MySQL.
  
2. ## Criar o Banco de Dados ESCOLA

- Execute o seguinte comando SQL para criar o banco de dados ESCOLA

``CREATE DATABASE IF NOT EXISTS ESCOLA;``

3. ## Usar o Banco de Dados ESCOLA

- Execute o seguinte comando para selecionar o banco de dados ESCOLA para uso:

``USE ESCOLA;``

4. ## Criar a Tabela ALUNO

- Execute o seguinte comando para criar a tabela ALUNO:
  
`CREATE TABLE IF NOT EXISTS ALUNO (
  ID INT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  endereco VARCHAR(255)
);`

- Este comando cria a tabela ALUNO com os atributos especificados.

1. ## Verificar a Criação da Tabela

- Você pode verificar se a tabela foi criada com sucesso usando o seguinte comando:

  ``SHOW TABLES;``

- Isso deve exibir a tabela ALUNO na lista.

6. ## Encerrar a Sessão

- Ao finalizar os comandos, você pode desconectar-se do servidor MySQL no MySQL Workbench.

7. ## Salvar no GitHub

- Você pode salvar esses comandos em um arquivo SQL e, se desejar, carregá-lo em um repositório do GitHub. O MySQL Workbench também possui a opção de exportar um modelo físico ou script SQL.
