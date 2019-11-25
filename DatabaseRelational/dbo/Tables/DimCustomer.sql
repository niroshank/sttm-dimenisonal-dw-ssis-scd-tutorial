CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]            INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]             INT            NOT NULL,
    [AccountNumber]          VARCHAR (10)   NOT NULL,
    [CustomerType]           NCHAR (10)     NOT NULL,
    [CustomerIDName]         NVARCHAR (100) NOT NULL,
    [CustomerTitle]          NCHAR (8)      NOT NULL,
    [FirstName]              NVARCHAR (50)  NOT NULL,
    [MiddleName]             NVARCHAR (50)  NOT NULL,
    [LastName]               NVARCHAR (50)  NOT NULL,
    [CustomerFullName]       NVARCHAR (100) NOT NULL,
    [BirthDate]              DATETIME       NOT NULL,
    [MaritalStatus]          NCHAR (7)      NOT NULL,
    [Gender]                 NCHAR (7)      NOT NULL,
    [EmailAddress]           NVARCHAR (50)  NOT NULL,
    [IncomeRange]            NVARCHAR (50)  NOT NULL,
    [TotalChildren]          TINYINT        NOT NULL,
    [NumberChildrenAtHome]   TINYINT        NOT NULL,
    [Education]              NVARCHAR (30)  NOT NULL,
    [Occupation]             NVARCHAR (30)  NOT NULL,
    [HomeOwnerStatus]        NVARCHAR (15)  NOT NULL,
    [NumberCarsOwned]        TINYINT        NOT NULL,
    [DateFirstPurchase]      DATE           NOT NULL,
    [CustomerValueScore]     NVARCHAR (15)  NOT NULL,
    [Phone]                  NVARCHAR (20)  NOT NULL,
    [AddressLine1]           NVARCHAR (60)  NOT NULL,
    [AddressLine2]           NVARCHAR (60)  NOT NULL,
    [PostalCode]             NVARCHAR (15)  NOT NULL,
    [City]                   NVARCHAR (100) NOT NULL,
    [CityAsRecorded]         NVARCHAR (100) NOT NULL,
    [StateProvinceCode]      NCHAR (3)      NOT NULL,
    [StateProvince]          NVARCHAR (50)  NOT NULL,
    [CountryCode]            NCHAR (3)      NOT NULL,
    [Country]                NVARCHAR (50)  NOT NULL,
    [ResellerName]           NVARCHAR (50)  NOT NULL,
    [BusinessType]           NVARCHAR (20)  NOT NULL,
    [NumberEmployees]        INT            NOT NULL,
    [AnnualSales]            MONEY          NOT NULL,
    [AnnualRevenue]          MONEY          NOT NULL,
    [YearOpened]             INT            NOT NULL,
    [BankName]               NVARCHAR (50)  NOT NULL,
    [OrderFrequency]         NCHAR (15)     NOT NULL,
    [CurrentStoreValueScore] NCHAR (15)     NOT NULL,
    [FirstOrderDate]         DATETIME       NOT NULL,
    [LastOrderDate]          DATETIME       NOT NULL,
    [RowIsCurrent]           NCHAR (1)      NOT NULL,
    [RowStartDate]           DATE           NOT NULL,
    [RowEndDate]             DATE           DEFAULT ('12/31/9999') NOT NULL,
    [RowChangeReason]        NVARCHAR (200) NOT NULL,
    [InsertAuditKey]         INT            NOT NULL,
    [UpdateAuditKey]         INT            NOT NULL,
    CONSTRAINT [PK_dbo.DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC),
    CONSTRAINT [FK_dbo_DimCustomer_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimCustomer_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
CREATE NONCLUSTERED INDEX [BK_dbo.DimCustomer]
    ON [dbo].[DimCustomer]([CustomerID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'The Customer dimension includes all Adventure Works customers, both resellers and individuals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3, 4 …', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Source system key; Numeric account number from the transaction system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Account', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'CustomerID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Account Number from the transaction system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Account', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'AW00000001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'varchar(10)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'The type of the customer based on our relationship', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Account', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode CustomerType from S/I to Reseller/Individual else Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Reseller, Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'CustomerType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerType';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Customer full name (Store name for resellers) prepended with CustomerID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerIDName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'AcctNum + '' '' + DW.FullName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Courtesy title, eg Ms., Mr. Often blank.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerTitle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Ms., Mr.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(8)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'First name of the customer or reseller contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Tom, Dick, Harry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Middle name of the customer or reseller contact (often blank)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Last name of the customer or reseller contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Full name of the customer as Last, First Middle (Store name for resellers)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerFullName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'LastName + '', '' + FirstName + '' '' + MiddleName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date of birth for an internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'BirthDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <BirthDate>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Marital status of an internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MaritalStatus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <MaritalStatus>. Decode to Single/Married', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Married, Single, Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Gender of an internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <Gender>. Decode to Female/Male/Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Male, Female, Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Customer''s email address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'EmailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Annual income of an internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IncomeRange', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <YearlyIncome>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'IncomeRange';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Total number of children for an internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TotalChildren', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <TotalChildren>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'TotalChildren';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of children at home, internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'NumberChildrenAtHome', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <NumberChildrenAtHome>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberChildrenAtHome';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Education level, internet customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Education', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <Education>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Education';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'General occupation for an internet customer, eg Managerial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Occupation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <Occupation>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is the internet customer a homeowner?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HomeOwnerStatus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <HouseOwnerFlag>. Decode to Homeowner / Not Homeowner', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Homeowner, Not Homeowner', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'HomeOwnerStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of cars the internet customer owns', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'NumberCarsOwned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <NumberCarsOwned>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberCarsOwned';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date internet customer first purchased a bike (self-reported)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DateFirstPurchase', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <DateFirstPurchase>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Individual', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'DateFirstPurchase';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Customer''s current lifetime value score to AdventureWorks', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Individual demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CustomerValueScore', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Out of scope for Phase 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Customer''s phone number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(25)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'First line of customer''s address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AddressLine1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from Person.Contact on CustomerID; pick up the most recent address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(60)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'AddressLine1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'CustomerAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'2nd line of customer''s address (usually blank)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AddressLine2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'see notes for AddrLine1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(60)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'AddressLine2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'CustomerAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Postal code, eg zip code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PostalCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'see notes for AddrLine1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(15)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'PostalCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'City, cleaned up by way of postal code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Out of scope for Phase 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(30)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'City as it actually exists in the source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CityAsRecorded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'see notes for AddrLine1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(30)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CityAsRecorded';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'State or Province code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'StateProvinceCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from Person.Address.StateProvinceId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(3)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'StateProvinceCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'State or province name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'StateProvince', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from Person.Address.StateProvinceId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'StateProvince', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Country code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CountryCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from Person.StateProvince.CountryRegionCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(3)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'CountryRegionCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'StateProvince', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Country name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Contact info', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Country', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from Person.StateProvince.CountryRegionCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'CountryRegion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Reselling store''s name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ResellerName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'ResellerName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Reseller''s business type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'BusinessType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <BusinessType>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Number of employees at the store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'NumberEmployees', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <NumberEmployees>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'NumberEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Store''s annual sales, self-reported', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AnnualSales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <AnnualSales>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualSales';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Store''s annual revenue, self-reported', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AnnualRevenue', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <AnnualRevenue>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'AnnualRevenue';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Year the store opened', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'YearOpened', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <YearOpened>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'YearOpened';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Store''s bank name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'BankName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Shred Demographics: <BankName>', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'xml', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Store', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'BankName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Does this reseller tend to order Annually, Semiannually, or Quarterly?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'OrderFrequency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Out of scope for Phase 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'OrderFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current store value to Adventure Works', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrentStoreValueScore', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Out of scope for Phase 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CurrentStoreValueScore';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date store first ordered from us', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'FirstOrderDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Derived from order trxns. Post-load update.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'FirstOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date store most recently ordered from us', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Reseller demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'LastOrderDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Derived from order trxns. Post-load update.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'LastOrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is this the current row for this member (Y/N)?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowIsCurrent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'When did this row become valid for this member?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowStartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'3/19/2004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'When did this row become invalid? (12/31/9999 if current row)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1/14/1998, 12/31/9999', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Why did the row change last?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowChangeReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

