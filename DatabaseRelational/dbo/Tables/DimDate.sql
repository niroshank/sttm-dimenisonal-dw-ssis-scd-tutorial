CREATE TABLE [dbo].[DimDate] (
    [DateKey]           INT        NOT NULL,
    [FullDate]          DATE       NULL,
    [DateName]          NCHAR (11) NOT NULL,
    [DayOfWeek]         TINYINT    NOT NULL,
    [DayNameOfWeek]     NCHAR (10) NOT NULL,
    [DayOfMonth]        TINYINT    NOT NULL,
    [DayOfYear]         SMALLINT   NOT NULL,
    [WeekdayWeekend]    NCHAR (10) NOT NULL,
    [WeekOfYear]        TINYINT    NOT NULL,
    [MonthName]         NCHAR (10) NOT NULL,
    [MonthOfYear]       TINYINT    NOT NULL,
    [IsLastDayOfMonth]  NCHAR (1)  NOT NULL,
    [CalendarQuarter]   TINYINT    NOT NULL,
    [CalendarYear]      SMALLINT   NOT NULL,
    [CalendarYearMonth] NCHAR (10) NOT NULL,
    [CalendarYearQtr]   NCHAR (10) NOT NULL,
    [FiscalMonthOfYear] TINYINT    NOT NULL,
    [FiscalQuarter]     TINYINT    NOT NULL,
    [FiscalYear]        INT        NOT NULL,
    [FiscalYearMonth]   NCHAR (10) NOT NULL,
    [FiscalYearQtr]     NCHAR (10) NOT NULL,
    [InsertAuditKey]    INT        NOT NULL,
    [UpdateAuditKey]    INT        NOT NULL,
    CONSTRAINT [PK_dbo.DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC),
    CONSTRAINT [FK_dbo_DimDate_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimDate_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Date dimension contains one row for every day, beginning at 1/1/2005. There may also be rows for "hasn''t happened yet."', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DateKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'In the form: yyyymmdd', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'20041123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Full date as a SQL date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FullDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'38314', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'String expression of the full date, eg 2010/03/22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DateName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'23-Nov-2004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DateName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of the day of week; Sunday = 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DayOfWeek', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1..7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Day name of week, eg Monday', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DayNameOfWeek', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Sunday', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of the day in the month', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DayOfMonth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1..31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of the day in the year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DayOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1..365', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is today a weekday or a weekend, {Weekday, Weekend}', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'WeekdayWeekend', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Weekday, Weekend', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekdayWeekend';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Week of year, 1..53', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'WeekOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1..52 or 53', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Month name, eg January', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MonthName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'November', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Month of year, 1..12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MonthOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, …, 12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is this the last day of the calendar month? {Y, N}', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Day', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsLastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar quarter, 1..4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CalendarQtrOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3, 4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar year, eg 2010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CalendarYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'2004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar year and month, eg 2010-02', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CalendarYearMonth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'2004-01', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar year and quarter, eg 2010Q2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Calendar', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CalendarYearQtr', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'2004Q1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'CalendarYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal month of year (1..12). FY starts in July', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Fiscal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FiscalMonthOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, …, 12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal quarter, 1..4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Fiscal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FiscalQtrOfYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3, 4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal year. Fiscal year begins in July.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Fiscal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FiscalYear', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'2004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal year and month, eg FY2010-07', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Fiscal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FiscalYearMonth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'FY2004-01', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal year and quarter, eg FY2010Q3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Fiscal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FiscalYearQtr', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'FY2004Q1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearQtr';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

