-- A equipe de produção precisa do nome de todas as pelas que pesam mais de 500kg mas não mais que 700kg
SELECT *
FROM Production.Product
WHERE Weight > 500 and Weight < 700;


-- Foi pedido pelo marketing uma relação de tosos os empregados que sao casados e são assalariados
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M'and SalariedFlag = 1;

-- Um usuário chamdo Peter Krebs está devendo um pagemnto, consiga o email dele para enviarmos a cobranca 
SELECT * 
FROM person.Person
WHERE firstName = 'Peter' and lastName = 'Krebs';

SELECT * 
FROM person.EmailAddress
WHERE BusinessEntityID = 26;
