CREATE TABLE [dbo].[DimCurrency] (
    [CurrencyKey]     SMALLINT      IDENTITY (1, 1) NOT NULL,
    [BKCurrencyCode]  NCHAR (3)     NOT NULL,
    [Currency]        NVARCHAR (50) DEFAULT ('Unknown') NOT NULL,
    [IsCurrencyInUse] NCHAR (1)     DEFAULT ('N') NOT NULL,
    [InsertAuditKey]  INT           NOT NULL,
    [UpdateAuditKey]  INT           NOT NULL,
    CONSTRAINT [PK_dbo.DimCurrency] PRIMARY KEY CLUSTERED ([CurrencyKey] ASC),
    CONSTRAINT [FK_dbo_DimCurrency_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimCurrency_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Dimension table that itemizes different currencies', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrencyKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Currency Code from trxn system, eg USD, EUR', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrencyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(3)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'CurrencyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'BKCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Currency name, eg US Dollar, EURO', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Dollar, Euro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is this currency currently in use in the system?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'IsCurrencyInUse';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsCurrencyInUse', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'IsCurrencyInUse';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'IsCurrencyInUse';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'IsCurrencyInUse';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'IsCurrencyInUse';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

