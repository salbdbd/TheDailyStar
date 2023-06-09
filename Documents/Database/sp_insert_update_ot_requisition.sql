USE [TranscomDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_update_ot_requisition]    Script Date: 4/2/2020 8:34:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spInsertUpdateOtRequisition]
@ID INT,
@UserID INT,
@ReasonOfOt VARCHAR(50),
@SectionID INT,
@RequisitionDate Date,
@FromDate DATE,
@ToDate DATE,
@IsApprove BIT,
@ApprovedBy VARCHAR(10),
@ApprovedDate DATETIME,
@IsEditByBoss bit,
@CompanyID INT

AS
BEGIN
IF NOT EXISTS(SELECT * FROM OtRequisitionMaster WHERE ID=@ID)
	BEGIN
	INSERT INTO OtRequisitionMaster (UserID,SectionID, ReasonOfOt, RequisitionDate, FromDate, ToDate, IsApprove, ApprovedBy, ApprovedDate, IsEditByBoss, CompanyID)
		VALUES(@UserID, @SectionID, @ReasonOfOt, @RequisitionDate, @FromDate, @ToDate, 0, @ApprovedBy, @ApprovedDate, 0, @CompanyID)
		SELECT IDENT_CURRENT('OtRequisitionMaster')
	END
ELSE
UPDATE OtRequisitionMaster
SET UserID=@UserID,
	ReasonOfOt = @ReasonOfOt,
	SectionID=@SectionID,
	RequisitionDate=@RequisitionDate,
	FromDate=@FromDate,
	ToDate = @ToDate,
	IsApprove = @IsApprove,
	ApprovedBy = @ApprovedBy,
	ApprovedDate = @ApprovedDate,
	IsEditByBoss = @IsEditByBoss
	WHERE ID = @ID
	SELECT @ID
END