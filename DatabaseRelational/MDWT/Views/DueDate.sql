CREATE View [MDWT].[DueDate] AS
SELECT [DateKey] AS DueDateKey
      ,[FullDate] AS DueFullDate
      ,[DateName] AS DueDateName
      ,[DayOfWeek] AS DueDayOfWeek
      ,[DayNameOfWeek] AS DueDayNameOfWeek
      ,[DayOfMonth] AS DueDayOfMonth
      ,[DayOfYear] AS DueDayOfYear
      ,[WeekdayWeekend] AS DueWeekdayWeekend
      ,[WeekOfYear] AS DueWeekOfYear
      ,[MonthName] AS DueMonthName
      ,[MonthOfYear] AS DueMonthOfYear
      ,[IsLastDayOfMonth] AS DueIsLastDayOfMonth
      ,[CalendarQuarter] AS DueQtrOfYear
      ,[CalendarYear] AS DueYear
      ,[CalendarYearMonth] AS DueYearMonth
      ,[CalendarYearQtr] AS DueYearQtr
      ,[FiscalMonthOfYear] AS DueFiscalMonthOfYear
      ,[FiscalQuarter] AS DueFiscalQtrOfYear
      ,[FiscalYear] AS DueFiscalYear
      ,[FiscalYearMonth] AS DueFiscalYearMonth
      ,[FiscalYearQtr] AS DueFiscalYearQtr
  FROM [DimDate]
