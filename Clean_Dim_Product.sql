-- Clean Dim_product table
SELECT 
  p.[ProductKey], 
  p.ProductAlternateKey AS ProductItemCode, 
  p.EnglishProductName AS [ProductName], 
  ps.EnglishProductSubcategoryName AS [sub_Category], 
  pc.FrenchProductCategoryName AS [Product_category], 
  p.Color AS [Product_Color], 
  p.Size AS [Product_Size], 
  p.ProductLine, 
  p.ModelName, 
  p.EnglishDescription AS [Product_Description], 
  ISNULL (p.Status,'Outdated') AS [Product_Status] --Replacing null values 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS P 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey
