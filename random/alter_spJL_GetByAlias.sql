ALTER PROC zz.spJL_GetByAlias
    @Alias VARCHAR(255)
AS
BEGIN
    SELECT id, [Name], Alias
    FROM zz.Superheroes
    WHERE Alias = @Alias
END