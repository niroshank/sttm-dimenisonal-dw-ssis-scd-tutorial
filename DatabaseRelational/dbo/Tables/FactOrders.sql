CREATE TABLE [dbo].[FactOrders] (
    [ProductKey]            INT           NOT NULL,
    [CustomerKey]           INT           NOT NULL,
    [OrderDateKey]          INT           NOT NULL,
    [DueDateKey]            INT           NOT NULL,
    [OrderInfoKey]          SMALLINT      NOT NULL,
    [PromotionKey]          SMALLINT      NOT NULL,
    [CurrencyKey]           SMALLINT      NOT NULL,
    [SalesRepKey]           INT           NOT NULL,
    [InsertAuditKey]        INT           DEFAULT ((-1)) NOT NULL,
    [UpdateAuditKey]        INT           DEFAULT ((-1)) NOT NULL,
    [SalesOrderNum]         INT           NOT NULL,
    [SalesOrderLineNum]     INT           NOT NULL,
    [SalesOrderRevisionNum] TINYINT       NOT NULL,
    [OrderQty]              SMALLINT      NULL,
    [UnitPriceUSD]          MONEY         NULL,
    [ExtendedAmtUSD]        MONEY         NULL,
    [UnitPriceDiscountPct]  FLOAT (53)    NULL,
    [DiscountUSD]           MONEY         NULL,
    [ProductStdCostUSD]     MONEY         NULL,
    [TotalProductCostUSD]   MONEY         NULL,
    [SalesAmtUSD]           MONEY         NULL,
    [SalesAmtLocal]         MONEY         NULL,
    [TaxUSD]                MONEY         NULL,
    [TaxLocal]              MONEY         NULL,
    [FreightUSD]            MONEY         NULL,
    [FreightLocal]          MONEY         NULL,
    [CustomerPONum]         NVARCHAR (25) DEFAULT ('Unknown PO num') NOT NULL,
    CONSTRAINT [PK_dbo.FactOrders] PRIMARY KEY NONCLUSTERED ([SalesOrderNum] ASC, [SalesOrderLineNum] ASC, [SalesOrderRevisionNum] ASC),
    CONSTRAINT [FK_dbo_FactOrders_CurrencyKey] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey]),
    CONSTRAINT [FK_dbo_FactOrders_CustomerKey] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
    CONSTRAINT [FK_dbo_FactOrders_DueDateKey] FOREIGN KEY ([DueDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_dbo_FactOrders_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_FactOrders_OrderDateKey] FOREIGN KEY ([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_dbo_FactOrders_OrderInfoKey] FOREIGN KEY ([OrderInfoKey]) REFERENCES [dbo].[DimOrderInfo] ([OrderInfoKey]),
    CONSTRAINT [FK_dbo_FactOrders_ProductKey] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_dbo_FactOrders_PromotionKey] FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey]),
    CONSTRAINT [FK_dbo_FactOrders_SalesRepKey] FOREIGN KEY ([SalesRepKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_dbo_FactOrders_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Orders', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Order transactions at the order line item level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Fact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Product dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderDetail.ProductID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Customer dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeader.CustomerID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Date dim for the date the order was placed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderDateKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeader.OrderDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to the date the order is expected to be filled (at the time the order was placed)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DueDateKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeader.DueDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DueDateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to OrderInfo dimension describing channel and sales reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderInfoKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeaderSalesReason.SalesReasonID (first reason)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderInfoKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Promotion dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderDetail.SpecialOfferID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Currency dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrencyKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeader.CurrencyRateID to Sales.CurrencyRate; pick up FromCurrencyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CurrencyKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to the salesperson role of the employee dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesRepKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Key lookup from SalesOrderHeader.SalesPersonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesRepKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Audit dimension for row insertion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard auditing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Key to Audit dim for row last updated', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard auditing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'ETL Process', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales order number from trxn system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesOrderNum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SalesOrderID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderHeader', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderNum';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales order line number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesOrderLineNum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'tinyint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'RevisionNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderHeader', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderLineNum';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales order revision number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesOrderRevisionNum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'tinyint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'LineNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderDetail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesOrderRevisionNum';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Quantity of this item in this order', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Counts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'OrderQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderDetail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Standard price for this item', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UnitPriceUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Price * Quantity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ExtendedAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ExtendedAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExtendedAmtUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ExtendedAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'UnitPriceUSD * OrderQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ExtendedAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ExtendedAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Discount % applied to this line item in this order, if any', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Percentages', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UnitPriceDiscountPct', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Convert currency to float', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'UnitPriceDiscount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderDetail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Discount in US Dollars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DiscountUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'UnitPriceDiscountPct * ExtendedAmtUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'UnitPriceDiscount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderDetail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'DiscountUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product''s cost of goods sold', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductStdCostUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'StandardCost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'DW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'DimProduct', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'ProductStdCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Std Cost * Quantity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TotalProductCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TotalProductCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TotalProductCostUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TotalProductCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'ProductStdCostUSD * OrderQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TotalProductCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TotalProductCostUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'ExtendedAmt adjusted for discounts (LineTotal from the trxn system)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesAmtUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'ExtendedAmtUSD - DiscountUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales Amount, in local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Local amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SalesAmtLocal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtLocal';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Convert SalesAmtUSD to local currency based on lookup to DimCurrency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'SalesAmtLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Tax Amount, prorated across items in the order', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TaxUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Allocate TaxAmt to line item level based on this item''s $ contribution to the total sale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'TaxAmt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderDetail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Tax Amount, in local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Local amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TaxLocal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'ConvertTaxUSD to local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'TaxAmt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderHeader', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'TaxLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Freight Amount, prorated across items in the order', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'USD amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FreightUSD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightUSD';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Allocate Freight to line item level based on this item''s $ contribution to the total sale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightUSD';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Freight Amount, in local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Local amounts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FreightLocal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Convert FreightUSD to local currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Freight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderHeader', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'FreightLocal';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Purchase Order Number from the transaction system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerPONum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'PurchaseOrderNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesOrderHeader', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactOrders', @level2type = N'COLUMN', @level2name = N'CustomerPONum';

