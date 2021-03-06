/****** Object:  Table [dbo].[course]    Script Date: 2017/12/20 18:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[cid] [char](4) NOT NULL,
	[cname] [varchar](20) NOT NULL,
	[cpno] [char](4) NULL,
	[credit] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[cname] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[sc]    Script Date: 2017/12/20 18:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sc](
	[sid] [char](6) NOT NULL,
	[cid] [char](4) NOT NULL,
	[Grade] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[student]    Script Date: 2017/12/20 18:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[sid] [char](6) NOT NULL,
	[sname] [varchar](8) NULL,
	[sex] [char](2) NOT NULL DEFAULT ('男'),
	[age] [smallint] NULL,
	[sdept] [varchar](15) NULL,
	[sbirthdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
ALTER TABLE [dbo].[sc]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[course] ([cid])
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD CHECK  ((len([sname])>(1)))
GO
