CREATE TABLE [dbo].[Customer] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [CustomerName] NVARCHAR (100) NOT NULL,
    [SegmentId]    INT            NOT NULL,
    [Address]      NVARCHAR (100) NOT NULL,
    [State]        NVARCHAR (50)  NOT NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [Country]      NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Customer_CustomerSegment] FOREIGN KEY ([SegmentId]) REFERENCES [dbo].[CustomerSegment] ([Id])
);

