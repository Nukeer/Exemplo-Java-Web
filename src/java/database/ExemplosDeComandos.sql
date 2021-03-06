# Seleciona todas as colunas da tabela de carros
SELECT * FROM carros;

# Seleciona a coluna nome, fabricante, cor e quantidade colocando
# um apelido para apresentar para o usuário de uma melhor forma
SELECT 
    nome AS 'Nome',  
    fabricante AS 'Fabricante', 
    cor AS 'Cor', 
    quantidade_portas AS 'Quantidade de Portas'
FROM carros;

# Exemplo de INSERT na tabela de carros informando 
# as colunas desejadas
INSERT INTO carros 
(id, nome, cor, fabricante, placa, chassi, quilometragem, potencia, data_compra, 
esta_funcionando, permitida_circulacao, quantidade_portas, quantidade_batidas,
ano_fabricacao, ano_lancamento, tipo_pneu, renavam, descricao)
 VALUE
(1, "Gol", "Azul Bebê", "VW", "ABC-2000", "2Ab578ROepaso82371", 29134741, 85, 
'2017-08-07', TRUE, FALSE, 4, 0, 2017, 2016, 175, 847516874, "");

# Inserir na tabela de carros um registro
# com somente alguns campos
INSERT INTO carros 
(nome, cor, fabricante, potencia, data_compra)
 VALUE
("Palio", "Rosa choque", "Fiat", 65, '2013-04-29');

INSERT INTO carros 
(nome, cor, fabricante, potencia, data_compra)
 VALUE
("Up", "Roxo", "VW", 75, 
'2017-06-01');

INSERT INTO carros 
(nome, cor, fabricante, potencia, data_compra)
 VALUES
("Fox", "Purple", "VW", 120, '2016-05-11'),
("Cross Fox","Red","VW",100,'2015-04-29');

SELECT 
	nome AS 'Nome',  
	fabricante AS 'Fabricante', 
	cor AS 'Cor', 
	quantidade_portas AS 'Quantidade de Portas'
FROM carros;


INSERT INTO carros (fabricante, cor, nome)
VALUES
("VW", "Cinza", "Golf"),
("VW", "Vermelho", "Jetta"),
("VW", "Amarelo", "Saveiro"),
("VW", "Preto", "New Beetle"),
("VW", "Azul Bebê", "Fusca"),
("VW", "Branco", "Novo Fusca"),
("VW", "Cinza", "Up"),
("VW", "Azul Calcinha", "Kombi"),
("VW", "Cobalto", "Bora"),
("VW", "Vermelho", "Passat");

UPDATE carros SET
cor = "Branco"
WHERE cor = "Vermelho";

UPDATE carros SET 
ano_fabricacao = 2017, ano_lancamento = 2016
WHERE cor = "Branco";

SELECT cor, COUNT(cor) FROM carros
GROUP BY cor
ORDER By COUNT(cor) DESC;

SELECT nome, cor FROM carros;

SELECT id, nome, quantidade_batidas FROM carros 
WHERE id > 4;

SELECT id, nome, quantidade_batidas FROM carros 
WHERE id >= 4;

SELECT id, nome, quantidade_batidas FROM carros 
WHERE id < 4;

SELECT id, nome, quantidade_batidas FROM carros 
WHERE id <= 4;

SELECT id, nome, quantidade_batidas FROM carros 
WHERE id <> 4;

SELECT nome FROM carros ORDER BY nome ASC;
SELECT nome FROM carros ORDER BY nome DESC;

SELECT fabricante, nome, cor FROM carros 
ORDER BY 
	fabricante ASC, 
	nome ASC,
	cor ASC;

SELECT cor, COUNT(cor) FROM carros
GROUP BY cor
ORDER By COUNT(cor) DESC;

# limpar a tabela de carros por completo
TRUNCATE carros;



# Retorna a quantidade de registros
SELECT COUNT(*) FROM carros;


