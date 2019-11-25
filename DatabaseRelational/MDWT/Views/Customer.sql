﻿CREATE VIEW [MDWT].[Customer] AS 
SELECT [CustomerKey] AS [CustomerKey]
, [CustomerID] AS [CustomerID]
, [AccountNumber] AS [AccountNumber]
, [CustomerType] AS [CustomerType]
, [CustomerIDName] AS [CustomerIDName]
, [CustomerTitle] AS [CustomerTitle]
, [FirstName] AS [FirstName]
, [MiddleName] AS [MiddleName]
, [LastName] AS [LastName]
, [CustomerFullName] AS [CustomerFullName]
, [BirthDate] AS [BirthDate]
, [MaritalStatus] AS [MaritalStatus]
, [Gender] AS [Gender]
, [EmailAddress] AS [EmailAddress]
, [IncomeRange] AS [IncomeRange]
, [TotalChildren] AS [TotalChildren]
, [NumberChildrenAtHome] AS [NumberChildrenAtHome]
, [Education] AS [Education]
, [Occupation] AS [Occupation]
, [HomeOwnerStatus] AS [HomeOwnerStatus]
, [NumberCarsOwned] AS [NumberCarsOwned]
, [DateFirstPurchase] AS [DateFirstPurchase]
, [CustomerValueScore] AS [CustomerValueScore]
, [Phone] AS [Phone]
, [AddressLine1] AS [AddressLine1]
, [AddressLine2] AS [AddressLine2]
, [PostalCode] AS [PostalCode]
, [City] AS [City]
, [CityAsRecorded] AS [CityAsRecorded]
, [StateProvinceCode] AS [StateProvinceCode]
, [StateProvince] AS [StateProvince]
, [CountryCode] AS [CountryCode]
, [Country] AS [Country]
, [ResellerName] AS [ResellerName]
, [BusinessType] AS [BusinessType]
, [NumberEmployees] AS [NumberEmployees]
, [AnnualSales] AS [AnnualSales]
, [AnnualRevenue] AS [AnnualRevenue]
, [YearOpened] AS [YearOpened]
, [BankName] AS [BankName]
, [OrderFrequency] AS [OrderFrequency]
, [CurrentStoreValueScore] AS [CurrentStoreValueScore]
, [FirstOrderDate] AS [FirstOrderDate]
, [LastOrderDate] AS [LastOrderDate]
FROM dbo.DimCustomer
