CREATE TABLE [dbo].[DimPromotion] (
    [PromotionKey]       SMALLINT      IDENTITY (1, 1) NOT NULL,
    [BKSpecialOfferID]   INT           NOT NULL,
    [PromotionName]      NVARCHAR (50) NOT NULL,
    [PromotionType]      NVARCHAR (20) NOT NULL,
    [PromotionCategory]  NVARCHAR (20) NOT NULL,
    [DiscountPct]        SMALLMONEY    NULL,
    [PromotionStartDate] DATE          NULL,
    [PromotionEndDate]   DATE          NULL,
    [MinQty]             INT           NULL,
    [MaxQty]             INT           NULL,
    [InsertAuditKey]     INT           NOT NULL,
    [UpdateAuditKey]     INT           NOT NULL,
    CONSTRAINT [PK_dbo.DimPromotion] PRIMARY KEY CLUSTERED ([PromotionKey] ASC),
    CONSTRAINT [FK_dbo_DimPromotion_InsertAuditKey] FOREIGN KEY ([InsertAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey]),
    CONSTRAINT [FK_dbo_DimPromotion_UpdateAuditKey] FOREIGN KEY ([UpdateAuditKey]) REFERENCES [dbo].[DimAudit] ([AuditKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'Promotion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion';


GO
EXECUTE sp_addextendedproperty @name = N'Table Description', @value = N'Information about marketing promotions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion';


GO
EXECUTE sp_addextendedproperty @name = N'Table Type', @value = N'Dimension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Surrogate primary key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3…', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Source system identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'SpecialOfferID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'1, 2, 3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'BKSpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Promotion Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Check for overflows', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Mountain Tire Sale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(255)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionName';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Promo type, eg Volume Discount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Volume Discount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionType';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Is promotion offered to resellers or directly to customers?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionCategory', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Example Values', @value = N'Reseller, Customer, No Discount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'nvarchar(50)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Promotion discount percent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'DiscountPct', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'smallmoney', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'DiscountPct', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Promotion start date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionStartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Promotion end date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'PromotionEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'datetime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'PromotionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Minimum quantity required for promotion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MinQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'MinQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Maximum quantity permitted for promotion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'MaxQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Convert NULL to MaxInt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'SCD  Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Datatype', @value = N'int', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Field Name', @value = N'MaxQty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Schema', @value = N'Sales', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'AW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Source Table', @value = N'SpecialOffers', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process loaded this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'InsertAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'InsertAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'What process most recently updated this row?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Folder', @value = N'exclude', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Display Name', @value = N'UpdateAuditKey', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'ETL Rules', @value = N'Standard Audit dim', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'Source System', @value = N'Derived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimPromotion', @level2type = N'COLUMN', @level2name = N'UpdateAuditKey';

