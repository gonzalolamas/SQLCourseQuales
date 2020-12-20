CREATE PROCEDURE Reporte_Monto_Cantidad_Ventas
AS
Begin
	select *
	from Monto_Cantidad_Ventas_View as v
	order by OrderDateKey;
End
;
go