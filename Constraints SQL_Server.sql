create database contraints;

use contraints
go

create table cliente(
    idcliente INT PRIMARY KEY IDENTITY,
	nome VARCHAR(30) NOT NULL
)
GO

CREATE TABLE telefone(
    idtelefone INT PRIMARY KEY,
	tipo CHAR(3),
	numero VARCHAR(10),
	id_cliente INT
)
GO

-- AO Incerir um registo na tabela Telefone com um cliente que não existe, como fazer para colocar uma restrição na tabela?


INSERT INTO cliente VALUES ('Joao')
INSERT INTO cliente VALUES ('Clara')
INSERT INTO cliente VALUES ('Tania')
INSERT INTO cliente VALUES ('Luiz')
INSERT INTO cliente VALUES ('Antonio')
INSERT INTO cliente VALUES ('Ana')
GO

SELECT * FROM CLIENTE
GO


SELECT * FROM telefone
GO

INSERT INTO telefone VALUES (124, 'RES', '9987-6787',1)
INSERT INTO telefone VALUES (365, 'CEL', '8876-7875',2)
INSERT INTO telefone VALUES (324, 'CEL', '6543-7789',1)
INSERT INTO telefone VALUES (856, 'RES', '7354-9878',4)
INSERT INTO telefone VALUES (896, 'CON', '9826-0098',3)
INSERT INTO telefone VALUES (326, 'CON', '7896-9098',2)
INSERT INTO telefone VALUES (156, 'RES', '9983-0376',5)
INSERT INTO telefone VALUES (765, 'CON', '8836-3782',5)



--- Juntando a chave primária da tabela cliente com a chave estrangeira da tabela telefone, para trazer quais são os clientes e os respectivos telefones
SELECT nome, tipo, numero
FROM cliente C
INNER JOIN telefone T
ON idcliente = id_cliente
GO


SELECT nome, tipo, numero
FROM cliente c LEFT JOIN telefone t
ON idcliente = id_cliente
GO

INSERT INTO telefone VALUES (609, 'CON', '5489-0987', 10)
INSERT INTO telefone VALUES (520, 'RES', '8906-0007', 10)
GO

SELECT nome, tipo, numero
FROM cliente c
RIGHT JOIN telefone T 
ON idcliente = id_cliente
GO

ALTER TABLE telefone ADD CONSTRAINT FK_TELEFONE
FOREIGN KEY (id_cliente) REFERENCES cliente(idcliente)
GO

DELETE FROM telefone WHERE id_cliente = 10
GO

ALTER TABLE telefone DROP CONSTRAINT FK_TELEFONE
GO


DROP TABLE telefone
DROP TABLE cliente

SELECT * FROM telefone
GO

SELECT * FROM cliente 
GO 


