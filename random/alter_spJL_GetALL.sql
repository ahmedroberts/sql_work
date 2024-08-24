-- Ahmed O. Roberts
-- 2024.08.20

ALTER PROCEDURE zz.spJL_GetAll
AS
BEGIN
    SET NOCOUNT ON
    
    SELECT ID, [Name], [Alias]
    FROM zz.Superheroes
END
GO