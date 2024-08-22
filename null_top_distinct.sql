-- Ahmed O. Roberts
--- NULL, TOP, DISTINCT

SELECT DISTINCT Color From SalesLT.Product
GO


SELECT TOP 10 *

FROM SalesLT.SalesOrderDetail



/*
SELECT DISTINCT TOP(10) percent
    FirstName, MiddleName, LastName,
    FirstName + ' ' + MiddleName + ' ' + LastName AS WholeGovName,
    FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName AS 'ISNULL WholeGovName', 
    FirstName + ' ' + COALESCE(MiddleName, Suffix, Phone, '') + ' ' + LastName AS 'COALESCE WholeGovName' 
FROM [SalesLT].[Customer]
Order By LastName, FirstName
*/