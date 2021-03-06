/****** Object:  Table [dbo].[classtimetable]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[classtimetable]') AND type in (N'U'))
DROP TABLE [dbo].[classtimetable]
GO
/****** Object:  Table [dbo].[bioreadinglog]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bioreadinglog]') AND type in (N'U'))
DROP TABLE [dbo].[bioreadinglog]
GO
/****** Object:  Table [dbo].[studentattendace]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[studentattendace]') AND type in (N'U'))
DROP TABLE [dbo].[studentattendace]
GO
/****** Object:  Table [dbo].[masterusers]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterusers]') AND type in (N'U'))
DROP TABLE [dbo].[masterusers]
GO
/****** Object:  Table [dbo].[masterlocations]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterlocations]') AND type in (N'U'))
DROP TABLE [dbo].[masterlocations]
GO
/****** Object:  Table [dbo].[mastercolleges]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mastercolleges]') AND type in (N'U'))
DROP TABLE [dbo].[mastercolleges]
GO
/****** Object:  Table [dbo].[masterclassses]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterclassses]') AND type in (N'U'))
DROP TABLE [dbo].[masterclassses]
GO
/****** Object:  Table [dbo].[classstudents]    Script Date: 02/26/2011 15:32:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[classstudents]') AND type in (N'U'))
DROP TABLE [dbo].[classstudents]
GO
/****** Object:  Table [dbo].[classstudents]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[classstudents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[classstudents](
	[studentid] [int] IDENTITY(1,1) NOT NULL,
	[classid] [int] NULL,
	[collegeid] [int] NULL,
	[studentname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rollnumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[biometricid] [image] NULL,
	[addressdetails] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contactdeatils] [decimal](18, 0) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_classstudents] PRIMARY KEY CLUSTERED 
(
	[studentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[classstudents] ON
INSERT [dbo].[classstudents] ([studentid], [classid], [collegeid], [studentname], [rollnumber], [biometricid], [addressdetails], [contactdeatils], [status]) VALUES (1, 1, 5678, N'fadsfk', N'07R01A0546', 0x, N'ADSJFLK  ', CAST(9213981323 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[classstudents] OFF
/****** Object:  Table [dbo].[masterclassses]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterclassses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[masterclassses](
	[classid] [int] IDENTITY(1,1) NOT NULL,
	[collegeid] [int] NULL,
	[classname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_masterclassses] PRIMARY KEY CLUSTERED 
(
	[classid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[masterclassses] ON
INSERT [dbo].[masterclassses] ([classid], [collegeid], [classname], [status]) VALUES (1, 1, N'CSE', 0)
INSERT [dbo].[masterclassses] ([classid], [collegeid], [classname], [status]) VALUES (2, 2, N'ECE', 1)
INSERT [dbo].[masterclassses] ([classid], [collegeid], [classname], [status]) VALUES (3, 5679, N'cseA', 1)
INSERT [dbo].[masterclassses] ([classid], [collegeid], [classname], [status]) VALUES (4, 5678, N'MBA', 1)
SET IDENTITY_INSERT [dbo].[masterclassses] OFF
/****** Object:  Table [dbo].[mastercolleges]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mastercolleges]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mastercolleges](
	[collegeid] [int] IDENTITY(1,1) NOT NULL,
	[collegename] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[addressdetails] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contactdetails] [decimal](18, 0) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_mastercolleges] PRIMARY KEY CLUSTERED 
(
	[collegeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[mastercolleges] ON
INSERT [dbo].[mastercolleges] ([collegeid], [collegename], [addressdetails], [contactdetails], [status]) VALUES (5678, N'CMRIT', N'kandlakoya', CAST(123456 AS Decimal(18, 0)), 1)
INSERT [dbo].[mastercolleges] ([collegeid], [collegename], [addressdetails], [contactdetails], [status]) VALUES (5679, N'bvrit', N'narsapur', CAST(1234567890 AS Decimal(18, 0)), 1)
INSERT [dbo].[mastercolleges] ([collegeid], [collegename], [addressdetails], [contactdetails], [status]) VALUES (5680, N're', N'rerw', CAST(1234567890 AS Decimal(18, 0)), 1)
INSERT [dbo].[mastercolleges] ([collegeid], [collegename], [addressdetails], [contactdetails], [status]) VALUES (5681, N'rew', N'qWQaewqweqwre', CAST(2321311231 AS Decimal(18, 0)), 1)
INSERT [dbo].[mastercolleges] ([collegeid], [collegename], [addressdetails], [contactdetails], [status]) VALUES (5684, N'" raj "', N'" qweq"', CAST(1234567 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[mastercolleges] OFF
/****** Object:  Table [dbo].[masterlocations]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterlocations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[masterlocations](
	[locationid] [int] IDENTITY(1,1) NOT NULL,
	[collegeid] [int] NULL,
	[locationname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scannerdetails] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_masterlocations] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[masterlocations] ON
INSERT [dbo].[masterlocations] ([locationid], [collegeid], [locationname], [scannerdetails], [status]) VALUES (1, 5678, N'compute Hub II', N'', 1)
SET IDENTITY_INSERT [dbo].[masterlocations] OFF
/****** Object:  Table [dbo].[masterusers]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[masterusers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[masterusers](
	[userid] [int] NOT NULL,
	[collegid] [int] NULL,
	[usertype] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[firstname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lastname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone] [decimal](18, 0) NULL,
	[mobile] [decimal](18, 0) NULL,
	[email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loginid] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_masterusers] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[masterusers] ([userid], [collegid], [usertype], [firstname], [lastname], [phone], [mobile], [email], [loginid], [password], [status]) VALUES (5, NULL, N'admin', N'karthik', N'v', CAST(8 AS Decimal(18, 0)), CAST(98 AS Decimal(18, 0)), N'abc@', N'hg', N'jhg', 0)
INSERT [dbo].[masterusers] ([userid], [collegid], [usertype], [firstname], [lastname], [phone], [mobile], [email], [loginid], [password], [status]) VALUES (12, NULL, N'admin', N'rajashekar', N'reddy', CAST(65352725 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), N'raj@reddy.com', N'582', N'reddy', 0)
INSERT [dbo].[masterusers] ([userid], [collegid], [usertype], [firstname], [lastname], [phone], [mobile], [email], [loginid], [password], [status]) VALUES (555, NULL, N'select', N'sharath', N'chandra', CAST(27113164 AS Decimal(18, 0)), CAST(95424368 AS Decimal(18, 0)), N'sharathvuppla@gmail.com', N'sharath', N'sharath', 1)
/****** Object:  Table [dbo].[studentattendace]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[studentattendace]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[studentattendace](
	[attid] [int] IDENTITY(1,1) NOT NULL,
	[collegeid] [int] NULL,
	[classid] [int] NULL,
	[studentid] [int] NULL,
	[date] [datetime] NULL,
	[periodname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[present] [bit] NULL,
 CONSTRAINT [PK_studentattendace] PRIMARY KEY CLUSTERED 
(
	[attid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[bioreadinglog]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bioreadinglog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bioreadinglog](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[biometricid] [image] NULL,
	[studentid] [int] NULL,
	[locationid] [int] NULL,
	[scandatetime] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_bioreadinglog] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[classtimetable]    Script Date: 02/26/2011 15:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[classtimetable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[classtimetable](
	[collegeid] [int] NULL,
	[classname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[periodname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[day] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[classtimetable] ([collegeid], [classname], [periodname], [day], [starttime], [endtime], [subject]) VALUES (5679, N'ECE', N'secondperiod', N'Tuesday   ', CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'mobile computing')
