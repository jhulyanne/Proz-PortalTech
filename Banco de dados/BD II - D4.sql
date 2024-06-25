CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    data_cadastro DATE
);

CREATE FUNCTION contar_clientes_dia (@data DATE)
RETURNS INT
AS
BEGIN
    DECLARE @quantidade INT;

    SELECT @quantidade = COUNT(*)
    FROM clientes
    WHERE CAST(data_cadastro AS DATE) = @data;

    RETURN @quantidade;
END;

SELECT dbo.contar_clientes_dia('2024-06-25') AS clientes_cadastrados;