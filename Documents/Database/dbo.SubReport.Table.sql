USE [TranscomDB]
GO
/****** Object:  Table [dbo].[SubReport]    Script Date: 02/20/2020 14:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubReport](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [varchar](50) NULL,
	[PageID] [int] NULL,
	[MainReportId] [int] NULL,
	[ReportFile] [varchar](50) NULL,
	[StoredProcedure] [varchar](50) NULL,
	[Parameters] [varchar](200) NULL,
	[CompanyID] [int] NULL,
	[BranchID] [int] NULL,
 CONSTRAINT [PK_SubReport] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SubReport] ON 

INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (1, N'HR Report', 31, 32, N'CryRptSubEducationCV.rpt', N'sp_getEmpEducationInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (2, N'HR Report', 31, 32, N'CrysRptSubExprerienceCV.rpt', N'sp_getExperienceInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (3, N'HR Report', 31, 32, N'CryRptSubRefrence1CV.rpt', N'sp_getReferenceInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (4, N'HR Report', 31, 32, N'CrysRptSubReferance2.rpt', N'sp_getReferenceInfoForReport1', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (5, N'HR Report', 31, 32, N'CryRptTraningReport.rpt', N'sp_getTraningInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (6, N'HR Report', 31, 32, N'CryRptPromotionReport.rpt', N'spRptPromotionAndTransferBoth', N'@EmpCode, @RptType,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (7, N'HR Report', 31, 32, N'CrysRptDisciplanaryAction.rpt', N'spRptDescplenaryAction', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (8, N'HR Report', 31, 32, N'CryRptProfessionalQualificationReport.rpt', N'sp_geProQualificationInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (9, N'HR Report', 31, 32, N'CryNomineeInfo.rpt', N'spRptNomineeInfo', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (10, N'HR Report', 31, 32, N'CryRptTransfer.rpt', N'spRptPromotionAndTransferBoth', N'@EmpCode,@RptType,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (11, N'Report', 294, 95, N'CryRptTaxCertificateChallan.rpt', N'spRptTaxCertificateChallan', N'@EmpCode,@TaxYearID,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (12, N'Salary Report', 322, 110, N'CryRptPayslipAddition.rpt', N'spRptPaySlipAddition', N'@EmpID,@PeriodID,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (13, N'Salary Report', 322, 110, N'CryRptPayslipDeduction.rpt', N'spRptPaySlipDeduction', N'@EmpID,@PeriodID,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (14, N'Salary Report', 322, 132, N'CryRptPayslipAdditionCTC.rpt', N'spRptPaySlipAdditionCTC', N'@EmpID,@PeriodID,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (16, N'Salary Reconciliation', 323, 141, N'CryRptSalaryReconsulation.rpt', N'spRptReconciliationSalarySummary', N'@STRPeriodID,@ENDPeriodID,@CompanyID,@Grade,@Branch', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (17, N'Salary Reconciliation', 323, 142, N'CryRptReconsilitionSummaryIncrise.rpt', N'spRptReconciliationSalaryIncrement', N'@StartPeriodID,@PeriodID,@GradeValue,@CompanyID,@StartDate,@EndDate,@BranchID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (18, N'Salary Reconciliation', 323, 142, N'CryRptReconsiliationSummaryDecrise.rpt', N'spRptReconciliationSalaryDecriment', N'@StartPeriodID,@PeriodID,@GradeValue,@CompanyID,@StartDate,@EndDate,@BranchID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (19, N'Report', 2005, 193, N'CryKpiPeopleReport.rpt', N'spRptQuarterWiseKpiDetails', N'@EmpCode,@YearId,@QuarterId,@KpiType,@CompanyId', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (20, N'Report', 2005, 193, N'CryKpiBusinessReport2.rpt', N'spRptQuarterWiseKpiDetails', N'@EmpCode,@YearId,@QuarterId,@KpiType,@CompanyId', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (21, N'Report', 2005, 194, N'CrySubPeopleApprisalYearly.rpt', N'spApprisalYearly', N'@EmpCode,@YearId,@KpiType,@CompanyId', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (22, N'Report', 2005, 198, N'CryKpiYTDPeopleForOthers.rpt', N'spRptYTDForOters', N'@EmpCode,@YearId,@KpiType', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (23, N'Employee CV', 329, 158, N'CryNomineeInfo.rpt', N'spRptNomineeInfo', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (24, N'Employee CV', 329, 158, N'CryRptSubEducationCV.rpt', N'sp_getEmpEducationInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (25, N'Employee CV', 329, 158, N'CrysRptSubExprerienceCV.rpt', N'sp_getExperienceInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (26, N'Employee CV', 329, 158, N'CryRptPromotionReport.rpt', N'spRptPromotionReportSingleEmployee', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (27, N'Employee CV', 329, 158, N'CryRptTransfer.rpt', N'spRptPromotionAndTransferBoth', N'@EmpCode, @RptType,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (28, N'Employee CV', 329, 158, N'CryRptTraningReport.rpt', N'sp_getTraningInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (29, N'Employee CV', 329, 158, N'CryRptProfessionalQualificationReport.rpt', N'sp_geProQualificationInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (30, N'Employee CV', 329, 158, N'CrysRptDisciplanaryAction.rpt', N'spRptDescplenaryAction', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (31, N'Employee CV', 329, 158, N'CryRptSubRefrence1CV.rpt', N'sp_getReferenceInfoForReport', N'@EmpCode,@CompanyID', 1, 0)
INSERT [dbo].[SubReport] ([ReportId], [PageName], [PageID], [MainReportId], [ReportFile], [StoredProcedure], [Parameters], [CompanyID], [BranchID]) VALUES (32, N'Employee CV', 329, 158, N'CrysRptSubReferance2.rpt', N'sp_getReferenceInfoForReport1', N'@EmpCode,@CompanyID', 1, 0)
SET IDENTITY_INSERT [dbo].[SubReport] OFF
