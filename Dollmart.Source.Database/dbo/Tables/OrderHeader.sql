﻿CREATE TABLE [dbo].[OrderHeader] (
	[Id]						INT                  NOT NULL,
	[Date]						DATE		         NOT NULL,
	[CustomerId]				INT					 NOT NULL,
	CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_OrderHeader_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
);