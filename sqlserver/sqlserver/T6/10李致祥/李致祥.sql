USE [作业]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2017/12/20 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[cpno] [char](4) NULL,
	[credit] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sc]    Script Date: 2017/12/20 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sc](
	[scid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[grade] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[scid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 2017/12/20 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](8) NOT NULL,
	[sex] [char](2) NOT NULL DEFAULT ('男'),
	[age] [smallint] NOT NULL,
	[dept] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([cid], [name], [cpno], [credit]) VALUES (1, N'JSJ', NULL, NULL)
INSERT [dbo].[course] ([cid], [name], [cpno], [credit]) VALUES (2, N'PS', NULL, NULL)
INSERT [dbo].[course] ([cid], [name], [cpno], [credit]) VALUES (3, N'Java', NULL, NULL)
SET IDENTITY_INSERT [dbo].[course] OFF
SET IDENTITY_INSERT [dbo].[sc] ON 

INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (1, 1, 1, CAST(100.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (2, 3, 2, CAST(98.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (3, 4, 3, CAST(79.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (4, 5, 3, CAST(81.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (5, 6, 1, CAST(99.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (6, 7, 2, CAST(88.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([scid], [sid], [cid], [grade]) VALUES (7, 9, 3, CAST(100.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [dbo].[sc] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (1, N'陈小明', N'男', 18, N'JSJ')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (2, N'李文庆', N'男', 19, N'PS')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (3, N'陈一鸣', N'男', 18, N'Java')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (4, N'郑明月', N'女', 18, N'Java')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (5, N'宋晓楠', N'女', 20, N'JSJ')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (6, N'赵英', N'女', 17, N'PS')
INSERT [dbo].[student] ([sid], [name], [sex], [age], [dept]) VALUES (7, N'张明', N'男', 20, N'Java')
SET IDENTITY_INSERT [dbo].[student] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__course__72E12F1B7AA62D47]    Script Date: 2017/12/20 17:57:24 ******/
ALTER TABLE [dbo].[course] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sc]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[course] ([cid])
GO
ALTER TABLE [dbo].[sc]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[student] ([sid])
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD CHECK  ((len([name])>(1)))
GO
