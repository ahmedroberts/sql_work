-- Execute an parameterized Stored Procedure
EXEC zz.spJL_GetByAlias @Alias = 'Batman'
-- Execute an parameterized Stored Procedure
-- Same because it hass all the variables in order, in this case just one
EXEC zz.spJL_GetByAlias 'Batman'