-- Gere um relatório informando quantos produtos estão cadastrados; 
SELECT COUNT(*) AS total_produtos FROM Produtos;

-- Gere um relatório informando o preço médio dos produtos;
SELECT AVG(preco) AS preco_medio FROM Produtos;

-- Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis;
SELECT CASE WHEN perecivel THEN 'Perecíveis' ELSE 'Não Perecíveis' 
END AS grupo, AVG(preco) AS preco_medio FROM Produtos GROUP BY grupo;

-- Selecione a média dos preços dos produtos agrupados pelo nome do produto; 
SELECT nome, AVG(preco) AS preco_medio FROM Produtos GROUP BY nome;

-- Selecione a média dos preços e total em estoque dos produtos;
SELECT AVG(preco) AS preco_medio, SUM(estoque) AS total_estoque FROM Produtos;

-- Selecione o nome, marca e quantidade em estoque do produto mais caro;
SELECT nome, marca, estoque FROM Produtos WHERE preco = (SELECT MAX(preco) FROM Produtos);

-- Selecione os produtos com preço acima da média;
SELECT * FROM Produtos WHERE preco > (SELECT AVG(preco) FROM Produtos);

-- Selecione a quantidade de produtos de cada nacionalidade.
SELECT nacionalidade, COUNT(*) AS quantidade_produtos FROM Produtos GROUP BY nacionalidade;
