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
)