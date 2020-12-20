SELECT SalesOrderNumber,
	   MIN(UnitPrice) as 'Precio Unitario'
FROM FactInternetSales
group by SalesOrderNumber