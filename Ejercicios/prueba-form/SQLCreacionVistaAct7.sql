create view v__ventas_america_norte
as
SELECT
FI.CustomerKey,
DG.City,
DST.SalesTerritoryRegion,
DST.SalesTerritoryCountry,
DC.CurrencyName,
FI.OrderDateKey
from DimSalesTerritory as DST
LEFT JOIN FactInternetSales as FI
ON FI.SalesTerritoryKey = DST.SalesTerritoryKey
LEFT JOIN DimGeography AS DG
ON DG.SalesTerritoryKey = FI.SalesTerritoryKey
LEFT JOIN DimCurrency AS DC
ON DC.CurrencyKey = FI.CurrencyKey
WHERE DST.SalesTerritoryCountry = 'United States'
OR DST.SalesTerritoryCountry = 'Canada'
And FI.OrderDateKey > '20110101'
AND FI.OrderDateKey < '20140101'