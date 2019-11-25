CREATE TABLE [dbo].[DimDate] (
    [DateKey]           INT        NOT NULL,
    [FullDate]          DATE       NULL,
    [DateName]          NCHAR (11) NOT NULL,
    [DayNameOfWeek]     NCHAR (10) NOT NULL,
    [DayOfMonth]        TINYINT    NOT NULL,
    [WeekdayWeekend]    NCHAR (10) NOT NULL,
    [MonthName]         NCHAR (10) NOT NULL,
    [CalendarYear]      SMALLINT   NOT NULL,
    CONSTRAINT [PK_dbo.DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC)
)