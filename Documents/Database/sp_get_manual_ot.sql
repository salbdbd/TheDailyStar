USE [TranscomDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_manual_ot]    Script Date: 4/2/2020 8:32:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spGetManualOt]
@EmpCode VARCHAR(10),
@OtMonth VARCHAR(6),
@CompanyID INT
AS 
SELECT om.ID, om.EmpCode, ve.EmpName, ve.Department, ve.Designation, om.OtMonth, om.OtHours, om.CompanyID, om.AddedDate, om.UserID FROM OtManualEntry om LEFT JOIN View_EmployeeAll ve ON ve.EmpCode = om.EmpCode
WHERE om.EmpCode = CASE WHEN @EmpCode<>'-1' THEN @EmpCode ELSE om.EmpCode END
AND om.OtMonth = CASE WHEN @OtMonth<>'-1' THEN @OtMonth ELSE om.OtMonth END
AND om.CompanyID=@CompanyID