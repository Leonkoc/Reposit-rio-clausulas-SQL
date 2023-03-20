--Having
--Usado junto com a fun��oo de group by para filtrar resultados em agrupamento.
-- Um where para dados agrupados.
-- O Having � aplicado depois que os dados foram agrupados.
-- Where � aplicado antes dos dados serem agrupados

SELECT FirstName, COUNT(FirstName) as	'Quantidade'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10 
ORDER BY COUNT(FirstName) DESC
-- S� CONSIGO APLICAR O HAVING DEPOIS DO GROUP BY

/*
DESAFIO QUERO SABER QUAIS PRODUTOS QUE NO TOTAL DE VENDAS EST�O ENTRE 160K A 500K
*/

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID,SUM(UnitPrice) AS 'MAIOR'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(UnitPrice) BETWEEN 1000 AND 2500


-- QUANDO USAR WHERE E HAVING 
-- VOC� QUER SABER QUAIS NOMES NO SISTEMA  TEM OCORRENCIA MAIOR QUE 10 MAS TEM O TITULO 'MR.'
SELECT FirstName, COUNT(FirstName) as	'Quantidade'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10 
ORDER BY COUNT(FirstName) DESC

/*
	DESAFIO
	QUAIS PROVINCIAS TEM UM NUMERO MAIOR DE CADASTRO NO NOSSO SISTEMA, DEPOIS ENCONTRAR QUAIS PROVINCIAS TEM MAIS DE 1000 REGISTROS
*/
SELECT TOP 10 StateProvinceID,SUM(StateProvinceID) AS 'Quantidade'
FROM Person.Address
GROUP BY StateProvinceID
HAVING SUM(StateProvinceID) > 1000
--COMO � UMA MULTINACIONAL OS GERENTES QUEREM SABER QUAIS PRODUTOS PRODUCT ID  N�O EST�O TRAZEENDO UM FATURAMENTO DE PELO MENOS 1 MILH�O EM TOTAL VENDAS(LINETOTAL)
SELECT ProductID, SUM(LineTotal) AS 'FATURAMENTO'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) <= 1000000
ORDER BY SUM(LineTotal) DESC

