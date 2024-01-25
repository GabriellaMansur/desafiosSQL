-- BETWEEN
SELECT *
FROM Production.Product
WHERE ListPrice between 100 and 1500

-- Quais pessoas foram constratadas entre 2009 e 2010?
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate

-- IN (é usado junto com  WHERE )
-- Selecione as pessoas que possuem os BusinessEntityId com os valores 2, 7, 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

-- LIKE 'algum%'
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa'

-- Quantos produtos temos cadastrados no sistema que custam mais do que 1500?
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

-- Quantas pessoas temos com o sobrenome que inicia com a letra P?
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%'

-- Em quantas cidades únicas estão cadastrados nossos clientes?
SELECT COUNT(DISTINCT City)
FROM person.Address

-- Quais sãoa as cidades únicas que temos cadastardas em nosso sistema?
SELECT DISTINCT City
FROM person.Address

-- Quantos produtos vermelhos tem preço entre 500 e 1000 dólares?
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'Red' 
AND ListPrice BETWEEN 500 AND 1000

-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?
SELECT COUNT(*)
FROM Production.Product
WHERE Name LIKE '%road%'