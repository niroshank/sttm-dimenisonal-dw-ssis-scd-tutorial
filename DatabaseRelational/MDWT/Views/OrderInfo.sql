CREATE VIEW [MDWT].[OrderInfo] AS 
SELECT [OrderInfoKey] AS [OrderInfoKey]
, [BKSalesReasonID] AS [SalesReasonID]
, [Channel] AS [Channel]
, [SalesReason] AS [SalesReason]
, [SalesReasonType] AS [SalesReasonType]
FROM dbo.DimOrderInfo
