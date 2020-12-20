select
LOWER(CONCAT(FirstName,' ',LastName)) as Nombre_Apellido
,HireDate as Fecha_Ingreso
,DATEPART(YEAR,HireDate) as Anio
,DATEPART(MONTH,HireDate) as Mes
,DATEADD(YEAR,1, HireDate) as Primer_Aniversario
,DATEDIFF(DAY, HireDate,GETDATE()) as Antiguedad
from DimEmployee