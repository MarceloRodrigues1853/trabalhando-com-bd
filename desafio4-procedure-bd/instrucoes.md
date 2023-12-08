# Projeto de Demonstração

## Instruções do projeto

Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos.

Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia.

Para ajudar a empresa, crie um procedure para agilizar esse processo.

Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto para que outros desenvolvedores possam analisá-lo.

## Procedure para Levantamento Diário de Produtos Comprados

Este projeto consiste na criação de uma procedure em SQL para atender à necessidade da empresa de realizar um levantamento diário da quantidade de produtos comprados.

## Estrutura do Banco de Dados

O banco de dados Vendas foi criado com as seguintes tabelas:

**Tabela Produtos
Atributos:**

- IDProduto (Chave Primária)

- NomeProduto (Varchar, tamanho 100)

- Quantidade (Inteiro)

- DataCompra (Data)

`Procedure LevantamentoDiario`
Foi criada uma procedure chamada `LevantamentoDiario` que, ao receber uma `data` como `parâmetro`, realiza a contagem da quantidade de produtos comprados naquele dia.

````sql
-- Delimitador necessário para definir o bloco da procedure
DELIMITER //

-- Criação da Procedure
CREATE PROCEDURE LevantamentoDiario(IN dataPesquisa DATE, OUT totalProdutosComprados INT)
BEGIN
    -- Lógica da procedure para contar produtos comprados por dia
    SELECT SUM(Quantidade) INTO totalProdutosComprados
    FROM Produtos
    WHERE DATE(DataCompra) = dataPesquisa;

    -- Pode adicionar mais lógica aqui conforme necessário

END //

-- Restaura o delimitador padrão
DELIMITER ;
````

O `script SQL` e a `execução` da procedure podem ser encontrados no arquivo`codigo.sql` deste repositório.

## Execução do Projeto

**Configuração do Ambiente:**

O `banco de dados` foi criado e configurado no seu sistema de gerenciamento de banco de dados.

**Execução da Procedure:**

O script SQL foi executado para criar as tabelas, inserir dados e ativar a procedure.

**Verificação dos Resultados:**

A execução da procedure foi realizada com sucesso, fornecendo o levantamento diário da quantidade de produtos comprados.

## Como Contribuir

Se deseja contribuir ou analisar o código, sinta-se à vontade para clonar ou forkar este repositório. Qualquer feedback é bem-vindo!

Este projeto é um exemplo simples de como criar e utilizar procedures em um banco de dados. Se tiver alguma dúvida ou sugestão, não hesite em entrar em contato.
