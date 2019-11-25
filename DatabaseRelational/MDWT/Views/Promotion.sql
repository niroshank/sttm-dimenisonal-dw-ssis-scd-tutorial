CREATE VIEW [MDWT].[Promotion] AS 
SELECT [PromotionKey] AS [PromotionKey]
, [BKSpecialOfferID] AS [SpecialOfferID]
, [PromotionName] AS [PromotionName]
, [PromotionType] AS [PromotionType]
, [PromotionCategory] AS [PromotionCategory]
, [DiscountPct] AS [DiscountPct]
, [PromotionStartDate] AS [PromotionStartDate]
, [PromotionEndDate] AS [PromotionEndDate]
, [MinQty] AS [MinQty]
, [MaxQty] AS [MaxQty]
FROM dbo.DimPromotion
