CREATE TABLE [dbo].[OrderDetail] (
	[Id]					INT						NOT NULL,
	[OrderId]				INT						NOT NULL,
	[ProductId]				INT						NOT NULL,
	[Quantity]				SMALLINT			    NOT NULL,
	[UnitPrice]				DECIMAL(13,2)			NOT NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_OrderDetail_OrderHeader] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[OrderHeader] ([Id]),
	CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);