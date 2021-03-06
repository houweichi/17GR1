USE [master]
GO
/****** Object:  Database [school]    Script Date: 2017/12/20 18:14:04 ******/
CREATE DATABASE [school]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'school', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\school.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'school_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\school_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [school] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [school].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [school] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [school] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [school] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [school] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [school] SET ARITHABORT OFF 
GO
ALTER DATABASE [school] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [school] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [school] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [school] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [school] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [school] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [school] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [school] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [school] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [school] SET  DISABLE_BROKER 
GO
ALTER DATABASE [school] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [school] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [school] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [school] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [school] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [school] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [school] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [school] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [school] SET  MULTI_USER 
GO
ALTER DATABASE [school] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [school] SET DB_CHAINING OFF 
GO
ALTER DATABASE [school] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [school] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [school] SET DELAYED_DURABILITY = DISABLED 
GO
USE [school]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2017/12/20 18:14:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cid] [int] NOT NULL,
	[cname] [varchar](20) NOT NULL,
	[cpno] [char](4) NOT NULL,
	[ccredit] [tinyint] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sc]    Script Date: 2017/12/20 18:14:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sc](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[grade] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 2017/12/20 18:14:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [char](6) NOT NULL,
	[sname] [varchar](50) NOT NULL,
	[ssex] [nchar](10) NOT NULL,
	[sage] [smallint] NOT NULL,
	[sdept] [varchar](50) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (1, N'数据库原理', N'体育', 8)
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (2, N'JAVA', N'音乐', 9)
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (3, N'SQL', N'美术', 7)
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (4, N'数据库原理', N'美术', 8)
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (5, N'SQL', N'音乐', 10)
INSERT [dbo].[course] ([cid], [cname], [cpno], [ccredit]) VALUES (6, N'数据库原理', N'音乐', 9)
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (1, 1, CAST(86.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (2, 2, CAST(65.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (3, 3, CAST(54.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (4, 4, CAST(98.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (5, 5, CAST(62.00 AS Decimal(12, 2)))
INSERT [dbo].[sc] ([sid], [cid], [grade]) VALUES (6, 6, CAST(31.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (1, N'4001  ', N'张三', N'男         ', 20, N'SX')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (2, N'4002  ', N'李四', N'女         ', 21, N'JSJ')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (3, N'4003  ', N'王二', N'男         ', 22, N'SX')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (4, N'4004  ', N'麻子', N'男         ', 22, N'SX')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (5, N'4005  ', N'小明', N'女         ', 28, N'JSJ')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (6, N'4006  ', N'大天明', N'女         ', 29, N'SX')
INSERT [dbo].[student] ([sid], [xuehao], [sname], [ssex], [sage], [sdept]) VALUES (7, N'4007  ', N'王明', N'男         ', 90, N'SX')
SET IDENTITY_INSERT [dbo].[student] OFF
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cid])
REFERENCES [dbo].[course] ([cid])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sid])
REFERENCES [dbo].[student] ([sid])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
USE [master]
GO
ALTER DATABASE [school] SET  READ_WRITE 
GO
