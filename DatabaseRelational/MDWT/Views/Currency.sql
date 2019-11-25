CREATE VIEW [MDWT].[Currency] AS 
SELECT [CurrencyKey] AS [CurrencyKey]
, [BKCurrencyCode] AS [CurrencyCode]
, [Currency] AS [Currency]
--, [IsCurrencyInUse] AS [IsCurrencyInUse]
FROM dbo.DimCurrency
WHERE [IsCurrencyInUse] = 'Y'	-- filter out currencies not in use
