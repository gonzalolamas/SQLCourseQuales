SELECT
EnglishProductName,
OrderDateKey,
TotalProductCost,
count(*) as Cantidad
FROM FactInternetSales FC
Join
DimProduct PD
ON FC.ProductKey = PD.ProductKey
WHERE OrderDateKey/100 = '201101'
group by EnglishProductName, OrderDateKey, TotalProductCost
HAVING count(*) < 300
