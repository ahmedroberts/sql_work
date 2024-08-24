-- Experimentint with Common Table Expressions
/**
WITH DepartmentCTE AS (
    SELECT 
        DepartmentID,
        AVG(Salary) AS AvgSalary
    FROM 
        Employees
    GROUP BY 
        DepartmentID
)
SELECT 
    d.DepartmentName,
    cte.AvgSalary
FROM 
    DepartmentCTE cte
JOIN 
    Departments d ON cte.DepartmentID = d.DepartmentID;
**/
WITH SalesOrderCTE AS (
    SELECT 
        SalesOrderID,
        AVG(UnitPrice) AS AvgUnitPrice
    FROM 
        SalesLT.SalesOrderDetail
    GROUP BY 
        SalesOrderID
)
SELECT 
    ,
    cte.AvgUnitPrice
FROM 
    SalesOrderCTE cte
JOIN 
    Departments s ON cte.DepartmentID = d.DepartmentID;