CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]  INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [CustomerName] NVARCHAR (100) NOT NULL,
    [Gender]       NCHAR (7)      NOT NULL,
    [Address]      NVARCHAR (100) NOT NULL,
    [City]         NVARCHAR (50) NOT NULL,
    [State]        NCHAR (3)      NOT NULL,
    [Country]      NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_dbo.DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);

