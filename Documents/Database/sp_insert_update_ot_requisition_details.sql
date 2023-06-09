USE [TranscomDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_update_ot_requisition_details]    Script Date: 4/2/2020 8:35:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spInsertUpdateOtRequisitionDetails]
@OtRequisitionMasterID INT,
@EmpCode VARCHAR(50),
@OtDate DATE,
@OtHours DECIMAL(18,0),
@IsReplace BIT,
@ApprovedHours DECIMAL(18,0)

AS
BEGIN
IF NOT EXISTS(SELECT * FROM OtRequisitionDetails WHERE EmpCode = @EmpCode AND OtDate=CONVERT(VARCHAR,@OtDate,23))
	BEGIN
	INSERT INTO OtRequisitionDetails (OtRequisitionMasterID,EmpCode, OtDate, OtHours, IsReplace, ApprovedHours)
		VALUES(@OtRequisitionMasterID, @EmpCode, @OtDate, @OtHours, @IsReplace, @ApprovedHours)
	END
ELSE
UPDATE OtRequisitionDetails
SET IsReplace = @IsReplace,
	ApprovedHours = @ApprovedHours
	WHERE EmpCode=@EmpCOde AND OtDate=CONVERT(VARCHAR,@OtDate,23)
END