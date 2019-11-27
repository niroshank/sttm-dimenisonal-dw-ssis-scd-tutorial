CREATE TABLE [dbo].[ProductType] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Description]				NVARCHAR(50)        NOT NULL,
	[CategoryId]				INT					 NOT NULL,
	CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_ProductType_ProductCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[ProductCategory] ([Id])
);