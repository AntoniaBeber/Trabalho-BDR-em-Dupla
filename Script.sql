CREATE DATABASE AULA05;
USE AULA05;

CREATE TABLE Produtos(
codigo int primary key auto_increment,
descricao varchar(50),
precoVenda FLOAT(8, 2),
precoCusto FLOAT(8, 2),
categoria int
);

INSERT into Produtos 
(descricao, precoVenda, precoCusto, categoria)
VALUES 
('Caneta','2.75','1.50',1),
('Caderno','7.00','3.0',1),
('Caderno','5.45','1.0',1),
('Caneta','1.20','0.50',1),
('CD','1.0','0.10',2),
('Mouse','14.00','5.0',2),
('Borracha','1.0','0.5',1),
('Grampeador','15.00','7.00',1),
('Carregador','20.00','10.50',2),
('Chaveiro','5.00', '1.25',3),
('Bola de Isopor','15.00','7.00',1),
('Livro', '20.00','11.00',2),
('Apagador','7.50','2.30',1);

# Soma total do preço de venda
SELECT 
SUM(precoVenda)
from
Produtos;

# Soma total do preço de venda agrupado por descrição
SELECT
	descricao as D,
    sum(precoVenda) as pv
FROM 	
	produtos
GROUP BY D
HAVING pv;

# Média do preço de venda por categoria
SELECT
	categoria as C,
    avg(precoVenda) as pv
FROM 	
	produtos
GROUP BY C
HAVING pv;

# Preço mínimo de venda agrupado por descrição
SELECT
	descricao as D,
    min(precoVenda) as pv
FROM 	
	produtos
GROUP BY D
HAVING pv;

# Quantidade total de linhas da tabela
SELECT
	count(codigo)
FROM 	
	produtos;

# Quantidade total de produtos onde a categoria é igual a 2
SELECT
	categoria as C,
	count(codigo) as count
FROM 	
	produtos
GROUP BY C
HAVING count;

# Resumo geral da tabela com todas as funções de agregação em uma única consulta
SELECT
  categoria as C,
  count(codigo) as count,
  max(precoCusto),
  min(precoCusto),
  avg(precoCusto),
  avg(precoVenda),
  sum(precoCusto),
  sum(precoVenda)
From 
  produtos
GROUP BY C
having   
  count;
