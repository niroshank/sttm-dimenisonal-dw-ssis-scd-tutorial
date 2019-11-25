CREATE TABLE [dbo].[CustomerSegment] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [SegmentName] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_CustomerSegment] PRIMARY KEY CLUSTERED ([Id] ASC)
);

