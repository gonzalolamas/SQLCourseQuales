SELECT
EnglishProductName,
OrderDateKey,
sum(TotalProductCost) as Total,
count(*) as Cantidad
From FactInternetSales FIS
join
DimProduct DP
On DP.ProductKey = FIS.ProductKey
where OrderDateKey/100=201101
group by EnglishProductName, OrderDateKey
Having count(*) < 300