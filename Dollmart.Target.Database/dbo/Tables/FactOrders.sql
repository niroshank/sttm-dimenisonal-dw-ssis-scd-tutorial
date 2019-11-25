CREATE TABLE [dbo].[FactOrders] (
    [ProductKey]            INT           NOT NULL,
    [CustomerKey]           INT           NOT NULL,
    [DateKey]               INT           NOT NULL,
	[OrderNum]              INT           NOT NULL,
    [OrderDetailNum]   INT           NOT NULL,
    [OrderQty]              SMALLINT      NULL,
    [UnitPrice]             DECIMAL(13,2) NULL,
    [SalesAmount]           DECIMAL(13,2) NULL,
    CONSTRAINT [PK_dbo.FactOrders] PRIMARY KEY NONCLUSTERED ([OrderNum] ASC, [OrderDetailNum] ASC),
    CONSTRAINT [FK_dbo_FactOrders_CustomerKey] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
    CONSTRAINT [FK_dbo_FactOrders_DateKey] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_dbo_FactOrders_ProductKey] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
)