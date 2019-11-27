CREATE TABLE [dbo].[CustomerSegment] (
    [Id]						INT                  NOT NULL			IDENTITY(1,1),
    [SegmentName]				NCHAR(7)        NOT NULL,
	CONSTRAINT [PK_CustomerSegment] PRIMARY KEY CLUSTERED ([Id] ASC),
);