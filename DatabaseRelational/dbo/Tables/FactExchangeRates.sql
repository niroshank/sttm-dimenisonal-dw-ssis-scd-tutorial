CREATE TABLE [dbo].[FactExchangeRates] (
    [CurrencyKey]    SMALLINT   NOT NULL,
    [DateKey]        INT        NOT NULL,
    [InsertAuditKey] INT        NOT NULL,
    [UpdateAuditKey] INT        NOT NULL,
    [CloseRate]      FLOAT (53) NULL,
    [AvgRate]        FLOAT (53) NULL,
    CONSTRAINT [FK_dbo_FactExchangeRates_CurrencyKey] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey]),
    CONSTRAINT [FK_dbo_FactExchangeRates_DateKey] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_dbo_FactExchangeRates_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_FactExchangeRates_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExchangeRates', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Daily exchange rates to/from USD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Fact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Currency dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrencyKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from Sales.CurrencyRate.FromCurrencyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Date dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DateKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from Sales.CurrencyRate.CurrencyRateDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Audit dimension for row insertion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard auditing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Audit dim for row last updated', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard auditing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Market close (end of day) exchange rate from USD to local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CloseRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'CurrencyRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'EndOfDayRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'CloseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Average daily exchange rate from USD to local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AvgRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'CurrencyRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'AverageRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactExchangeRates', @level2type = N'COLUMN', @level2name = N'AvgRate';

