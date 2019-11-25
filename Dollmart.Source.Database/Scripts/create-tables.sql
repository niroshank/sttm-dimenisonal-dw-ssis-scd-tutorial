-- ============================================= 
-- Author: Niroshan Kumarasinghe
-- Student No: IIT26933 
-- Create date: 2019-11-19
-- Description: DollMart Toy Stores Case Study
-- =============================================

-- Create relational tables for dollmart toy stores
CREATE TABLE [dbo].[CustomerSegment] (
    [Id]						INT                  NOT NULL			IDENTITY(1,1),
    [SegmentName]				NVARCHAR(100)        NOT NULL,
	CONSTRAINT [PK_CustomerSegment] PRIMARY KEY CLUSTERED ([Id] ASC),
);
GO

CREATE TABLE [dbo].[Customer] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[CustomerName]				NVARCHAR(100)        NOT NULL,
	[SegmentId]					INT			         NOT NULL,
	[Address]					NVARCHAR(100)        NOT NULL,
	[State]						NVARCHAR(050)        NOT NULL,
	[City]						NVARCHAR(050)        NOT NULL,
	[Country]					NVARCHAR(050)        NOT NULL,
	CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Customer_CustomerSegment] FOREIGN KEY ([SegmentId]) REFERENCES [dbo].[CustomerSegment] ([Id])
);
GO

CREATE TABLE [dbo].[ProductCategory] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Description]				NVARCHAR(100)        NOT NULL,
	CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE TABLE [dbo].[ProductType] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Description]				NVARCHAR(100)        NOT NULL,
	[CategoryId]				INT					 NOT NULL,
	CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_ProductType_ProductCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[ProductCategory] ([Id])
);
GO

CREATE TABLE [dbo].[Product] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Description]				NVARCHAR(100)        NOT NULL,
	[ProductTypeId]			    INT					 NOT NULL,
	[UnitOfMeasurement]			NVARCHAR(100)        NOT NULL,
	[QuantityOnHand]			INT					 NOT NULL,
	CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([Id])
);
GO

CREATE TABLE [dbo].[OrderHeader] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Date]						DATE		         NOT NULL,
	[CustomerId]				INT					 NOT NULL,
	CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_OrderHeader_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
);
GO

CREATE TABLE [dbo].[OrderDetail] (
	[Id]					INT						NOT NULL			IDENTITY(1,1),
	[OrderId]				INT						NOT NULL,
	[ProductId]				INT						NOT NULL,
	[Quantity]				INT						NOT NULL,
	[UnitPrice]				DECIMAL(13,2)			NOT NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_OrderDetail_OrderHeader] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[OrderHeader] ([Id]),
	CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);
GO

