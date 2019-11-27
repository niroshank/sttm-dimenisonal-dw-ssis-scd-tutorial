CREATE TABLE [dbo].[ProductCategory] (
	[Id]						INT                  NOT NULL			IDENTITY(1,1),
	[Description]				NVARCHAR(50)        NOT NULL,
	CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([Id] ASC)
);