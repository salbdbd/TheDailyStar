USE [TranscomDB]
GO
/****** Object:  StoredProcedure [dbo].[spGetReplacedApprovedOt]    Script Date: 4/4/2020 6:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[spGetReplacedApprovedOt]
@EmpCode VARCHAR(10),
@OtDate VARCHAR(8),
@CompanyID INT
AS
SELECT od.ID, od.EmpCode, od.OtDate, od.OtHours, otR.ReplacedDate,
 ISNULL(otR.ReplacedHours,0) ReplacedHours, (od.OtHours-ISNULL(otR.ReplacedHours,0)) OtBalance, om.CompanyID 
FROM OtRequisitionDetails od
LEFT JOIN OtReplace otR ON otR.OtRequisitionDetailsID = od.ID
JOIN OtRequisitionMaster om ON om.ID = od.OtRequisitionMasterID
WHERE om.IsApprove=1 AND od.IsReplace=1 AND od.EmpCode=CASE WHEN @EmpCode<>'-1' THEN @EmpCode ELSE od.EmpCode END
AND CONVERT(VARCHAR(8), od.OtDate, 112)=CASE WHEN @OtDate<>'-1' THEN @OtDate ELSE CONVERT(VARCHAR(8), od.OtDate, 112) END
AND om.CompanyID=@CompanyID