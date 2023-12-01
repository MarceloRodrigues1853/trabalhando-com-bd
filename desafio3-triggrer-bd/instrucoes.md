# Projeto de Demonstração

## Instruções do projeto

- Crie um banco de dados

- adicione tabelas e determine quais são os atributos de cada uma.

- Em seguida, execute um trigger que se relacione com algum comando, como insert, select, delete ou update.

Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no campo ao lado para que outros desenvolvedores possam analisá-lo.

## Banco de Dados com Trigger

Este projeto é uma demonstração de criação de um banco de dados simples utilizando MySQL, onde são criadas tabelas, inseridos dados e executado um trigger relacionado ao comando `INSERT` em uma tabela.

## Estrutura do Banco de Dados

O banco de dados `Empresa` foi criado com as seguintes tabelas:

### Tabela `Departamento`

**Atributos:**

- `IDDepartamento` (Chave Primária)  

- `NomeDepartamento` (Varchar, tamanho 50)

### Tabela `Funcionario`

**Atributos:**

- `IDFuncionario` (Chave Primária)  

- `NomeFuncionario` (Varchar, tamanho 50)  

- `IDDepartamento` (Chave Estrangeira referenciando `Departamento.IDDepartamento`)
  
### Tabela `RegistroAtividades`

**Atributos:**

- `IDRegistro` (Chave Primária, Auto Increment)  

- `IDFuncionario` (Chave Estrangeira referenciando `Funcionario.IDFuncionario`)  

- `NomeFuncionario` (Varchar, tamanho 50)  

- `DataRegistro` (Timestamp, padrão para a hora atual)

### Trigger de Registro de Atividades

Foi criado um trigger chamado `InsertRegistroAtividades` que é acionado após a inserção de dados na tabela `Funcionario`. Esse trigger insere automaticamente um registro na tabela `RegistroAtividades` sempre que um novo funcionário é adicionado. O script SQL e a execução do trigger podem ser encontrados no arquivo [codigo.sql](codigo.sql) deste repositório.

## Execução do Projeto

1.**Configuração do Ambiente:**

- O banco de dados foi criado e configurado no MySQL Workbench.

2.**Execução do Script:**

- O script SQL foi executado no MySQL Workbench para criar as tabelas, inserir dados e ativar o trigger.

3.**Verificação dos Resultados:**  

- A inserção de um novo funcionário (`Ana`) foi realizada com sucesso e ativou o trigger.   - Uma consulta foi executada para verificar os registros de atividades, e um novo registro para `Ana` foi encontrado na tabela `RegistroAtividades`.

## Como Contribuir

Se deseja contribuir ou analisar o código, sinta-se à vontade para clonar ou forkar este repositório. Qualquer feedback é bem-vindo!

Este projeto é um exemplo simples de como criar e utilizar triggers em um banco de dados MySQL. Se tiver alguma dúvida ou sugestão, não hesite em entrar em contato.
