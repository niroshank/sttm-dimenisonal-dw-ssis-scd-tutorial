
CREATE PROCEDURE [dbo].[AddCurrencyFailedFactLookup] 
 -- Add the parameters for the stored procedure here
 @BKCurrencyCode nchar(3) , 
 @AuditKey int
AS
BEGIN
 SET NOCOUNT ON;

 IF NOT EXISTS (
  SELECT BKCurrencyCode FROM DimCurrency WHERE BKCurrencyCode=@BKCurrencyCode )
 INSERT INTO DimCurrency (BKCurrencyCode, Currency, IsCurrencyInUse, InsertAuditKey, UpdateAuditKey) 
 VALUES (@BKCurrencyCode, 'Unknown-' + @BKCurrencyCode, 'Y', @AuditKey, @AuditKey)

END
