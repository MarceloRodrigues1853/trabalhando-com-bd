
# Instruções do projeto

Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes.
Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.

Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no campo ao lado para que outros desenvolvedores possam analisá-lo.

# Controle de Vendas e Cadastro de Clientes

Este projeto tem como objetivo criar uma função SQL para somar todos os clientes cadastrados em um determinado dia em um banco de dados que contém informações sobre vendas de produtos e cadastro de clientes.

## Função SQL: SomaClientesCadastrados

Foi criada uma função chamada `SomaClientesCadastrados` que, ao receber uma data como parâmetro, realiza a contagem da quantidade de clientes cadastrados naquele dia.

```sql
-- Delimitador necessário para definir o bloco da função
DELIMITER //

-- Criação da Função
CREATE FUNCTION SomaClientesCadastrados(dataPesquisa DATE) RETURNS INT
BEGIN
    DECLARE totalClientes INT;

    -- Lógica da função para somar clientes cadastrados por dia
    SELECT COUNT(*) INTO totalClientes
    FROM Clientes
    WHERE DATE(DataCadastro) = dataPesquisa;

    RETURN totalClientes;
END //

-- Restaura o delimitador padrão
DELIMITER ;
```

## Execução da Função

Para utilizar a função, basta chamar `SomaClientesCadastrados` passando a data desejada como argumento.

```sql
-- Exemplo de chamada da função para obter a quantidade de clientes cadastrados em 2023-12-01
SELECT SomaClientesCadastrados('2023-12-01') AS TotalClientes;
```

Neste exemplo:

- `SomaClientesCadastrados`: Nome da função.
  
- `(dataPesquisa DATE)`: Parâmetro de entrada para a data desejada.

- `DECLARE totalClientes INT;`: Declaração de uma variável para armazenar o resultado.

- `SELECT COUNT(*) INTO totalClientes ...`: Lógica para contar a quantidade de clientes cadastrados na data especificada.

- `RETURN totalClientes;`: Retorna o resultado.
