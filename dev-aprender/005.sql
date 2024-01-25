-- HAVING: usado junto com o GROUP BY para filtrar resultados de uma consulda de valores agregados
-- Parecido com o WHERE, mas é usado especificamente com linhas agrupadas

-- Sintaxe:
SELECT coluna1, funcaoAgragacao (coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING COUNT(FirstName) > 10;

-- Quais produtos que no total de vendas estão entre 162k e 500k

