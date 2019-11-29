CREATE TABLE [dbo].[ProductCategory] (
	[Id]						INT                  NOT NULL,
	[Description]				NVARCHAR(50)        NOT NULL,
	CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([Id] ASC)
);