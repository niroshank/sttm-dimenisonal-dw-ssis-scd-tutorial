CREATE TABLE [dbo].[DimAudit] (
    [AuditKey]                INT              IDENTITY (1, 1) NOT NULL,
    [ParentAuditKey]          INT              NOT NULL,
    [TableName]               NVARCHAR (50)    DEFAULT ('Unknown') NOT NULL,
    [PkgName]                 NVARCHAR (50)    DEFAULT ('Unknown') NOT NULL,
    [PkgGUID]                 UNIQUEIDENTIFIER NULL,
    [PkgVersionGUID]          UNIQUEIDENTIFIER NULL,
    [PkgVersionMajor]         SMALLINT         NULL,
    [PkgVersionMinor]         SMALLINT         NULL,
    [ExecStartDT]             DATETIME         DEFAULT (getdate()) NOT NULL,
    [ExecStopDT]              DATETIME         NULL,
    [ExecutionInstanceGUID]   UNIQUEIDENTIFIER NULL,
    [ExtractRowCnt]           BIGINT           NULL,
    [InsertRowCnt]            BIGINT           NULL,
    [UpdateRowCnt]            BIGINT           NULL,
    [ErrorRowCnt]             BIGINT           NULL,
    [TableInitialRowCnt]      BIGINT           NULL,
    [TableFinalRowCnt]        BIGINT           NULL,
    [TableMaxSurrogateKey]    BIGINT           NULL,
    [SuccessfulProcessingInd] NCHAR (1)        DEFAULT ('N') NOT NULL,
    CONSTRAINT [PK_dbo.DimAudit] PRIMARY KEY CLUSTERED ([AuditKey] ASC),
    CONSTRAINT [FK_dbo_DimAudit_ParentAuditKey] FOREIGN KEY ([ParentAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Audit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Audit dimension tags each data row with the the process that added or updated it.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Audit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'AuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Foreign key to self, to identify calling package execution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ParentAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ParentAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ParentAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ParentAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ParentAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Name of the main table loaded by this package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TableName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Name of the SSIS package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PkgName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Identifier for the package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PkgGUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Identifier for the package version', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PkgVersionGUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Major version number for the package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionMajor';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PkgVersionMajor', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionMajor';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Minor version number for the package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionMinor';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PkgVersionMinor', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'PkgVersionMinor';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date-time the package started executing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecStartDT';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExecStartDT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecStartDT';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date-time the package finished executing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecStopDT';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExecStopDT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecStopDT';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Identifier for the execution of the package', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecutionInstanceGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExecutionInstanceGUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExecutionInstanceGUID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of rows extracted from the source(s)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExtractRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ExtractRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ExtractRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of rows inserted in the destination table', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'InsertRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'InsertRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of rows updated in the destination table', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'UpdateRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'UpdateRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of error rows', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ErrorRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'ErrorRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'ErrorRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of rows in target table before we begin', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableInitialRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TableInitialRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableInitialRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Count of rows in target table after package ends', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableFinalRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TableFinalRowCnt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableFinalRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Maximum surrogate key value in table (if we''re maintaining ourselves)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableMaxSurrogateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'TableMaxSurrogateKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'TableMaxSurrogateKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Did the package finish executing successfully?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'SuccessfulProcessingInd';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SuccessfulProcessingInd', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'SuccessfulProcessingInd';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Y, N', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimAudit', @level2type = N'COLUMN', @level2name = N'SuccessfulProcessingInd';

