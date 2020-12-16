SELECT * FROM DimDate "A"
LEFT JOIN 
FactCurrencyRate "B"
ON A.DateKey = B.DateKey
AND A.DateKey = 20141231