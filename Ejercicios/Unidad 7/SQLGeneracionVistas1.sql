CREATE VIEW Monto_Cantidad_Ventas_View as
SELECT
EnglishProductName,
OrderDateKey,
sum(TotalProductCost) as Total,
count(*) as Cantidad
from FactInternetSales fc
join
DimProduct pd
on fc.ProductKey = pd.ProductKey
where OrderDateKey/100 = MONTH(GETDATE())
group by EnglishProductName,OrderDateKey
having count(*) < 300;
Go