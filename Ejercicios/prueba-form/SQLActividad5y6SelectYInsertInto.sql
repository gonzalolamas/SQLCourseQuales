SELECT DST.SalesTerritoryKey, DG.GeographyKey,
City + '/' + StateProvinceName as 'Ciudad/Provincia',
DST.SalesTerritoryCountry
FROM DimSalesTerritory as DST
LEFT JOIN DimGeography as DG
ON DST.SalesTerritoryKey = DG.SalesTerritoryKey

insert into Dim_Region (Salesterritorykey,Geographykey,[Ciudad/provincia],País)
select DST.SalesTerritoryKey, DG.GeographyKey, City + '/' + StateProvinceName as 'Ciudad/Provincia',
DST.SalesTerritoryCountry
from DimSalesTerritory as DST
left join DimGeography as DG
on DST.SalesTerritoryKey = DG.SalesTerritoryKey;