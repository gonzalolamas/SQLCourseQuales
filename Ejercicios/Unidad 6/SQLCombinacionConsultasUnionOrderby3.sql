select
	CustomerKey
	from FactInternetSales
union
select
	CustomerKey
	from DimCustomer
	order by CustomerKey;