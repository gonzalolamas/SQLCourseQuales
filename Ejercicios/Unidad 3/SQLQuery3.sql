SELECT * FROM DimProduct as "A"
FULL JOIN
DimProductSubcategory as "B"
on A.ProductSubcategoryKey = B.ProductSubcategoryKey
AND ListPrice IS NOT NULL