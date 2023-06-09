USE [TranscomDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_update_ot_manual]    Script Date: 4/2/2020 8:33:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spInsertUpdateOtManual]
@EmpCode VARCHAR(10),
@OtMonth VARCHAR(6),
@OtHours DECIMAL(18,0),
@CompanyID INT,
@UserID INT
AS
IF NOT EXISTS(SELECT * FROM OtManualEntry WHERE EmpCode=@EmpCode AND OtMonth=@OtMonth AND CompanyID=@CompanyID)
BEGIN 
	INSERT INTO OtManualEntry (EmpCode, OtMonth,OtHours,CompanyID, UserID)
	VALUES(@EmpCode,@OtMonth,@OtHours,@CompanyID, @UserID)
END
ELSE
BEGIN
UPDATE OtManualEntry
SET OtHours=@OtHours
WHERE EmpCode=@EmpCode AND OtMonth=@OtMonth AND CompanyID=@CompanyID
END