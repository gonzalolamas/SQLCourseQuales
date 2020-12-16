SELECT * FROM DimDate "A"
RIGHT JOIN
FactCurrencyRate "B"
ON A.DateKey = B.DateKey