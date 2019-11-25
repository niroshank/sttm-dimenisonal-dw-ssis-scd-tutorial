--create dimensional tables
CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]            INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]             INT            NOT NULL,
	[CustomerName]			 NVARCHAR (100) NOT NULL,
    [Gender]                 NCHAR (7)      NOT NULL,
    [Address]			     NVARCHAR (100) NOT NULL,
    [City]                   NVARCHAR (100) NOT NULL,
    [State]					 NCHAR (3)      NOT NULL,
    [Country]                NVARCHAR (50)  NOT NULL,
    --[FirstOrderDate]         DATETIME       NOT NULL,
    --[LastOrderDate]          DATETIME       NOT NULL,
    --[RowIsCurrent]           NCHAR (1)      NOT NULL,
    --[RowStartDate]           DATE           NOT NULL,
    --[RowEndDate]             DATE           DEFAULT ('12/31/9999') NOT NULL,
    --[RowChangeReason]        NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_dbo.DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);
GO

CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]              INT            IDENTITY (1, 1) NOT NULL,
    [ProductSKU]              INT            NOT NULL,
    [ProductDescription]      NVARCHAR (50)  NOT NULL,
    [ProductCategoryID]       INT            NOT NULL,
    [ProductCategory]         NVARCHAR (50)  NOT NULL,
	[ProductTypeID]           INT            DEFAULT ((-1)) NOT NULL,
    [ProductType]             NVARCHAR (50)  NOT NULL,
    [UnitOfMeasurement]       NCHAR (20)      DEFAULT ('N/A') NOT NULL,
	--[IsFinishedGood]          NVARCHAR (20)  DEFAULT ('Not known') NOT NULL,
    --[SellStartDate]           DATE           DEFAULT ('12/31/1899') NOT NULL,
    --[SellEndDate]             DATE           DEFAULT ('12/31/9999') NOT NULL,
    --[ProductCurrentStatus]    NCHAR (12)     NOT NULL,
    --[InsertAuditKey]          INT            NOT NULL,
    --[UpdateAuditKey]          INT            NOT NULL,
    CONSTRAINT [PK_dbo.DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);
GO

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
);
GO

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
);
GO




