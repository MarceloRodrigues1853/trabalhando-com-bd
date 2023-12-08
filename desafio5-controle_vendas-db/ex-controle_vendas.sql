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

-- Exemplo de chamada da função para obter a quantidade de clientes cadastrados em 2023-12-01
SELECT SomaClientesCadastrados('2023-12-01') AS TotalClientes;

