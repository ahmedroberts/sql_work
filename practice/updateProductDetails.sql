SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[ThumbNailPhoto]
      ,[ThumbnailPhotoFileName]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [SalesLT].[Product]
  ORDER By ProductID DESC

-----------------------------------

update SalesLt.Product
set Color = 'Azure',
    [Size] = '44',
    SellEndDate = GETDATE(),
    DiscontinuedDate = DATEADD(Year, -1, GetDate())

Where ProductID = 998

-----------------------------------
update SalesLt.Product
set Color = 'Azure',
    [Size] = '48',
    SellEndDate = GETDATE(),
    DiscontinuedDate = DATEADD(Month, -1, GetDate())

Where ProductID = 997
