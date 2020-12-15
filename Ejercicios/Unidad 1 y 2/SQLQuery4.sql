SELECT * FROM DimEmployee
WHERE FirstName NOT IN ('Alejandro','Simon','Fred')
AND ParentEmployeeKey = 112