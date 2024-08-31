RESTORE DATABASE AdventureWorks
FROM URL = 'https://dlsmmeta.blob.core.windows.net/bronze/AdventureWorksDW2022.bak'
WITH MOVE 'AdventureWorks_Data' TO 'AdventureWorks.mdf',
     MOVE 'AdventureWorks_Log' TO 'AdventureWorks.ldf';
