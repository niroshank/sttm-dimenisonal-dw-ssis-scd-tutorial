CREATE TABLE [scd].[DimCustomerType2] (
    [CustomerKey]  INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [CustomerName] NVARCHAR (100) NOT NULL,
    [Gender]       NCHAR (7)      NOT NULL,
    [Address]      NVARCHAR (100) NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [State]        NCHAR (3)      NOT NULL,
    [Country]      NVARCHAR (50)  NOT NULL,
	[IsActive]	   BIT			  NULL,
	[CreatedDate]  DATE			  NULL,
	[UpdatedDate]   DATE		  NULL,
    CONSTRAINT [PK_scd.DimCustomerType2] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);

