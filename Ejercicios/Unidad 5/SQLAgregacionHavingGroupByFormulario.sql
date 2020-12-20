select EnglishProductName,
count (DimProduct.ProductKey) as'CANTIDAD'
from DimProduct
join FactInternetSales
on DimProduct.ProductKey = FactInternetSales.ProductKey 
where
FactInternetSales.OrderDateKey between '20131201' and '20131231'
group by DimProduct.EnglishProductName
having count(DimProduct.ProductKey) > 100