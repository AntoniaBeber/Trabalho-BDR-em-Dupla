CREATE DATABASE AULA05_ ;
USE AULA05_;

CREATE TABLE Produtos(
codigo int primary key auto_increment,
descricao varchar(50),
precoVenda FLOAT(8,2),
precoCusto FLOAT(8,2),
categoria int
);

CREATE TABLE Produtos(
codigo int primary key,
descricao varchar(50),
precoVenda FLOAT,
precoCusto FLOAT,
categoria int
);

INSERT into Produtos ()
VALUES 
('1', 'Caderno','5.45','1.0',1),
('2', 'Caneta','1.20','0.50',1),
('3', 'CD','1.0','0.10',2),
('4', 'Mouse','14.00','5.0',2),
('5', 'Borracha','1.0','0.5',1),
('6', 'Grampeador','15.00','7.00',1),
('7', 'Carregador','20.00','10.50',2),
('8', 'Chaveiro','5.00', '1.25',3),
('9', 'Bola de Isopor','15.00','7.00',1),
('10', 'Livro', '20.00','11.00',2),
('11', 'Apagador','7.50','2.30',1);

SELECT 
SUM(precoVenda)
from
Produtos
