﻿CREATE VIEW [MDWT].[Orders] AS 
SELECT [ProductKey] AS [ProductKey]
, [CustomerKey] AS [CustomerKey]
, [OrderDateKey] AS [OrderDateKey]
, [DueDateKey] AS [DueDateKey]
, [OrderInfoKey] AS [OrderInfoKey]
, [PromotionKey] AS [PromotionKey]
, [CurrencyKey] AS [CurrencyKey]
, [SalesRepKey] AS [SalesRepKey]
, [OrderQty] AS [OrderQty]
, [UnitPriceUSD] AS [UnitPriceUSD]
, [ExtendedAmtUSD] AS [ExtendedAmtUSD]
, [UnitPriceDiscountPct] AS [UnitPriceDiscountPct]
, [DiscountUSD] AS [DiscountUSD]
, [ProductStdCostUSD] AS [ProductStdCostUSD]
, [TotalProductCostUSD] AS [TotalProductCostUSD]
, [SalesAmtUSD] AS [SalesAmtUSD]
, [SalesAmtLocal] AS [SalesAmtLocal]
, [TaxUSD] AS [TaxUSD]
, [TaxLocal] AS [TaxLocal]
, [FreightUSD] AS [FreightUSD]
, [FreightLocal] AS [FreightLocal]
FROM dbo.FactOrders