CREATE TABLE [scd].[DimCustomerType3] (
    [CustomerKey]  INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [CustomerName] NVARCHAR (100) NOT NULL,
    [Gender]       NCHAR (7)      NOT NULL,
    [CurrentAddress]      NVARCHAR (100) NULL,
	[PreviousAddress] NVARCHAR (100) NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [State]        NCHAR (3)      NOT NULL,
    [Country]      NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_scd.DimCustomerType3] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);