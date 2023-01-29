--Cleaning DIM_customer table
SELECT 
  c.CustomerKey AS Customerkey, 
  c.firstname AS [FirstName], 
  c.lastname AS [LastName], 
  c.firstname + ' ' + c.lastname AS [Full_name], 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase, 
  g.City AS [CustomerCity] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  Customerkey ASC
