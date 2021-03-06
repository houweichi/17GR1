USE [guajia]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/19/2017 18:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[name] [nchar](10) NULL,
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[age] [int] NULL,
	[ege] [nchar](10) NULL,
	[zhuzhi] [nchar](10) NULL,
	[class] [nchar](10) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kecheng1]    Script Date: 12/19/2017 18:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kecheng1](
	[kid] [int] IDENTITY(1,1) NOT NULL,
	[kencheng] [nchar](10) NULL,
	[fuke] [nchar](10) NULL,
 CONSTRAINT [PK_kecheng1] PRIMARY KEY CLUSTERED 
(
	[kid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fenshu]    Script Date: 12/19/2017 18:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fenshu](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[fenshu] [int] NULL,
	[kid] [int] NULL,
	[sid] [int] NULL,
	[fenshu1] [int] NULL,
 CONSTRAINT [PK_fenshu] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_fenshu_kecheng1]    Script Date: 12/19/2017 18:10:24 ******/
ALTER TABLE [dbo].[fenshu]  WITH CHECK ADD  CONSTRAINT [FK_fenshu_kecheng1] FOREIGN KEY([kid])
REFERENCES [dbo].[kecheng1] ([kid])
GO
ALTER TABLE [dbo].[fenshu] CHECK CONSTRAINT [FK_fenshu_kecheng1]
GO
