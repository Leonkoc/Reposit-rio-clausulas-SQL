--Min max sum avg
--Fun��es de agrega��o combinam dados de uma tabela em um resultado s�.
--exemplo sum, somaria todas as linhas e mostraria somente um resultado.

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT TOP 10 SUM(LineTotal) AS 'Total'
FROM Sales.SalesOrderDetail
--nesse caso soma todos os valores da linha linetotal e retornar uma �nica linha e coluna.
SELECT TOP 10 MIN(LineTotal) AS 'MENOR'
FROM Sales.SalesOrderDetail
--MOSTRA O MENOR VALOR DA COLUNA PEDIDA
SELECT TOP 10 MAX(LineTotal) AS 'MAX'
FROM Sales.SalesOrderDetail
SELECT TOP 10 AVG(LineTotal) AS 'M�DIA'
FROM Sales.SalesOrderDetail
-- EM M�DIA ESSE � O VALOR TOTAL CADASTRADO.