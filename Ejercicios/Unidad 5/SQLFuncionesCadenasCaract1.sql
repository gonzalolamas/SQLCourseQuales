select
UPPER(CONCAT(FirstName,' ',LastName)) as Nombre_Apellido
,REPLACE(Title,'a','@') as Title
,CAST(VacationHours as decimal(18,2)) as VacationHours
,LTRIM(EmergencyContactName) as EmergencyContactName
from DimEmployee