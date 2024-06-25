CREATE TABLE IF NOT EXISTS relatorio_diario (
    data DATE PRIMARY KEY,
    quantidade_total INT
);

DELIMITER //

CREATE PROCEDURE GerarRelatorioDiario()
BEGIN
    DECLARE data_inicio DATE;
    DECLARE data_fim DATE;

    SELECT MIN(data_venda) INTO data_inicio FROM vendas;
    SELECT MAX(data_venda) INTO data_fim FROM vendas;

    DELETE FROM relatorio_diario WHERE data BETWEEN data_inicio AND data_fim;

    INSERT INTO relatorio_diario (data, quantidade_total)
    SELECT data_venda, SUM(quantidade)
    FROM vendas
    WHERE data_venda BETWEEN data_inicio AND data_fim
    GROUP BY data_venda;

END //

DELIMITER ;

CALL GerarRelatorioDiario();

SET GLOBAL event_scheduler = ON;
CREATE EVENT IF NOT EXISTS AtualizarRelatorioDiario
ON SCHEDULE EVERY 1 DAY
DO
  CALL GerarRelatorioDiario();
