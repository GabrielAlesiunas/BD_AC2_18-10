CREATE TABLE Produtos (
id_produto 		INT 		PRIMARY KEY 	AUTO_INCREMENT 	NOT NULL,
nome 			VARCHAR(80) NOT NULL,
preco 			DOUBLE		NOT NULL,
estoque 		DOUBLE		NOT NULL,
perecivel 		BOOLEAN		NOT NULL,
marca 			VARCHAR(50),
nacionalidade 	VARCHAR(50)
)