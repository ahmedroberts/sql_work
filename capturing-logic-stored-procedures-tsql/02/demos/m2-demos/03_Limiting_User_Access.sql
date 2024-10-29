-- Run this script to follow along with the demo.
USE [WiredBrainCoffee];
GO

CREATE USER [ReportingSales] WITHOUT LOGIN;
GO

GRANT EXECUTE ON [Sales].[GenerateSalesReport] TO [ReportingSales];
GO


EXECUTE AS USER = 'ReportingSales';
UPDATE [Sales].[SalesOrder] SET [SalesAmount] = NULL;
REVERT;
GO



EXECUTE AS USER = 'ReportingSales';
SELECT * FROM [Sales].[SalesOrder];
REVERT;
GO



EXECUTE AS USER = 'ReportingSales';
EXECUTE [Sales].[GenerateSalesReport];
REVERT;
GO



-- Clean up your database user.
DROP USER [ReportingSales];
GO