SELECT SalesOrderNumber,
	MAX(UnitPrice) as 'Precio Unitario'
FROM FactInternetSales
WHERE OrderDateKey/100 = 201102
group by SalesOrderNumber