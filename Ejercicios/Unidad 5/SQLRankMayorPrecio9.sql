select
EnglishProductName,
OrderDateKey,
Sum(TotalProductCost) as Total,
rank() over (partition by EnglishProductName order by OrderDateKey desc) as 'Ranking'
From FactInternetSales FIS
join
DimProduct DP
on FIS.ProductKey = DP.ProductKey
where OrderDateKey/100 = 201101
group by EnglishProductName, OrderDateKey