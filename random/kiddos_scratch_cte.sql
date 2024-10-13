--SELECT TOP (1000) [kidID]
--      ,[firstName]
--      ,[middleName]
--      ,[lastName]
--      ,[birthdate]
--  FROM [SuperTestData].[dbo].[Offspring];
--GO

PRINT 'Raikage, Does this really just Print?';

DECLARE @date datetime2(3) = SYSDATETIME();

;WITH Kiddos (Kid, Bday, GovMid, DateCreated)
AS
( Select firstName, birthdate, middleName, @date
From dbo.Offspring)
Select Kid, Bday, DateCreated, GovMid From Kiddos;