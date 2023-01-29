-- Cleaning Dim_Date Table By selecting needed columns and renaming it
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS Weekno, 
  [EnglishMonthName] AS Month,
  LEFT([EnglishMonthName],3) AS Monthshhort,
  [MonthNumberOfYear] As Monthno, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE
  [CalendarYear] >= 2020