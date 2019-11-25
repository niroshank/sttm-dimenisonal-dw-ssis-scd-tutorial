CREATE View [MDWT].[OrderDate] AS
SELECT [DateKey] AS OrderDateKey
      ,[FullDate] AS OrderFullDate
      ,[DateName] AS OrderDateName
      ,[DayOfWeek] AS OrderDayOfWeek
      ,[DayNameOfWeek] AS OrderDayNameOfWeek
      ,[DayOfMonth] AS OrderDayOfMonth
      ,[DayOfYear] AS OrderDayOfYear
      ,[WeekdayWeekend] AS OrderWeekdayWeekend
      ,[WeekOfYear] AS OrderWeekOfYear
      ,[MonthName] AS OrderMonthName
      ,[MonthOfYear] AS OrderMonthOfYear
      ,[IsLastDayOfMonth] AS OrderIsLastDayOfMonth
      ,[CalendarQuarter] AS OrderQtrOfYear
      ,[CalendarYear] AS OrderYear
      ,[CalendarYearMonth] AS OrderYearMonth
      ,[CalendarYearQtr] AS OrderYearQtr
      ,[FiscalMonthOfYear] AS OrderFiscalMonthOfYear
      ,[FiscalQuarter] AS OrderFiscalQtrOfYear
      ,[FiscalYear] AS OrderFiscalYear
      ,[FiscalYearMonth] AS OrderFiscalYearMonth
      ,[FiscalYearQtr] AS OrderFiscalYearQtr
  FROM [DimDate]
