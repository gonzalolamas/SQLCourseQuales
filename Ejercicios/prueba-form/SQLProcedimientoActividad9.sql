create procedure SP_genera_region
@pais as varchar
as
begin
insert into Dim_Region (Salesterritorykey, Geographykey,[Ciudad/provincia],País)
select DST.SalesTerritoryKey, DG.GeographyKey,
City + '/' + StateProvinceName as 'Ciudad/Provincia',
DST.SalesTerritoryCountry
from DimSalesTerritory as DST
left join DimGeography as DG
on DST.SalesTerritoryKey = DG.SalesTerritoryKey
where DST.SalesTerritoryCountry = @pais
delete from Dim_Region
where Geographykey in (1,2,3)
end