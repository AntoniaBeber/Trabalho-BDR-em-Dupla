CREATE DATABASE AULA05_ ;
USE AULA05_;

CREATE TABLE Produtos(
codigo int primary key auto_increment,
descricao varchar(50),
precoVenda FLOAT(8,2),
precoCusto FLOAT(8,2),
categoria int
);

INSERT into Produtos ()
VALUES 
('Caderno','5.45','1.0',1),
('Caneta','1.20','0.50',1),
('CD','1.0','0.10',2),
('Mouse','14.00','5.0',2),
('Borracha','1','0.5',1),
('Grampeador','15.00','7.00',1),
('Carregador','20.00','10.50',2),
('Chaveiro','5.00', '1.25',3),
('Bola de Isopor','15.00','7.00',1),
('Livro', '20.00','11.00',2),
('Apagador','7.50','2.30',1);
