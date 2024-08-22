-- use AdvetureWorksLW
-- Functions and Expressions
-- 8/21/2024

SELECT
    OrderDate,
    ShipDate,
    DATEADD(Year, -1, OrderDate)    AS PreviousYear,
    DATEADD(Day, 3, OrderDate)      AS DueDate,
    DATEDIFF(Day, OrderDate, ShipDate) AS DaysToShip,
    DATEDIFF(Month, OrderDate, GETDATE())   AS MonthsSinceShip
    
FROM [SalesLT].[SalesOrderHeader]
ORDER BY DaysToShip

/*
SELECT
    GETDATE()                   As SystemTimeUTC,
    DATEPART(YEAR, GETDATE())   As DatePartYear,
    YEAR(GETDATE())             AS SystemYear2,
    Month(GETDATE())            As SystemMonth,
    FirstName
FROM [SalesLT].[Customer]
*/

/*
SELECT
    FirstName,
    REPLACE(FirstName, 'a', '*')    AS ReplaceA,
    LEN(FirstName)                  AS LengthOfName
FROM [SalesLT].[Customer]
*/

/*
SELECT
    FirstName + ' ' + LastName  As ' * My Customer <<',
    LEFT(FirstName, 3)          As First3,
    RiGHT(FirstName, 3)         As Last3,
    Upper(FirstName)            As UpperFirst,
    LOWER(FirstName)            As LowerFirst
FROM [SalesLT].[Customer]
*/

/*
SELECT TOP(9)
    *
FROM
    [SalesLT].[SalesOrderDetail];

-- Basic Calculations

SELECT Top(9)
    UnitPrice,
    UnitPrice + 10 As Plus10,
    UnitPrice * 2  As Doubled,
    OrderQty,
    UnitPrice * OrderQty As LineTotalCals
FROM SalesLT.SalesOrderDetail

*/