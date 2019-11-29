CREATE TABLE [dbo].[Product] (
	[Id]						INT                  NOT NULL,
	[Description]				NVARCHAR(100)        NOT NULL,
	[ProductTypeId]			    INT					 NOT NULL,
	[UnitOfMeasurement]			NCHAR (10)      DEFAULT ('N/A') NOT NULL,
	[QuantityOnHand]			INT					 NOT NULL,
	CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([Id])
);