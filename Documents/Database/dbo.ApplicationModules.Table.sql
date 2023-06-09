USE [TranscomDB]
GO
/****** Object:  Table [dbo].[ApplicationModules]    Script Date: 02/20/2020 14:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ModuleRoutePath] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ApplicationModules_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ApplicationModules] ON 

INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (1, N'System Setup', N'system-setup', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (2, N'HR Menu', N'hr-menu', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (3, N'Property', N'property', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (4, N'Attendance', N'attendance', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (5, N'Leave', N'leave', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (6, N'Overtime', N'overtime', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (7, N'Shift Allowance', N'shift-allowance', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (8, N'Disciplinary Action', N'disciplinary', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (9, N'Loan', N'loan', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (10, N'Salary Setup', N'salary-setup', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (11, N'Salary Process', N'salary-process', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (12, N'Addition', N'addition', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (13, N'Deduction', N'deduction', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (14, N'Bonus', N'bonus', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (15, N'Incentive Other', N'incentive', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (16, N'Subsistance Allowance', N'subsistance-allowance', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (17, N'Income Tax', N'income-tax', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (18, N'Settlement', N'settlement', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (19, N'Reports', N'reports', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (20, N'Security', N'security', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (21, N'Gl Intregration', N'gl-integration', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (22, N'Apprisal', N'apprisal', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (23, N'Apps', N'apps', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (24, N'Recruitment', N'recruitment', 1)
INSERT [dbo].[ApplicationModules] ([ID], [Name], [ModuleRoutePath], [IsActive]) VALUES (25, N'Tour', N'tour', 1)
SET IDENTITY_INSERT [dbo].[ApplicationModules] OFF
ALTER TABLE [dbo].[ApplicationModules] ADD  DEFAULT ((1)) FOR [IsActive]
GO
