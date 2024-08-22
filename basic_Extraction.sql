-- Ahmed Roberts

SELECT Top(99)
    LastName + ', ' + FirstName AS FullLFName,
    Replace(FirstName, 'a', '*') AS ReplaceA,
    Len(FirstName) AS LengthOfName,
    GETDATE() AS CurrTime,
    FirstName + ' ' + LastName AS FullFLName

From SalesLT.Customer
ORDER BY LastName, FirstName