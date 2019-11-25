CREATE VIEW [MDWT].[ExchangeRates] AS 
SELECT [CurrencyKey] AS [CurrencyKey]
, [DateKey] AS [DateKey]
, [CloseRate] AS [CloseRate]
, [AvgRate] AS [AvgRate]
FROM dbo.FactExchangeRates
