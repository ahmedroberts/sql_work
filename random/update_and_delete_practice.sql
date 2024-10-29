USE [college_db];
GO

SELECT TOP (100) [student_id]
      ,[name]
      ,[email]
      ,[age]
      ,[country]
  FROM [college_db].[dbo].[students]
GO


Select * FROM students WHERE student_id = 89

INSERT INTO [students]
VALUES
(51, 'Ahmed', 'abc@slslsl.com', 44, 'Algeria'),
(51, 'Beast', 'abc@slslsl.com', 49, 'Algeria'),
(51, 'Raikage', 'abc@slslsl.com', 24, 'Algeria'),
(51, 'Hokage', 'abc@slslsl.com', 34, 'Algeria'),
(51, 'Tsugikage', 'abc@slslsl.com', 54, 'Algeria')
;

Select 
	s.* 
FROM students s
WHERE 1 = 1
	and [name] = 'Beast'


-- DELETE [students] WHERE [age] > 45;