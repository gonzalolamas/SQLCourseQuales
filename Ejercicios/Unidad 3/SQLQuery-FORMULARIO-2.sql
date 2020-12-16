SELECT *FROM DimProductCategory 
INNER JOIN DimProductSubcategory 
on EnglishProductCategoryName = EnglishProductCategoryName
AND EnglishProductCategoryName= 'Bikes'
