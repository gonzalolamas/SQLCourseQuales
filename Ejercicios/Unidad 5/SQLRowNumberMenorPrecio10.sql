select
EnglishProductName,
OrderDateKey,
TotalProductCost,
row_number() over (partition by EnglishProductName order by TotalProductCost desc) as 'Ranking'
From FactInternetSales FIS
join
DimProduct DP
on FIS.ProductKey = DP.ProductKey
where OrderDateKey/100 = 201101
group by EnglishProductName, OrderDateKey,TotalProductCost