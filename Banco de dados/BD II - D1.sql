CREATE TABLE produtos (
  id_produto SERIAL PRIMARY KEY,
  nome_produto VARCHAR(50) NOT NULL,
  quantidade_estoque INT NOT NULL,
  fornecedor VARCHAR(50)
);

CREATE TABLE vendas (
  id_venda SERIAL PRIMARY KEY,
  nome_cliente VARCHAR(50),
  id_produto INT NOT NULL,
  telefone VARCHAR(20),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT into produtos (id_produto, nome_produto, quantidade_estoque, fornecedor) VALUES
('1', 'pulseira', 34, 'Julia Utilidades'),
('2', 'anel', 16, 'Sorriso biju'),
('3', 'colar', 23, 'Julia Utilidades');

insert into vendas (id_venda, nome_cliente, id_produto, telefone) VALUES
('1', 'Joana', '2', '(22)9738-9918'),
('2', 'Alberto', '3', '(21)9836-1012'),
('3', 'Joana', '2', '(22)9992-9182');

SELECT vendas.id_venda, vendas.nome_cliente, produtos.nome_produto, vendas.telefone
FROM vendas
INNER JOIN produtos ON vendas.id_produto = produtos.id_produto;


SELECT vendas.id_venda, vendas.nome_cliente, produtos.nome_produto, vendas.telefone
FROM vendas
LEFT JOIN produtos ON vendas.id_produto = produtos.id_produto;


SELECT vendas.id_venda, vendas.nome_cliente, produtos.nome_produto, vendas.telefone
FROM vendas
RIGHT JOIN produtos ON vendas.id_produto = produtos.id_produto;

