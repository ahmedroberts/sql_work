SELECT TOP (1000)
    [ID]
    , [Name]
    , [Alias]
    , [Powers]
    , [Origin]
    , [Team]
FROM [zz].[Superheroes]
GO

CREATE PROCEDURE zz.spJL_GetAll
AS
BEGIN
    SELECT ID, [Name], [Alias]
    FROM zz.Superheroes
END
GO