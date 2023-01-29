-- Cleaning Dim_Interntsales table
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 --Making sure to extract the last 2 years of data only
ORDER BY 
  OrderDateKey
