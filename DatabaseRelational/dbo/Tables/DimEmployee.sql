CREATE TABLE [dbo].[DimEmployee] (
    [EmployeeKey]                     INT            IDENTITY (1, 1) NOT NULL,
    [BKEmployeeID]                    INT            NOT NULL,
    [NationalIDNumber]                NCHAR (15)     NOT NULL,
    [EmployeeIDName]                  NVARCHAR (125) NOT NULL,
    [EmployeeFullName]                NVARCHAR (100) NOT NULL,
    [EmployeeFirstName]               NVARCHAR (50)  NOT NULL,
    [EmployeeLastName]                NVARCHAR (50)  NOT NULL,
    [EmployeeMiddleName]              NVARCHAR (50)  NOT NULL,
    [BirthDate]                       DATETIME       NULL,
    [MaritalStatus]                   NCHAR (7)      NOT NULL,
    [Gender]                          NCHAR (7)      NOT NULL,
    [IsSalaried]                      NCHAR (1)      NOT NULL,
    [IsCurrentEmployee]               NCHAR (1)      NOT NULL,
    [IsSalesPerson]                   NCHAR (1)      NOT NULL,
    [JobTitle]                        NVARCHAR (50)  NOT NULL,
    [DepartmentID]                    INT            NOT NULL,
    [Department]                      NVARCHAR (50)  NOT NULL,
    [DepartmentGroup]                 NVARCHAR (50)  NOT NULL,
    [BKCurrentSalesTerritoryId]       INT            NOT NULL,
    [CurrentSalesTerritory]           NVARCHAR (50)  NOT NULL,
    [CurrentSalesTerritoryCountry]    NVARCHAR (50)  NOT NULL,
    [CurrentSalesTerritoryGroup]      NVARCHAR (50)  NOT NULL,
    [BKHistoricalSalesTerritoryId]    INT            NOT NULL,
    [HistoricalSalesTerritory]        NVARCHAR (50)  NOT NULL,
    [HistoricalSalesTerritoryCountry] NVARCHAR (50)  NOT NULL,
    [HistoricalSalesTerritoryGroup]   NVARCHAR (50)  NOT NULL,
    [HireDate]                        DATE           NULL,
    [EmploymentEndDate]               DATE           DEFAULT ('12/31/9999') NOT NULL,
    [LoginID]                         NVARCHAR (50)  NOT NULL,
    [EmployeeEmail]                   NVARCHAR (50)  NOT NULL,
    [EmployeePhone]                   NVARCHAR (25)  NOT NULL,
    [RowIsCurrent]                    NCHAR (1)      NOT NULL,
    [RowStartDate]                    DATE           DEFAULT ('12/31/1899') NOT NULL,
    [RowEndDate]                      DATE           DEFAULT ('12/31/9999') NOT NULL,
    [RowChangeReason]                 NVARCHAR (200) NOT NULL,
    [InsertAuditKey]                  INT            NOT NULL,
    [UpdateAuditKey]                  INT            NOT NULL,
    CONSTRAINT [PK_dbo.DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeKey] ASC),
    CONSTRAINT [FK_dbo_DimEmployee_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimEmployee_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Employee info, including sales territory for sales reps', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee ID used in the transaction system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'273', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'EmployeeId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKEmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'National ID Number (eg SSN) for employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'NationalIDNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Strip out all spaces and hyphens', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'112432117', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(15)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'NationalIdNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee full name prepended with national ID# (eg SSN)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeIDName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'273 Welcker, Brian S ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'several', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeIDName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee full name: last, first middle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeFullName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Last, First Middle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Welcker, Brian S', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'several', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFullName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s first name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeFirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Brian', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s last name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeLastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Welcker', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s middle name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeMiddleName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'S', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s birth date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'BirthDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1/7/1975', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'BirthDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What is the employee''s marital status?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MaritalStatus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode M/S to Married/Single', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Married, Single, Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'MaritalStatus', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What is the employee''s gender?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee demographics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode M/F to Male/Femeale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Male, Female, Unknown', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nchar(1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is the employee salaried?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Position', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsSalaried', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode 1/0 to Y/N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'bit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'SalariedFlag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalaried';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is this person currently an employee?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Position', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsCurrentEmployee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Decode 1/0 to Y/N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'bit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'CurrentFlag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsCurrentEmployee';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is the employee a sales person?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Position', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'IsSalesPerson', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Sales person if HumanResources.Employee. EmployeeID IN Sales.SalesPerson.SalesPersonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'IsSalesPerson';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s job title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Position', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'JobTitle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Design Engineer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Department ID from the source system', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DepartmentID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'smallint', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'DepartmentId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'EmployeeDepartmentHistory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Department name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Department', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on DepartmentID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Department', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Department group', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DepartmentGroup', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on DepartmentID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Sales and Marketing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'GroupName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Department', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'DepartmentGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Source system key for the employee''s current sales territory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrentSalesTerritoryId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on EmployeeID=SalesPersonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'TerritoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesPerson', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKCurrentSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current sales territory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrentSalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join to Sales.SalesPerson on TerritoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current sales territory country', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrentSalesTerritoryCountry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from SalesTerritory to CountryRegion on CountryRegionCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'CountryRegion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Current sales territory group', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'CurrentSalesTerritoryGroup', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'see note for Current_Sales_Territory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Group', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'CurrentSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Source system key for the employee''s historical sales territory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HistoricalSalesTerritoryId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join on EmployeeID=SalesPersonID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'TerritoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesPerson', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'BKHistoricalSalesTerritoryId';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales territory at the time the transaction occurred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HistoricalSalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join to Sales.SalesPerson on TerritoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritory';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales territory country at the time the transaction occurred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HistoricalSalesTerritoryCountry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Join from SalesTerritory to CountryRegion on CountryRegionCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'CountryRegion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryCountry';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Sales territory group at the time the transaction occurred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HistoricalSalesTerritoryGroup', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'see note for Historical_Sales_Territory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Group', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SalesTerritory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HistoricalSalesTerritoryGroup';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date employee was hired', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'HireDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'HireDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date employment ended; 12/31/9999 if a current employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmploymentEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Capture event when CurrentInd switches to zero. In the absence of better info, it''s the ModifiedDate of the row when the change', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s login ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'LoginID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'adventure-works\brian3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(100)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'LoginId', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'HumanResources', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Employee''s email address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeeEmail', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'brian3@adventure-works.com', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'EmailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeeEmail';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Phone number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'Employee contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'EmployeePhone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'716-555-0127', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(25)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'Contact', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is this the current row for this member (Y/N)?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowIsCurrent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowIsCurrent';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'When did this row become valid for this member?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowStartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1/1/2009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'When did this row become invalid? (12/31/9999 if current row)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1/14/1998, 12/31/9999', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Why did the row change last?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'RowChangeReason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard SCD-2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived in ETL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'RowChangeReason';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimEmployee', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

