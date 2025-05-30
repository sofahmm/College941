USE [master]
GO
/****** Object:  Database [College ]    Script Date: 14.05.2025 20:26:24 ******/
CREATE DATABASE [College ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'College', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\College .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'College _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\College _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [College ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [College ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [College ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [College ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [College ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [College ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [College ] SET ARITHABORT OFF 
GO
ALTER DATABASE [College ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [College ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [College ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [College ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [College ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [College ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [College ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [College ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [College ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [College ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [College ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [College ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [College ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [College ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [College ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [College ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [College ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [College ] SET RECOVERY FULL 
GO
ALTER DATABASE [College ] SET  MULTI_USER 
GO
ALTER DATABASE [College ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [College ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [College ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [College ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [College ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [College ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'College ', N'ON'
GO
ALTER DATABASE [College ] SET QUERY_STORE = OFF
GO
USE [College ]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 14.05.2025 20:26:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CountPeople] [nvarchar](max) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sudent]    Script Date: 14.05.2025 20:26:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sudent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](max) NULL,
	[IdGroup] [int] NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sudent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([ID], [Name], [CountPeople]) VALUES (1, N'941-ИС', N'22')
INSERT [dbo].[Group] ([ID], [Name], [CountPeople]) VALUES (2, N'931-ИС', N'20')
INSERT [dbo].[Group] ([ID], [Name], [CountPeople]) VALUES (3, N'932-ИС', N'20')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Sudent] ON 

INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (1, N'Иванов', N'Иван', N'Иванович', 1, N'123', N'321')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (2, N'Евдокимова ', N'Евдокинья', N'Евдокимовна', 1, N'456', N'654')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (3, N'Сидоров', N'Сидр', N'Сидорович', 2, N'789', N'987')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (4, N'Петров', N'Петр', N'Петрович', 2, N'000', N'000')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (5, N'Кириллов', N'Кирилл', N'Кириллович', 3, N'111', N'111')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (6, N'Михеева', N'Мария', N'Мариевна', 3, N'777', N'777')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (7, N'test', N'test', N'test', 2, N'222', N'222')
INSERT [dbo].[Sudent] ([ID], [Surname], [Name], [Patronymic], [IdGroup], [Login], [Password]) VALUES (8, N'qqq', N'qqq', N'qqq', 3, N'qqq', N'qqq')
SET IDENTITY_INSERT [dbo].[Sudent] OFF
GO
ALTER TABLE [dbo].[Sudent]  WITH CHECK ADD  CONSTRAINT [FK_Sudent_Group] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[Sudent] CHECK CONSTRAINT [FK_Sudent_Group]
GO
USE [master]
GO
ALTER DATABASE [College ] SET  READ_WRITE 
GO
