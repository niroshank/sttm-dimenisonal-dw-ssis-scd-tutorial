CREATE TABLE [dbo].[CustomerSegment] (
    [Id]						INT                  NOT NULL,
    [SegmentName]				NCHAR(7)        NOT NULL,
	CONSTRAINT [PK_CustomerSegment] PRIMARY KEY CLUSTERED ([Id] ASC),
);