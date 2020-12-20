SELECT
avg(UnitPrice) as 'Precio Unitario'
From FactInternetSales
where OrderDateKey/100=201203
group by SalesOrderNumber