SELECT TOP (1000) 
	UPPER(
	SUBSTRING(
		TRIM(FirstName), 1, 1
		)) AS Part_A
	,LOWER(
		TRIM(FirstName)
		)  AS Part_B
	,LEN(FirstName) AS Part_C
	,CONCAT(FirstName, LastName) AS FullName
	,[EmployeeID]
      ,[LastName]
      ,[FirstName]
      ,[BirthDate]
      ,[HireDate]
      ,[Address]
      ,[City]
      ,[PostalCode]
      ,[HomePhone]
      ,[Extension]
  FROM [Northwind].[dbo].[EmployeesUppercase]
