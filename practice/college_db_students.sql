SELECT TOP (1000) [student_id]
      ,[name]
      ,[email]
      ,[age]
      ,[country]
  FROM [college_db].[dbo].[students];
GO

Select
	count(1) AS TotalCount
From [students];
GO

Select 
	[name] as GetNames
From [students] s
Where 1 = 1
Group BY s.[name];