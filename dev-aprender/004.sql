-- MIN,MAX, SUM AVG: são funções de agregação, agregam ou combinan dados em 1 só resultado

-- Somando os 10 primeiros valores da coluna indicada e dando o nome de soma a ela
SELECT TOP 10 SUM(Linetotal) AS "Soma"
FROM Sales.SalesOrderDetail

-- Mostrando o menor valor
SELECT TOP 10 MIN(Linetotal) AS "Minimo"
FROM Sales.SalesOrderDetail

-- Mostrando o valor máximo
SELECT TOP 10 MAX(Linetotal) AS "Maximo"
FROM Sales.SalesOrderDetail

-- Mostrando a média
SELECT TOP 10 AVG(Linetotal)
FROM Sales.SalesOrderDetail

-- GROUP BY: basicamente divide o resultado da sua pesquisa em grupos
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produto foi vendido até hoje? 
SELECT ProductId, COUNT(ProductId) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de caada nome temo cadastrados em nosso banco de dados?
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName

-- Qual é a média de preço de produtos prata?
SELECT color, AVG(ListPrice) "Preco"
FROM Production.Product
WHERE color = 'Silver'
GROUP BY Color

-- Quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName
SELECT MiddleName, COUNT(MiddleName) as "quantidade"
FROM Person.Person
GROUP BY MiddleName

-- Qual é em média a quantidade que cada prosuto é vendido na loja
SELECT ProductID,AVG(OrderQty) as "media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--Qual foram as 10 vendas que no total tiveram os maiores valores de vena por produto do maior valor para o menor
SELECT TOP 10 ProductID,  SUM(LineTotal) as "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

-- Quantos produtos e qual a quantidade média de produtos temos cadastrados nas orderns de serviço, agrupadas por productID
