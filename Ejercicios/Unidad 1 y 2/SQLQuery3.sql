SELECT * FROM DimEmployee 
WHERE Status = 'Current'
AND EmployeeKey > 10
AND BirthDate BETWEEN '1987-01-01' AND '1990-01-01'