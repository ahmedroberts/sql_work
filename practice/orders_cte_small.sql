
-- A Simple Expression
Select sod.[SalesOrderID]
        , sh.[CustomerID]
        , [OrderQty]
        , [ProductID]
        , [UnitPrice]
        , [LineTotal]
        , sod.[ModifiedDate]
        , YEAR(sod.ModifiedDate) AS modYear
FROM SalesLT.SalesOrderDetail AS sod
    INNER JOIN SalesLT.SalesOrderHeader sh
    ON sod.SalesOrderID = sh.SalesOrderID