﻿CREATE VIEW [MDWT].[Employee] AS 
SELECT [EmployeeKey] AS [EmployeeKey]
, [BKEmployeeID] AS [EmployeeID]
, [NationalIDNumber] AS [NationalIDNumber]
, [EmployeeIDName] AS [EmployeeIDName]
, [EmployeeFullName] AS [EmployeeFullName]
, [EmployeeFirstName] AS [EmployeeFirstName]
, [EmployeeLastName] AS [EmployeeLastName]
, [EmployeeMiddleName] AS [EmployeeMiddleName]
, [BirthDate] AS [BirthDate]
, [MaritalStatus] AS [MaritalStatus]
, [Gender] AS [Gender]
, [IsSalaried] AS [IsSalaried]
, [IsCurrentEmployee] AS [IsCurrentEmployee]
, [IsSalesPerson] AS [IsSalesPerson]
, [JobTitle] AS [JobTitle]
, [DepartmentID] AS [DepartmentID]
, [Department] AS [Department]
, [DepartmentGroup] AS [DepartmentGroup]
, [BKCurrentSalesTerritoryId] AS [CurrentSalesTerritoryId]
, [CurrentSalesTerritory] AS [CurrentSalesTerritory]
, [CurrentSalesTerritoryCountry] AS [CurrentSalesTerritoryCountry]
, [CurrentSalesTerritoryGroup] AS [CurrentSalesTerritoryGroup]
, [BKHistoricalSalesTerritoryId] AS [HistoricalSalesTerritoryId]
, [HistoricalSalesTerritory] AS [HistoricalSalesTerritory]
, [HistoricalSalesTerritoryCountry] AS [HistoricalSalesTerritoryCountry]
, [HistoricalSalesTerritoryGroup] AS [HistoricalSalesTerritoryGroup]
, [HireDate] AS [HireDate]
, [EmploymentEndDate] AS [EmploymentEndDate]
, [LoginID] AS [LoginID]
, [EmployeeEmail] AS [EmployeeEmail]
, [EmployeePhone] AS [EmployeePhone]
FROM dbo.DimEmployee