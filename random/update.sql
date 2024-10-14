SELECT TOP (1000) [ProductID]
      ,[ProductName]
      ,[Price]
      ,[ProductDescription]
  FROM [SuperTestData].[dbo].[Products]
GO


Update Products
SET ProductID = 99
Where 1 = 1
	and ProductID = '3000';

-------------------------------------------------------

