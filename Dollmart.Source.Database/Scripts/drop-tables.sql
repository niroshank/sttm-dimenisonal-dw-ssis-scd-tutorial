-- delete all the source tables
USE [dollmart-source-database]
GO

DROP TABLE IF EXISTS [dbo].[OrderHeader]
GO

DROP TABLE IF EXISTS [dbo].[OrderDetail]
GO

DROP TABLE IF EXISTS [dbo].[Customer]
GO

DROP TABLE IF EXISTS [dbo].[CustomerSegment]
GO

DROP TABLE IF EXISTS [dbo].[Product]
GO

DROP TABLE IF EXISTS [dbo].[ProductType]
GO

DROP TABLE IF EXISTS [dbo].[ProductCategory]
GO