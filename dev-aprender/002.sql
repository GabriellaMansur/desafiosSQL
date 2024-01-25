-- Qual é o número total de empregados?
SELECT COUNT(FirstName)
FROM person.Person

-- Quantos produtos temos cadastrados em nosssa tabela dse produtos?
SELECT COUNT (*)
FROM Production.Product

-- Quantos tamanhos de produtos temos cadastrados em nossa tabela
SELECT COUNT (Size)
FROM Production.Product


-- Quantos tamanhos de DIFERENTES produtos temos cadastrados em nossa tabela
SELECT COUNT (DISTINCT Size)
FROM Production.Product

-- Selecione os 10 primeiras linhas da tebale de produtos
SELECT TOP 10 *
FROM Production.Product

-- ORDER BY asc desc
SELECT *
FROM Person.Person
ORDER BY FirstName asc

-- Obtenha  o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato
SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

--Obtenha o nome e o número do produto que tem o ProductId entre 1 e 4
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID desc