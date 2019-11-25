CREATE TABLE [dbo].[DimOrderInfo] (
    [OrderInfoKey]    SMALLINT      IDENTITY (1, 1) NOT NULL,
    [BKSalesReasonID] SMALLINT      NOT NULL,
    [Channel]         NCHAR (8)     NULL,
    [SalesReason]     NVARCHAR (30) NULL,
    [SalesReasonType] NCHAR (10)    NULL,
    [InsertAuditKey]  INT           NOT NULL,
    [UpdateAuditKey]  INT           NOT NULL,
    CONSTRAINT [PK_dbo.DimOrderInfo] PRIMARY KEY CLUSTERED ([OrderInfoKey] ASC),
    CONSTRAINT [FK_dbo_DimOrderInfo_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimOrderInfo_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderInfo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Channel and sales reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderInfoKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3, 4…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales reason ID from source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesReasonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Convert to char; left-pad with zero. R for reseller row.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SalesReasonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'BKSalesReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales channel (Reseller or Internet)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Channel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Internet'' for real sales reasons. ''Reseller'' for reseller row.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Reseller, Internet', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'Channel';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Reason for the sale, as reported by the customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'''Reseller'' for reseller row.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReason';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Type of sales reason (eg Marketing Promotion)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesReasonType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'''Reseller'' for reseller row', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Marketing, Promotion, Other', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ReasonType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'SalesReasonType';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimOrderInfo', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

