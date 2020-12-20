select a.LastName,a.BirthDate
from DimCustomer as a
where not exists
(Select *
	from ProspectiveBuyer as b
		where (a.LastName = b.LastName) And (a.BirthDate = b.BirthDate)
)