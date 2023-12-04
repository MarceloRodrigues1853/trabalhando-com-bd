-- Delimitador necessário para definir o bloco da procedure
DELIMITER //

-- Criação da Procedure
CREATE PROCEDURE LevantamentoDiario(IN dataPesquisa DATE, OUT totalProdutosComprados INT)
BEGIN
    -- Lógica da procedure para contar produtos comprados por dia
    SELECT COUNT(*) INTO totalProdutosComprados
    FROM TabelaDeVendas
    WHERE DATE(DataDaCompra) = dataPesquisa;

    -- Pode adicionar mais lógica aqui conforme necessário

END //

-- Restaura o delimitador padrão
DELIMITER ;
