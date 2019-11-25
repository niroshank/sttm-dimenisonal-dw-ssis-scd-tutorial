CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]              INT            IDENTITY (1, 1) NOT NULL,
    [ProductSKU]              INT            NOT NULL,
    [ProductName]             NVARCHAR (50)  NOT NULL,
    [ProductDescr]            NVARCHAR (50)  NOT NULL,
    [ProductModelID]          INT            DEFAULT ((-1)) NOT NULL,
    [Model]                   NVARCHAR (50)  NOT NULL,
    [ProductSubcategoryID]    INT            DEFAULT ((-1)) NOT NULL,
    [ProductSubcategory]      NVARCHAR (50)  NOT NULL,
    [ProductCategoryID]       INT            NOT NULL,
    [ProductCategory]         NVARCHAR (50)  NOT NULL,
    [ProductLine]             NCHAR (10)     DEFAULT ('Bike part') NOT NULL,
    [Color]                   NVARCHAR (20)  DEFAULT ('No color') NOT NULL,
    [Class]                   NVARCHAR (20)  DEFAULT ('No product class') NOT NULL,
    [Style]                   NVARCHAR (20)  DEFAULT ('No product style') NOT NULL,
    [IsFinishedGood]          NVARCHAR (20)  DEFAULT ('Not known') NOT NULL,
    [Size]                    NVARCHAR (20)  DEFAULT ('No size') NOT NULL,
    [SizeUnitOfMeasureCode]   NCHAR (3)      DEFAULT ('N/A') NOT NULL,
    [Weight]                  DECIMAL (8, 2) NOT NULL,
    [WeightUnitOfMeasureCode] NCHAR (5)      DEFAULT ('N/A') NOT NULL,
    [DaysToManufacture]       INT            DEFAULT ((0)) NOT NULL,
    [StandardCost]            MONEY          NOT NULL,
    [ListPrice]               MONEY          DEFAULT ((0)) NOT NULL,
    [SafetyStockLevel]        SMALLINT       DEFAULT ((0)) NOT NULL,
    [ReorderPoint]            SMALLINT       DEFAULT ((0)) NOT NULL,
    [SellStartDate]           DATE           DEFAULT ('12/31/1899') NOT NULL,
    [SellEndDate]             DATE           DEFAULT ('12/31/9999') NOT NULL,
    [ProductCurrentStatus]    NCHAR (12)     NOT NULL,
    [InsertAuditKey]          INT            NOT NULL,
    [UpdateAuditKey]          INT            NOT NULL,
    CONSTRAINT [PK_dbo.DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC),
    CONSTRAINT [FK_dbo_DimProduct_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimProduct_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Information about the products we sell', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product SKU, also known as Product ID or Product Number. Natural key from source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductSKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ProductID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSKU';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product description (same as name at the moment)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductDescr', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Populate with the product name for now', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductDescr';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product model ID from source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductModelID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'NULL to -1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ProductModelID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Model name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Model', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on Product.ProductModelID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'ProductModel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Model';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product subcategory ID from the source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductSubcategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'NULL to -1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ProductSubcategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product subcategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductSubcategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on Product. ProductSubcategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'ProductSubcategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product category ID from the source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductCategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ProductCategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'ProductSubcategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductCategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on ProductCategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'ProductCategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product line', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Product categories', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductLine', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode T=Touring, M=Mountain, R=Road, S=Accessory, NULL=Bike Part', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Mountain, Road, Touring', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(2)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ProductLine', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Replace NULL with ''No color''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Silver, Red, Multi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(15)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Color', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product class (H/M/L)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Class', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode H/M/L/NULL as High/Medium/Low/No Pclass', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'High, Medium, Low', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(2)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Class', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product style (Men/Women/Unisex)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Style', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode M/W/U/NULL as Men/Women/Unisex/No Pstyle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Men, Women, Unisex', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(2)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Style', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is the product classified as a finished good?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsFinishedGood', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode 1/0 to Finished Good/Unfinished good', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Finished Good, Unfinished good', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'bit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'FinishedGoodsFlag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'IsFinishedGood';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Item size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode L/M/S/NULL to Large/Medium/Small/No Size; else keep Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Large, Medium, Small, 46, 70', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(5)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Size', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'How is size measured', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SizeUnitOfMeasureCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode NULL to N/A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'CM, N/A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(3)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SizeUnitMeasureCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Item weight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Weight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'decimal(8,2)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Weight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'How is weight measured?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Physical chars', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'WeightUnitOfMeasureCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode G=gram, LB=pound, NULL=N/A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'gram, pound, N/A', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(3)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'WeightUnitMeasureCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitOfMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Average days to manufacture', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DaysToManufacture', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3, 4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'DaysToManufacture', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current standard cost of production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'StandardCost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'2171.29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'StandardCost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current suggested list price', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ListPrice', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'3578.27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'money', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ListPrice', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'For AW warehouse, comfortable level of inventory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SafetyStockLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1000', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'smallint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SafetyStockLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'For AW warehouse, reorder when stock falls below this point', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ReorderPoint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'smallint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'ReorderPoint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date product first available', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SellStartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SellStartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date product last available', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SellEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SellEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Product current status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'SKU', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ProductCurrentStatus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'If DiscontinuedDate <> NULL then ''Discontinued'' ELSE ''Current''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Current, Discontinued', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'DiscontinuedDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Production', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductCurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

