-- DADOS INICIAIS DA TABELA:
CREATE TABLE IF NOT EXISTS direitinho (
    ID_NF INT,
    ID_ITEM INT,
    COD_PROD INT,
    VALOR_UNIT FLOAT,
    QUANTIDADE INT,
    DESCONTO FLOAT
);

-- INSERÇÃO DE DADOS NA TABELA:
INSERT INTO direitinho (ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) VALUES
(1,1,1,25,10,5),
(1,2,2,13,3,NULL),
(1,3,3,15,2,NULL),
(1,4,4,10,1,NULL),
(1,5,5,30,7,NULL),
(2,1,3,15,4,NULL),
(2,2,4,10,5,NULL),
(3,1,1,25,5,NULL),
(3,2,4,10,4,NULL),
(3,3,5,30,5,NULL),
(3,4,2,13.5,7,NULL),
(4,1,5,30,10,15),
(4,2,4,10,12,5),
(4,3,1,25,13,5),
(4,4,2,13.5,15,5),
(5,1,3,15,3,NULL),
(5,2,5,30,6,NULL),
(6,1,1,25,22,15),
(6,2,3,15,25,20),
(7,1,1,25,10,3),
(7,2,2,13.5,10,4),
(7,2,2,13.5,10,4),
(7,3,3,15,10,4),
(7,4,5,30,10,1);

-- Questão A
/*
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT 
FROM direitinho 
WHERE DESCONTO = 0;
*/

-- Questão B
/*
ALTER TABLE direitinho
ADD VALOR_VENDIDO FLOAT AS (VALOR_UNIT - (VALOR_UNIT * (DESCONTO / 100))) STORED;
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, VALOR_VENDIDO 
FROM direitinho 
WHERE DESCONTO > 0;
*/

-- Questão C
/*
UPDATE direitinho 
SET DESCONTO = 0 
WHERE DESCONTO IS NULL;
*/

-- Questão D
/*
ALTER TABLE direitinho
ADD VALOR_TOTAL FLOAT AS (QUANTIDADE * VALOR_UNIT) STORED;
SELECT ID_NF, VALOR_TOTAL
FROM direitinho
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;
*/

-- Questão E
/*
SELECT COD_PROD, SUM(QUANTIDADE) AS QUANTIDADE
FROM direitinho
GROUP BY COD_PROD
ORDER BY QUANTIDADE DESC;
*/

-- Questão F
/*
SELECT ID_NF, VALOR_TOTAL 
FROM direitinho
WHERE VALOR_TOTAL > 500
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;
*/

-- Questão G
/*
SELECT COD_PROD, AVG(DESCONTO) AS MEDIA
FROM direitinho
GROUP BY COD_PROD;
*/