USE [master]
GO
/****** Object:  Database [MySchool]    Script Date: 6/30/2025 10:10:29 PM ******/
CREATE DATABASE [MySchool]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MySchool', FILENAME = N'C:\Users\viktor\MySchool.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MySchool_log', FILENAME = N'C:\Users\viktor\MySchool_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MySchool] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MySchool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MySchool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MySchool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MySchool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MySchool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MySchool] SET ARITHABORT OFF 
GO
ALTER DATABASE [MySchool] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MySchool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MySchool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MySchool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MySchool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MySchool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MySchool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MySchool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MySchool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MySchool] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MySchool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MySchool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MySchool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MySchool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MySchool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MySchool] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MySchool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MySchool] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MySchool] SET  MULTI_USER 
GO
ALTER DATABASE [MySchool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MySchool] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MySchool] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MySchool] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MySchool] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MySchool] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MySchool] SET QUERY_STORE = OFF
GO
USE [MySchool]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassGuidance]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassGuidance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](5) NOT NULL,
	[GradeId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK_ClassGuidance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Development]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Development](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[DevelopmentCourseId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Development] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevelopmentCourse]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevelopmentCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_DevelopmentCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[OrganizationId] [int] NULL,
	[SpecialtyId] [int] NULL,
	[QualificationId] [int] NULL,
	[DegreeId] [int] NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[GivenName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[CareerStart] [date] NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualification]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
 CONSTRAINT [PK_Qualification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retraining]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retraining](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[RetrainingCourseId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Retraining] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RetrainingCourse]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RetrainingCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[OrgranizationId] [int] NOT NULL,
 CONSTRAINT [PK_RetrainingCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialty]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Specialty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[PositionId] [int] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/30/2025 10:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[PasswordHash] [binary](32) NOT NULL,
	[EmployeeId] [int] NULL,
	[RoleId] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Is2faOn] [bit] NOT NULL,
	[Secret] [varchar](max) NULL,
	[Salt] [binary](16) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (1, 12, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (2, 12, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (3, 12, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (4, 12, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (5, 12, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (6, 13, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (7, 13, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (8, 13, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (9, 13, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (10, 13, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (11, 14, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (12, 14, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (13, 14, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (14, 14, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (15, 14, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (16, 15, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (17, 15, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (18, 15, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (19, 15, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (20, 15, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (21, 16, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (22, 16, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (23, 16, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (24, 16, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (25, 16, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (26, 17, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (27, 17, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (28, 17, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (29, 17, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (30, 17, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (31, 18, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (32, 18, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (33, 18, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (34, 18, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (35, 18, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (36, 19, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (37, 19, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (38, 19, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (39, 19, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (40, 19, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (41, 20, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (42, 20, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (43, 20, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (44, 20, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (45, 20, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (46, 21, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (47, 21, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (48, 21, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (49, 21, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (50, 21, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (51, 22, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (52, 22, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (53, 22, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (54, 22, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (55, 22, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (56, 23, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (57, 23, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (58, 23, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (59, 23, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (60, 23, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (61, 24, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (62, 24, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (63, 24, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (64, 24, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (65, 24, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (66, 25, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (67, 25, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (68, 25, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (69, 25, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (70, 25, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (71, 26, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (72, 26, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (73, 26, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (74, 26, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (75, 26, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (76, 26, 6)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (77, 26, 7)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (78, 27, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (79, 27, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (80, 27, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (81, 27, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (82, 27, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (83, 28, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (84, 28, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (85, 28, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (86, 28, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (87, 28, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (88, 29, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (89, 29, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (90, 29, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (91, 29, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (92, 29, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (93, 30, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (94, 30, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (95, 30, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (96, 30, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (97, 30, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (98, 31, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (99, 31, 2)
GO
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (100, 31, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (101, 31, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (102, 31, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (103, 32, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (104, 32, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (105, 32, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (106, 32, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (107, 32, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (108, 33, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (109, 33, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (110, 33, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (111, 33, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (112, 33, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (113, 34, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (114, 34, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (115, 34, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (116, 34, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (117, 34, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (118, 34, 6)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (119, 35, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (120, 35, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (121, 35, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (122, 35, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (123, 35, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (124, 36, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (125, 36, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (126, 36, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (127, 36, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (128, 36, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (129, 37, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (130, 37, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (131, 37, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (132, 37, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (133, 37, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (134, 38, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (135, 38, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (136, 38, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (137, 38, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (138, 38, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (139, 39, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (140, 39, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (141, 39, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (142, 39, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (143, 39, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (144, 40, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (145, 40, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (146, 40, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (147, 40, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (148, 40, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (149, 41, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (150, 41, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (151, 41, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (152, 41, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (153, 41, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (154, 42, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (155, 42, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (156, 42, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (157, 42, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (158, 42, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (159, 43, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (160, 43, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (161, 43, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (162, 43, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (163, 43, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (164, 44, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (165, 44, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (166, 44, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (167, 44, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (168, 44, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (169, 45, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (170, 45, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (171, 45, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (172, 45, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (173, 45, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (174, 46, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (175, 46, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (176, 46, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (177, 46, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (178, 46, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (179, 47, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (180, 47, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (181, 47, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (182, 47, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (183, 47, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (184, 48, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (185, 48, 2)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (186, 48, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (187, 48, 4)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (188, 48, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (189, 49, 8)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (190, 50, 8)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (191, 51, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (192, 51, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (193, 51, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (194, 51, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (195, 52, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (196, 52, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (197, 52, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (198, 52, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (199, 53, 3)
GO
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (200, 53, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (201, 53, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (202, 53, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (203, 53, 13)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (204, 53, 14)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (205, 55, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (206, 55, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (207, 55, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (208, 55, 13)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (209, 55, 14)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (210, 56, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (211, 56, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (212, 56, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (213, 56, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (214, 57, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (215, 57, 10)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (216, 57, 11)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (217, 57, 12)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (218, 58, 3)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (219, 53, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (220, 53, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (221, 60, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (222, 60, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (223, 61, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (224, 61, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (225, 62, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (226, 62, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (227, 63, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (228, 63, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (229, 64, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (230, 64, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (231, 65, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (232, 65, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (233, 66, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (234, 66, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (235, 67, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (236, 67, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (237, 68, 1)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (238, 68, 15)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (239, 63, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (240, 70, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (241, 71, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (242, 72, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (243, 73, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (244, 74, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (245, 75, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (246, 76, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (247, 77, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (248, 78, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (249, 73, 16)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (250, 80, 17)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (251, 81, 17)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (252, 82, 18)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (253, 83, 13)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (254, 84, 20)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (255, 85, 20)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (256, 86, 13)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (257, 86, 18)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (258, 86, 21)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (259, 87, 13)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (260, 88, 22)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (261, 88, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (262, 88, 24)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (263, 83, 25)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (264, 30, 22)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (265, 30, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (266, 31, 22)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (267, 31, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (268, 32, 22)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (269, 32, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (270, 32, 26)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (271, 33, 22)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (272, 33, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (273, 34, 27)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (274, 35, 27)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (275, 36, 28)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (276, 37, 28)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (277, 37, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (278, 38, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (279, 33, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (280, 100, 5)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (281, 101, 28)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (282, 102, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (283, 103, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (284, 104, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (285, 105, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (286, 106, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (287, 107, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (288, 103, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (289, 110, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (290, 111, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (291, 112, 23)
INSERT [dbo].[Assignment] ([Id], [StaffId], [SubjectId]) VALUES (292, 117, 27)
SET IDENTITY_INSERT [dbo].[Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassGuidance] ON 

INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (1, N'1-1', 1, 37)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (2, N'1-2', 1, 24)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (3, N'1-3', 1, 31)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (4, N'1-4', 1, 44)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (5, N'1-5', 1, 47)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (6, N'2-1', 2, 23)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (7, N'2-2', 2, 16)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (8, N'2-3', 2, 12)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (9, N'2-4', 2, 20)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (10, N'2-5', 2, 42)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (11, N'2-6', 2, 29)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (12, N'2-7', 2, 43)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (13, N'2-8', 2, 40)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (14, N'2-9', 2, 28)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (15, N'3-1', 3, 36)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (16, N'3-2', 3, 25)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (17, N'3-3', 3, 19)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (18, N'3-4', 3, 27)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (19, N'3-5', 3, 46)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (20, N'3-6', 3, 14)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (21, N'3-7', 3, 35)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (22, N'3-8', 3, 38)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (23, N'3-9', 3, 13)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (24, N'3-10', 3, 41)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (25, N'4-1', 4, 18)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (26, N'4-2', 4, 32)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (27, N'4-3', 4, 15)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (28, N'4-4', 4, 26)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (29, N'4-5', 4, 22)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (30, N'4-6', 4, 33)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (31, N'4-7', 4, 17)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (32, N'4-8', 4, 39)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (33, N'4-9', 4, 30)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (34, N'5-1', 5, 90)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (35, N'5-2', 5, 56)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (36, N'5-3', 5, 76)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (37, N'6-1', 6, 73)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (38, N'6-2', 6, 83)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (39, N'6-3', 6, 64)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (40, N'6-4', 6, 8)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (41, N'7-1', 7, 5)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (42, N'7-2', 7, 68)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (43, N'7-3', 7, 95)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (44, N'7-4', 7, 61)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (45, N'7-5', 7, 79)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (46, N'8-1', 8, 119)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (47, N'8-2', 8, 75)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (48, N'8-3', 8, 93)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (49, N'8-4', 8, 82)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (50, N'8-5', 8, 60)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (51, N'9-1', 9, 110)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (52, N'9-2', 9, 98)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (53, N'9-3', 9, 62)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (54, N'9-4', 9, 50)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (55, N'10-1', 10, 85)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (56, N'10-2', 10, 66)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (57, N'11-1', 11, 54)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (58, N'11-2', 11, 53)
INSERT [dbo].[ClassGuidance] ([Id], [Title], [GradeId], [EmployeeId]) VALUES (1005, N'11-3', 11, 85)
SET IDENTITY_INSERT [dbo].[ClassGuidance] OFF
GO
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([Id], [Title]) VALUES (1, N'высшее профессиональное')
INSERT [dbo].[Degree] ([Id], [Title]) VALUES (2, N'магистратура')
INSERT [dbo].[Degree] ([Id], [Title]) VALUES (3, N'бакалавриат')
INSERT [dbo].[Degree] ([Id], [Title]) VALUES (4, N'аспирантура')
INSERT [dbo].[Degree] ([Id], [Title]) VALUES (5, N'среднее профессиональное')
SET IDENTITY_INSERT [dbo].[Degree] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Title]) VALUES (1, N'Руководство')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (2, N'МО начальных классов')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (3, N'МО математики и информатики')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (4, N'МО филологического образования')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (5, N'МО иностранного языка')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (6, N'МО естественнонаучного цикла')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (7, N'МО общественных дисциплин')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (8, N'МО эстетического цикла')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (9, N'МО физической культуры')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (10, N'Педагоги-организаторы')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (11, N'Педагоги дополнительного образования')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (12, N'Служба сопровождения')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (13, N'Воспитатели группы продлённого дня')
INSERT [dbo].[Department] ([Id], [Title]) VALUES (14, N'Медиатека')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (1, 1, 95, 59, 30, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (2, 1, 95, 28, 10, 4)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (3, 2, 61, 14, 11, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (4, 3, 47, 10, 41, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (5, 4, 90, 13, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (6, 4, 90, 13, 42, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (7, 5, 1, 5, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (8, 6, 55, 66, 67, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (9, 7, 53, 55, 8, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (10, 8, 14, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (11, 9, 44, 58, 61, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (12, 10, 48, 66, 67, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (13, 11, 11, 39, 67, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (14, 12, 22, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (15, 13, 66, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (16, 14, 15, 32, 17, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (17, 15, 68, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (18, 16, 39, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (19, 17, 31, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (20, 18, 49, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (21, 19, 18, 40, 49, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (22, 20, 91, 26, 16, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (23, 20, NULL, 40, 49, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (24, 21, 65, 37, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (25, 22, 98, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (26, 23, 50, NULL, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (27, 24, 32, 34, 51, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (28, 25, 12, 40, 52, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (29, 26, 84, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (30, 27, 24, 7, 23, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (31, 28, 73, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (32, 29, 51, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (33, 30, 84, 6, 24, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (34, 31, 14, 20, 62, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (35, 32, 84, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (36, 33, 34, 45, 25, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (37, 34, 16, 40, 49, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (38, 35, 38, 40, 55, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (39, 35, 7, 29, 39, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (40, 36, 4, 33, 54, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (41, 37, 29, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (42, 38, 89, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (43, 39, 42, 33, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (44, 40, 16, 40, 49, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (45, 41, 74, 38, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (46, 42, 26, 31, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (47, 43, 82, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (48, 44, 75, 52, 20, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (49, 45, 13, 16, 50, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (50, 46, 23, 36, 21, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (51, 47, 99, 35, 49, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (52, 48, 69, 46, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (53, 49, 81, 38, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (54, 50, 72, 42, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (55, 51, 63, 37, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (56, 52, 41, 22, 46, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (57, 53, 5, 24, 48, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (58, 54, 71, 25, 15, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (59, 55, 82, 23, 47, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (60, 56, 80, 38, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (61, 57, 67, 21, 15, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (62, 58, 33, 61, 64, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (63, 59, 70, 47, 58, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (64, 60, 85, 47, 58, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (65, 61, 51, 47, 58, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (66, 62, 87, 61, 64, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (67, 63, 14, 38, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (68, 64, 14, 61, 58, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (69, 65, 73, 61, 64, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (70, 66, 84, 37, 3, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (71, 5, 10, 41, 56, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (72, 67, 79, 18, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (73, 68, 62, 18, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (74, 69, 23, 11, 35, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (75, 70, 81, 37, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (76, 71, 83, 18, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (77, 72, 97, 18, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (78, 73, 6, 61, 36, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (79, 74, 64, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (80, 75, 28, 49, 59, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (81, 76, 21, 53, 13, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (82, 77, 59, 19, 12, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (83, 78, 94, 65, 8, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (84, 79, 20, 56, 60, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (85, 80, 84, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (86, 81, 36, 2, 5, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (87, 82, 71, 4, 7, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (88, 83, 9, 4, 38, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (89, 84, 43, 2, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (90, 85, 76, 2, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (91, 86, 40, 15, 44, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (92, 87, 54, 66, 67, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (93, 88, 77, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (94, 89, 84, 61, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (95, 90, 88, 15, 43, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (96, 91, 78, 37, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (97, 92, 56, 27, 26, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (98, 93, 92, 9, 40, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (99, 94, 35, 57, 9, 1)
GO
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (100, 95, 45, 3, 28, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (101, 96, 19, 17, 45, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (102, 97, 84, 62, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (103, 98, 60, 47, 34, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (104, 99, 84, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (105, 100, 52, 58, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (106, 101, 57, 30, 63, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (107, 102, 93, 60, 31, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (108, 103, 14, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (109, 104, 96, 54, 33, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (110, 105, 93, 58, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (111, 106, 93, 58, 4, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (112, 107, 93, 58, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (113, 108, 30, 63, 66, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (114, 109, 84, 46, 3, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (115, 8, 17, 51, 27, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (116, 110, 46, 48, 57, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (117, 111, 86, 43, 65, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (118, 112, 8, 12, 1, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (119, 113, 93, 60, 32, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (120, 114, 93, 58, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (121, 115, 93, 60, 31, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (122, 116, 2, 64, 2, 4)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (123, 117, 58, 58, 18, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (124, 118, 93, 1, 29, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (125, 119, 14, 46, 3, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (126, 120, 84, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (127, 121, 84, 50, 14, 2)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (128, 122, 37, NULL, 37, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (129, 123, 81, 45, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (130, 124, 84, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (131, 125, 3, 66, 67, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (132, 125, NULL, 40, 53, 5)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (133, 126, 73, 46, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (134, 127, 74, 6, 22, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (135, 128, 25, 44, 19, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (136, 129, 79, 9, 40, 1)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (137, 130, 84, 37, 3, 3)
INSERT [dbo].[Education] ([Id], [EmployeeId], [OrganizationId], [SpecialtyId], [QualificationId], [DegreeId]) VALUES (138, 131, 27, 8, 6, 5)
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (1, N'Соколов', N'Иван', N'Александрович', 0, CAST(N'2011-01-01' AS Date), N'СоколовИА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (2, N'Кузнецов', N'Алексей', N'Дмитриевич', 0, CAST(N'2012-01-01' AS Date), N'КузнецовАД')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (3, N'Морозова', N'Елена', N'Сергеевна', 1, CAST(N'1989-01-01' AS Date), N'МорозоваЕС')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (4, N'Волкова', N'Анна', N'Игоревна', 1, CAST(N'2013-01-01' AS Date), N'ВолковаАИ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (5, N'Новикова', N'Татьяна', N'Викторовна', 1, CAST(N'2001-01-01' AS Date), N'НовиковаТВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (6, N'Козлова', N'Мария', N'Олеговна', 1, CAST(N'1996-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (7, N'Лебедева', N'Светлана', N'Анатольевна', 1, CAST(N'2007-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (8, N'Семенова', N'Ольга', N'Владимировна', 1, CAST(N'2015-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (9, N'Егорова', N'Надежда', N'Алексеевна', 1, CAST(N'2011-01-01' AS Date), N'ЕгороваНА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (10, N'Павлов', N'Денис', N'Романович', 0, CAST(N'2022-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (11, N'Федорова', N'Виктория', N'Андреевна', 1, CAST(N'2017-01-01' AS Date), N'ФедороваВА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (12, N'Медведева', N'Любовь', N'Борисовна', 1, CAST(N'2009-01-01' AS Date), N'МедведеваЛБ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (13, N'Романова', N'Алина', N'Геннадьевна', 1, CAST(N'2014-01-01' AS Date), N'РомановаАГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (14, N'Орлова', N'Юлия', N'Станиславовна', 1, CAST(N'2022-01-01' AS Date), N'ОрловаЮС')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (15, N'Андреева', N'Кристина', N'Артемовна', 1, CAST(N'2015-01-01' AS Date), N'АндрееваКА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (16, N'Макарова', N'Анастасия', N'Валерьевна', 1, CAST(N'2001-01-01' AS Date), N'МакароваАВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (17, N'Захарова', N'Дарья', N'Михайловна', 1, CAST(N'2007-01-01' AS Date), N'ЗахароваДМ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (18, N'Степанова', N'Галина', N'Федоровна', 1, CAST(N'1996-01-01' AS Date), N'СтепановаГФ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (19, N'Ковалева', N'Ангелина', N'Ильинична', 1, CAST(N'2020-01-01' AS Date), N'КовалеваАИ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (20, N'Николаева', N'Лариса', N'Степановна', 1, CAST(N'2010-01-01' AS Date), N'НиколаеваЛС')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (21, N'Ильина', N'Валентина', N'Григорьевна', 1, CAST(N'2017-01-01' AS Date), N'ИльинаВГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (22, N'Белова', N'Оксана', N'Романовна', 1, CAST(N'2001-01-01' AS Date), N'БеловаОР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (23, N'Алексеева', N'Ирина', N'Витальевна', 1, CAST(N'1992-01-01' AS Date), N'АлексееваИВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (24, N'Сергеева', N'Наталия', N'Константиновна', 1, CAST(N'1987-01-01' AS Date), N'СергееваНК')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (25, N'Гусева', N'Евгения', N'Васильевна', 1, CAST(N'2007-01-01' AS Date), N'ГусеваЕВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (26, N'Яковлева', N'Арина', N'Леонидовна', 1, CAST(N'2022-01-01' AS Date), N'ЯковлеваАЛ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (27, N'Фролова', N'Людмила', N'Павловна', 1, CAST(N'2012-01-01' AS Date), N'ФроловаЛП')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (28, N'Герасимова', N'Жанна', N'Анатольевна', 1, CAST(N'2014-01-01' AS Date), N'ГерасимоваЖА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (29, N'Пономарева', N'Алла', N'Борисовна', 1, CAST(N'1994-01-01' AS Date), N'ПономареваАБ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (30, N'Владимирова', N'София', N'Денисовна', 1, CAST(N'2021-01-01' AS Date), N'ВладимироваСД')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (31, N'Тихонова', N'Валерия', N'Аркадьевна', 1, CAST(N'2009-01-01' AS Date), N'ТихоноваВА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (32, N'Данилова', N'Анжела', N'Рудольфовна', 1, CAST(N'2022-01-01' AS Date), N'ДаниловаАР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (33, N'Жукова', N'Элина', N'Тимуровна', 1, CAST(N'2013-01-01' AS Date), N'ЖуковаЭТ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (34, N'Наумова', N'Алиса', N'Романовна', 1, CAST(N'2021-01-01' AS Date), N'НаумоваАР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (35, N'Широкова', N'Зоя', N'Геннадиевна', 1, CAST(N'1995-01-01' AS Date), N'ШироковаЗГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (36, N'Борисова', N'Вероника', N'Ярославовна', 1, CAST(N'1991-01-01' AS Date), N'БорисоваВЯ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (37, N'Королева', N'Лидия', N'Святославовна', 1, CAST(N'1997-01-01' AS Date), N'КоролеваЛС')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (38, N'Зайцева', N'Регина', N'Игоревна', 1, CAST(N'2012-01-01' AS Date), N'ЗайцеваРИ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (39, N'Ермакова', N'Диана', N'Руслановна', 1, CAST(N'1997-01-01' AS Date), N'ЕрмаковаДР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (40, N'Сорокина', N'Ксения', N'Валерьевна', 1, CAST(N'2020-01-01' AS Date), N'СорокинаКВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (41, N'Маркова', N'Эвелина', N'Ростиславовна', 1, CAST(N'2022-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (42, N'Куликова', N'Тамара', N'Георгиевна', 1, CAST(N'1991-01-01' AS Date), N'КуликоваТГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (43, N'Ларина', N'Анфиса', N'Семеновна', 1, CAST(N'2019-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (44, N'Симонова', N'Злата', N'Вадимовна', 1, CAST(N'2005-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (45, N'Михайлова', N'Ульяна', N'Даниловна', 1, CAST(N'2019-01-01' AS Date), N'МихайловаУД')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (46, N'Филиппова', N'Кира', N'Артуровна', 1, CAST(N'2003-01-01' AS Date), N'ФилипповаКА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (47, N'Комарова', N'Лилия', N'Филипповна', 1, CAST(N'1989-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (48, N'Дмитриева', N'Алиса', N'Вячеславовна', 1, CAST(N'2018-01-01' AS Date), N'ДмитриеваАВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (49, N'Осипова', N'Карина', N'Станиславовна', 1, CAST(N'2024-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (50, N'Матусевич', N'Эльвира', N'Романовна', 1, CAST(N'2019-01-01' AS Date), N'МатусевичЭР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (51, N'Гордеева', N'Яна', N'Валерьевна', 1, CAST(N'2015-01-01' AS Date), N'ГордееваЯВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (52, N'Суханова', N'Раиса', N'Геннадиевна', 1, CAST(N'1985-01-01' AS Date), N'СухановаРГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (53, N'Котова', N'Зоя', N'Ринатовна', 1, CAST(N'1997-01-01' AS Date), N'КотоваЗР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (54, N'Щербакова', N'Агата', N'Георгиевна', 1, CAST(N'2011-01-01' AS Date), N'ЩербаковаАГ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (55, N'Куприянова', N'Роза', N'Федоровна', 1, CAST(N'2014-01-01' AS Date), N'КуприяноваРФ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (56, N'Терентьева', N'Элина', N'Ильинична', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (57, N'Коновалова', N'Снежана', N'Романовна', 1, CAST(N'2017-01-01' AS Date), N'КоноваловаСР')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (58, N'Гаврилова', N'Инга', N'Валентиновна', 1, CAST(N'2012-01-01' AS Date), N'ГавриловаИВ')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (59, N'Тарасова', N'Людмила', N'Рудольфовна', 1, CAST(N'2013-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (60, N'Соловьева', N'Ангелина', N'Андреевна', 1, CAST(N'2011-01-01' AS Date), N'СоловьеваАА')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (61, N'Власова', N'Маргарита', N'Анатольевна', 1, CAST(N'1995-01-01' AS Date), N'ВласоваМА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (62, N'Павлова', N'Василиса', N'Руслановна', 1, CAST(N'2016-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (63, N'Антонова', N'Алиса', N'Григорьевна', 1, CAST(N'2022-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (64, N'Титова', N'Клавдия', N'Сергеевна', 1, CAST(N'1999-01-01' AS Date), N'ТитоваКС.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (65, N'Прохорова', N'Алла', N'Витальевна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (66, N'Назарова', N'Вера', N'Алексеевна', 1, CAST(N'2012-01-01' AS Date), N'НазароваВА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (67, N'Полякова', N'Ярослава', N'Аркадьевна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (68, N'Фомина', N'Полина', N'Геннадиевна', 1, CAST(N'2020-01-01' AS Date), N'ФоминаПГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (69, N'Воронова', N'Алина', N'Романовна', 1, CAST(N'2007-01-01' AS Date), N'ВороноваАР.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (70, N'Максимов', N'Александр', N'Викторович', 0, CAST(N'2016-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (71, N'Крылова', N'Анастасия', N'Андреевна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (72, N'Белоусова', N'Евгения', N'Владимировна', 1, CAST(N'2015-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (73, N'Кудрявцева', N'Наиля', N'Ринатовна', 1, CAST(N'1997-01-01' AS Date), N'КудрявцеваНР.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (74, N'Мартынова', N'Виктория', N'Олеговна', 1, CAST(N'2021-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (75, N'Савина', N'Ирина', N'Алексеевна', 1, CAST(N'2012-01-01' AS Date), N'СавинаИА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (76, N'Калинина', N'Эльвира', N'Руслановна', 1, CAST(N'2006-01-01' AS Date), N'КалининаЭР.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (77, N'Исаева', N'Юлия', N'Геннадиевна', 1, CAST(N'2003-01-01' AS Date), N'ИсаеваЮГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (78, N'Громов', N'Сергей', N'Анатольевич', 0, CAST(N'2017-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (79, N'Лаптева', N'Олеся', N'Сергеевна', 1, CAST(N'2007-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (80, N'Зимина', N'Владислава', N'Игоревна', 1, CAST(N'2021-01-01' AS Date), N'ЗиминаВИ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (81, N'Кузьмина', N'Ольга', N'Денисовна', 1, CAST(N'2013-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (82, N'Мельникова', N'Оксана', N'Александровна', 1, CAST(N'2002-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (83, N'Блохина', N'Светлана', N'Васильевна', 1, CAST(N'2002-01-01' AS Date), N'БлохинаСВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (84, N'Носкова', N'Ольга', N'Андреевна', 1, CAST(N'1997-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (85, N'Семенов', N'Юрий', N'Игоревич', 0, CAST(N'2020-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (86, N'Крылов', N'Михаил', N'Анатольевич', 1, CAST(N'2019-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (87, N'Беляев', N'Константин', N'Дмитриевич', 0, CAST(N'1983-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (88, N'Козлова', N'Александра', N'Алексеевна', 1, CAST(N'2021-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (89, N'Горшкова', N'Варвара', N'Сергеевна', 1, CAST(N'2024-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (90, N'Кузьмина', N'Екатерина', N'Алексеевна', 1, CAST(N'2012-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (91, N'Мартынова', N'Ирина', N'Валерьевна', 1, CAST(N'2021-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (92, N'Силина', N'Татьяна', N'Геннадиевна', 1, CAST(N'1992-01-01' AS Date), N'СилинаТГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (93, N'Куликова', N'Ольга', N'Андреевна', 1, CAST(N'2015-01-01' AS Date), N'КуликоваОА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (94, N'Соколова', N'Юлия', N'Сергеевна', 1, CAST(N'2020-01-01' AS Date), N'СоколоваЮС.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (95, N'Орлов', N'Андрей', N'Валерьевич', 0, CAST(N'2019-01-01' AS Date), N'ОрловАВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (96, N'Маслова', N'Елена', N'Романовна', 1, CAST(N'2023-01-01' AS Date), N'МасловаЕР.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (97, N'Горбунова', N'Екатерина', N'Анатольевна', 1, CAST(N'2017-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (98, N'Логинова', N'Вероника', N'Геннадиевна', 1, CAST(N'2002-01-01' AS Date), N'ЛогиноваВГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (99, N'Кулагина', N'Виктория', N'Алексеевна', 1, CAST(N'2024-01-01' AS Date), NULL)
GO
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (100, N'Тимофеев', N'Артем', N'Андреевич', 0, CAST(N'2015-01-01' AS Date), N'ТимофеевАА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (101, N'Кузьмина', N'Светлана', N'Романовна', 1, CAST(N'2017-01-01' AS Date), N'КузьминаСР.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (102, N'Морозов', N'Дмитрий', N'Алексеевич', 0, CAST(N'2015-01-01' AS Date), N'МорозовДА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (103, N'Павлова', N'Екатерина', N'Викторовна', 1, CAST(N'2017-01-01' AS Date), N'ПавловаЕВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (104, N'Сидорова', N'Анна', N'Александровна', 0, CAST(N'2018-01-01' AS Date), N'СидороваАА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (105, N'Громова', N'Мария', N'Дмитриевна', 1, CAST(N'2020-01-01' AS Date), N'ГромоваМД.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (106, N'Мельникова', N'Алина', N'Сергеевна', 1, CAST(N'2014-01-01' AS Date), N'МельниковаАС.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (107, N'Петров', N'Владимир', N'Анатольевич', 0, CAST(N'2022-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (108, N'Васильева', N'Ольга', N'Андреевна', 1, CAST(N'2013-01-01' AS Date), N'ВасильеваОА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (109, N'Максимова', N'Евгения', N'Павловна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (110, N'Орлова', N'Татьяна', N'Валерьевна', 1, CAST(N'2011-01-01' AS Date), N'ОрловаТВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (111, N'Кузнецова', N'Юлия', N'Игоревна', 1, CAST(N'2013-01-01' AS Date), N'КузнецоваЮИ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (112, N'Фёдорова', N'Светлана', N'Александровна', 1, CAST(N'2021-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (113, N'Смирнов', N'Алексей', N'Владимирович', 0, CAST(N'2022-01-01' AS Date), N'СмирновАВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (114, N'Иванов', N'Максим', N'Денисович', 0, CAST(N'2023-01-01' AS Date), N'ИвановМД.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (115, N'Григорьев', N'Павел', N'Алексеевич', 0, CAST(N'2016-01-01' AS Date), N'ГригорьевПА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (116, N'Морозов', N'Евгений', N'Сергеевич', 0, CAST(N'2015-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (117, N'Данилова', N'Мария', N'Владимировна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (118, N'Соловьёва', N'Анастасия', N'Григорьевна', 1, CAST(N'2009-01-01' AS Date), N'СоловьёваАГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (119, N'Волкова', N'Анна', N'Андреевна', 1, CAST(N'2017-01-01' AS Date), N'ВолковаАА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (120, N'Семенова', N'Марина', N'Петровна', 1, CAST(N'2013-01-01' AS Date), N'СеменоваМП.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (121, N'Макарова', N'Валерия', N'Викторовна', 1, CAST(N'2024-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (122, N'Киселёва', N'Эльвира', N'Валерьевна', 1, CAST(N'2000-01-01' AS Date), N'КиселёваЭВ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (123, N'Егорова', N'Алёна', N'Анатольевна', 1, CAST(N'2020-01-01' AS Date), N'ЕгороваАА.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (124, N'Попова', N'Юлия', N'Юрьевна', 1, CAST(N'2023-01-01' AS Date), N'ПоповаЮЮ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (125, N'Алексеева', N'Анжелика', N'Геннадьевна', 1, CAST(N'2017-01-01' AS Date), N'АлексееваАГ.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (126, N'Кузьмина', N'Юлия', N'Владимировна', 1, CAST(N'2018-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (127, N'Гаврилова', N'Елена', N'Семеновна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (128, N'Тихонова', N'Ольга', N'Анатольевна', 1, CAST(N'2008-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (129, N'Михайлова', N'Инна', N'Владимировна', 1, CAST(N'2011-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (130, N'Николаева', N'Анастасия', N'Дмитриевна', 1, CAST(N'2021-01-01' AS Date), N'НиколаеваАД.jpg')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (131, N'Зайцева', N'Елена', N'Анатольевна', 1, CAST(N'2023-01-01' AS Date), NULL)
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (132, N'Белов', N'Пётр', N'Максимович', 0, NULL, N'БеловПМ.png')
INSERT [dbo].[Employee] ([Id], [Surname], [GivenName], [Patronymic], [Gender], [CareerStart], [Image]) VALUES (133, N'Романов', N'Иван', N'Андреевич', 0, CAST(N'2000-01-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([Id], [Title]) VALUES (1, N'1 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (2, N'2 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (3, N'3 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (4, N'4 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (5, N'5 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (6, N'6 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (7, N'7 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (8, N'8 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (9, N'9 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (10, N'10 параллель')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (11, N'11 параллель')
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (1, N'Автономная некоммерческая организация высшего образования "Национальный открытый институт г. Санкт-Петербурга"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (2, N'Аспирантура Федеральное государственное образовательное учреждение высшего профессионального образования "Санкт-Петербургский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (3, N'Балтийский институт экологии, политики и права')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (4, N'Барнаульский государственный педагогический университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (5, N'Башкирский государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (6, N'Башкирский государственный педагогический университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (7, N'Биробиджанский государственный педагогический университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (8, N'Бюджетное профессиональное образовательное учреждение Вологодской области "Вологодский областной колледж искусств"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (9, N'Волгоградский государственный педагогический университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (10, N'Волгоградское высшее педагогическое училище (колледж) №2')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (11, N'Восточноукраинский национальный университет им. В.И. Даля')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (12, N'Гатчинский педагогический колледж имени К.Д. Ушинского')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (13, N'ГБПОУ педагогический колледж № 1 им. Н.А. Некрасова Санкт-Петербурга')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (14, N'Государственное автономное образовательное учреждение высшего образования Ленинградской области "Ленинградский государственный университет имени А.С. Пушкина"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (15, N'Государственное автономное профессиональное образовательное учреждение "Педагогический колледж"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (16, N'Государственное автономное профессиональное образовательное учреждение Мурманской области "Мурманский педагогический колледж"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (17, N'Государственное бюджетное профессиональное образовательное учреждение "Ленинградский областной колледж культуры и искусства"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (18, N'Государственное бюджетное профессиональное образовательное учреждение РД "Кизлярский профессионально-педагогический колледж"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (19, N'Государственное образовательное учреждение высшего профессионального образования "Алтайская государственная педагогическая академия"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (20, N'Государственное образовательное учреждение высшего профессионального образования "Барнаульский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (21, N'Государственное образовательное учреждение высшего профессионального образования "Башкирский государственный педагогический университет им. М. Акмуллы"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (22, N'Государственное образовательное учреждение высшего профессионального образования "Ленинградский государственный университет имени А.С. Пушкина"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (23, N'Государственное образовательное учреждение высшего профессионального образования "Омский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (24, N'Государственное образовательное учреждение высшего профессионального образования "Оренбургский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (25, N'Государственное образовательное учреждение высшего профессионального образования "Ставропольский государственный педагогический институт"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (26, N'Государственное образовательное учреждение высшего профессионального образования "Уральский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (27, N'Государственное учреждение Волгоградское педагогическое училище № 1')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (28, N'Государственный Западно-Казахстанский гуманитарный университет им. А.С. Пушкина')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (29, N'Государственный педагогический институт г. Сыктывкар Коми университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (30, N'ГОУ ВПО "Костромской государственный университет им. Н.А. Некрасова"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (31, N'ГОУВПО "Алтайская государственная педагогическая академия"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (32, N'ГОУВПО "Армавирский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (33, N'ГОУВПО "Кубанский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (34, N'ГОУВПО Московский государственный областной университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (35, N'Иркутский ордена Трудового Красного Знамени политехнический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (36, N'Кабардино-Балкарский государственный университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (37, N'Комсомольский-на-Амуре государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (38, N'Краевое государственное бюджетное профессиональное образовательное учреждение "Хабаровский педагогический колледж им. Героя Советского Союза Д.Л. Калараша"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (39, N'Красноярский государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (40, N'Красноярский государственный педагогический университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (41, N'Курганский государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (42, N'Кустанайский государственный университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (43, N'Кыргызский государственный национальный университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (44, N'Ленинградский государственный педагогический институт им. А.И. Герцена')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (45, N'Ленинградское высшее военно-политическое училище ПВО имени Ю.В. Андропова')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (46, N'Луганский государственный университет им. Т.Г. Шевченко')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (47, N'Магнитогорский ордена Знак Почета государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (48, N'Негосударственное образовательное учреждение высшего профессионального образования Дальневосточный институт менеджмента')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (49, N'Нерюнгринский филиал Якутского государственного университета им. М.К. Аммосова')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (50, N'Поморский государственный университет им. М.В. Ломоносова')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (51, N'Псковский государственный педагогический институт им. С.М. Кирова')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (52, N'Республиканское высшее учебное заведение "Крымский гуманитарный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (53, N'Санкт-Петербургский государственный университет технологии и дизайна')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (54, N'Санкт-Петербургский Гуманитарный университет профсоюзов')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (55, N'Санкт-Петербургский университет МВД России')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (56, N'Санкт-Петербургское государственная академия культуры')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (57, N'Санкт-Петербургское государственное бюджетное профессиональное образовательное учреждение "Училище олимпийского резерва №2 (техникум)"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (58, N'Санкт-Петербургское государственное бюджетное профессиональное образовательное учреждение "Училище олимпийского резерва № 1"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (59, N'Тверской государственный университет')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (60, N'Уссурийский государственный педагогический институт')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (61, N'ФГАОУВПО "Уральский федеральный университет имени первого Президента России Б.Н. Ельцина"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (62, N'ФГБОУ ВО "Кемеровский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (63, N'ФГБОУ ВО "Псковский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (64, N'ФГБОУ ВО "Сыктывкарский государственный университет имени Питирима Сорокина"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (65, N'ФГБОУ ВО "Мордовский государственный педагогический институт имени М.Е. Евсевьева"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (66, N'ФГБОУ ВПО "Калмыцкий государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (67, N'ФГБОУ ВПО "Санкт-Петербургский государственный морской технический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (68, N'ФГБОУ ВПО "Тверской государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (69, N'ФГБОУВО "Смоленский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (70, N'ФГБОУВПО "Оренбургский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (71, N'ФГБОУВПО "Саратовский Государственный университет имени Н.Г. Чернышевского"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (72, N'Федеральное государственное автономное образовательное учреждение высшего образования "Волгоградский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (73, N'Федеральное государственное автономное образовательное учреждение высшего образования "Национальный исследовательский Нижегородский государственный университет им. Н.И. Лобачевского"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (74, N'Федеральное государственное автономное образовательное учреждение высшего образования "Северный (Арктический) федеральный университет имени М.В. Ломоносова"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (75, N'Федеральное государственное автономное образовательное учреждение высшего образования "Южный федеральный университет город Ростов-на Дону"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (76, N'Федеральное государственное автономное образовательное учреждение высшего профессионального образования "Белгородский государственный национальный исследовательский университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (77, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Башкирский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (78, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Воронежский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (79, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Липецкий государственный педагогический университет имени П.П. Семенова -Тян-Шанского"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (80, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Нижегородский государственный педагогический университет имени Козьмы Минина"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (81, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Новгородский государственный университет имени Ярослава Мудрого"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (82, N'Федеральное Государственное бюджетное образовательное учреждение высшего образования "Новосибирский государственный педагогический университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (83, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Псковский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (84, N'Федеральное государственное бюджетное образовательное учреждение высшего образования "Российский государственный педагогический университет им. А.И. Герцена"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (85, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Брянский государственный университет имени академика И.Г. Петровского"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (86, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Государственная полярная академия"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (87, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Дальневосточный государственный гуманитарный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (88, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Калужский государственный университет им. К.Э. Циолковского"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (89, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Кузбасская государственная педагогическая академия"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (90, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Магнитогорский государственный университет им. Г.И. Носова"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (91, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Московский государственный университет экономики статистики и информатики (МЭСИ)"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (92, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования "Тульский государственный университет"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (93, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования Национальный государственный "Университет физической культуры спорта и здоровья имени П.Ф. Лесгафта  Санкт-Петербург"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (94, N'Федеральное государственное бюджетное образовательное учреждение высшего профессионального образования Южно-Российский государственный технический университет (Новочеркасский политехнический институт)')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (95, N'Федеральное государственное образовательное учреждение высшего профессионального образования "Санкт-Петербургская академия физической культуры им. П.Ф. Лесгафта"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (96, N'Федеральное государственное образовательное учреждение среднего профессионального образования "Волховский алюминиевый колледж"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (97, N'Частное образовательное учреждение высшего образования "Санкт-Петербургский университет технологий управления и экономики"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (98, N'ЧОУВО "Московский университет имени С.Ю. Витте"')
INSERT [dbo].[Organization] ([Id], [Title]) VALUES (99, N'Южно-Сахалинский государственный педагогический институт')
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Title]) VALUES (1, N'учитель')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (2, N'педагог-организатор')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (3, N'педагог дополнительного образования')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (4, N'педагог-психолог')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (5, N'воспитатель группы продлённого дня')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (6, N'педагог-библиотекарь')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (7, N'директор')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (8, N'заместитель директора по учебно-воспитательной работе (средняя и старшая школа)')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (9, N'заместитель директора по учебно-воспитательной работе')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (10, N'заместитель директора по учебно-воспитательной работе (информационно-коммуникационные технологии)')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (11, N'заместитель директора по воспитательной работе')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (12, N'заместитель директора по методической работе')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (13, N'заместитель директора по административной работе')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (14, N'заведующий ОДОД')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (15, N'заведующий бассейном')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (16, N'заведующий хозяйством')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (17, N'менеджер по персоналу')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (18, N'преподаватель-организатор')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (19, N'социальный педагог')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (20, N'советник директора по воспитанию и взаимодействию с детскими общественными объединениями')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Qualification] ON 

INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (1, N'Артист, преподаватель, концертмейстер')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (2, N'Аспирант')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (3, N'Бакалавр')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (4, N'Бакалавр физической культуры')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (5, N'Биолог, преподаватель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (6, N'Воспитатель детей дошкольного возраста')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (7, N'Географ, преподаватель географии и экономики по специальности')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (8, N'Инженер')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (9, N'Инженер-металлург')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (10, N'Иследователь. преподаватель-исследователь')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (11, N'Историк-архивист')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (12, N'Лингвист, преподаватель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (13, N'Лингвист, преподаватель немецкого языка')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (14, N'Магистр')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (15, N'Математик')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (16, N'Менеджер')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (17, N'Педагог дополнительного образования в области изобразительной деятельности и декаративно-прикладного искусства')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (18, N'Педагог по физической культуре и спорту')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (19, N'Педагог профессионального обучения')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (20, N'Педагог-дефектолог для работы с детьми дошкольного возраста с отклонениями в развитии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (21, N'Педагог-психолог')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (22, N'Преподаватель дошкольной педагогики и психологии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (23, N'Преподаватель дошкольной педагогики и психологии и учитель английского языка')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (24, N'Преподаватель дошкольной педагогики и психологии, педагог-психолог для работы с детьми дошкольного возраста')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (25, N'Психолог, Преподаватель психологии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (26, N'Руководитель народного хора')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (27, N'Руководитель творческого коллектива, преподаватель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (28, N'Социальный педагог-психолог')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (29, N'Специалист')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (30, N'Специалист по адаптивной физической культуре')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (31, N'Специалист по физической культуре и спорту')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (32, N'Специалист по физической культуре и спорту, преподаватель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (33, N'Техник')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (34, N'Учитель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (35, N'Учитель английского и французского языков')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (36, N'Учитель английского языка')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (37, N'Учитель биологии, педагог-психолог')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (38, N'Учитель географии и биологии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (39, N'Учитель и логопед школ для детей с нарушением интеллекта')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (40, N'Учитель изобразительного искусства')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (41, N'Учитель изобразительного искусства и черчения')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (42, N'Учитель информатики')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (43, N'Учитель истории')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (44, N'Учитель истории, методист краеведческой работы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (45, N'Учитель культурологии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (46, N'Учитель математики и физики средней школы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (47, N'Учитель математики и экономики')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (48, N'Учитель математики, информатики и вычислительной техники')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (49, N'Учитель начальных классов')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (50, N'Учитель начальных классов и начальных классов компенсирующего и коррекционно-развивающего образования')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (51, N'Учитель начальных классов и социальный педагог')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (52, N'Учитель начальных классов с дополнительной подготовкой в области музыкального воспитания')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (53, N'Учитель начальных классов с углубленным изучением психологии')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (54, N'Учитель начальных классов средней школы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (55, N'Учитель начальных классов, учитель русского языка 5-6 классов')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (56, N'Учитель начальных классов, учитель русского языка и литературы основной общеобразовательной школы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (57, N'Учитель русского языка и зарубежной литературы, практического психолога в заведениях просвещения')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (58, N'Учитель русского языка и литературы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (59, N'Учитель русского, английского языков и мировой литературы')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (60, N'Учитель физики и информатики')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (61, N'Учитель физической культуры среднешкольников')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (62, N'Учитель-логопед')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (63, N'Физическая культура')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (64, N'Филолог-преподаватель')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (65, N'Эколог-природопользователь')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (66, N'Экономист')
INSERT [dbo].[Qualification] ([Id], [Title]) VALUES (67, N'Юрист')
SET IDENTITY_INSERT [dbo].[Qualification] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'administrator')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'maintainer')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (3, N'editor')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (4, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialty] ON 

INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (1, N'Адаптивная физическая культура, психолого-педагогическое образование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (2, N'Биология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (3, N'Военно-политическая тактическая противовоздушной обороны')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (4, N'География')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (5, N'Государственное и муниципальное управление')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (6, N'Дошкольная педагогика и психология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (7, N'Дошкольная педагогика и психология с дополнительной специальностью иностранный язык')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (8, N'Дошкольное образование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (9, N'Изобразительное искусство')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (10, N'Изобразительное искусство и черчение')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (11, N'Иностранный язык с дополнительной специальностью')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (12, N'Инструментальное исполнительство (по видам инструментов)')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (13, N'Информатика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (14, N'Историко-архивоведение')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (15, N'История')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (16, N'Коррекционная педагогика в начальном образовании')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (17, N'Культурология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (18, N'Лингвистика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (19, N'Лингвистика и межкультурная коммуникация')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (20, N'Логопедия')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (21, N'Математика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (22, N'Математика и физика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (23, N'Математика и экономика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (24, N'Математика, информатика и вычислительная техника')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (25, N'Математика, прикладная математика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (26, N'Менеджмент организации')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (27, N'Народное художественное творчество')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (28, N'Образование и педагогические науки')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (29, N'Олигофренопедагогика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (30, N'Педагог по физической культуре и спорту')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (31, N'Педагогика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (32, N'Педагогика дополнительного образования в области изобразительной деятельности и декоративно-прикладного искусства')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (33, N'Педагогика и методика начального образования')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (34, N'Педагогика и методика начального образования с дополнительной специальностью "Социальная педагогика"')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (35, N'Педагогика и методика начального обучения')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (36, N'Педагогика и психология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (37, N'Педагогическое образование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (38, N'Педагогическое образование (с двумя профилями подготовки)')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (39, N'Правоведение')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (40, N'Преподавание в начальных классах')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (41, N'Преподавание в начальных классах. Русский язык и литература')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (42, N'Прикладная информатика')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (43, N'Природопользование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (44, N'Профессиональное обучение (дизайн)')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (45, N'Психология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (46, N'Психолого-педагогическое образование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (47, N'Русский язык и литература')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (48, N'Русский язык и литература и психология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (49, N'Русский, английский языки и мировая литература')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (50, N'Социальная работа')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (51, N'Социально-культурная деятельность и народное художественное творчество')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (52, N'Специальная дошкольная педагогика и психология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (53, N'Теория и методика преподавания иностранных языков и культуры')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (54, N'Техническое обслуживание и ремонт автомобильного транспорта')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (55, N'Технология изделий из кожи')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (56, N'Физика с дополнительной специальностью "Информатика""')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (57, N'Физико-химические исследования металлургических процессов')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (58, N'Физическая культура')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (59, N'Физическая культура для лиц с отклонениями в состоянии здоровья, адаптивная физическая культура')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (60, N'Физическая культура и спорт')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (61, N'Филология')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (62, N'Художественное образование')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (63, N'Экономика труда')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (64, N'Экономическая, социальная, политическая и рекреационная география')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (65, N'Электроснабжение')
INSERT [dbo].[Specialty] ([Id], [Title]) VALUES (66, N'Юриспруденция')
SET IDENTITY_INSERT [dbo].[Specialty] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (1, 1, 1, 7)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (2, 2, 1, 8)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (3, 3, 1, 9)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (4, 4, 1, 10)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (5, 5, 1, 11)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (6, 6, 1, 12)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (7, 7, 1, 13)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (8, 8, 1, 14)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (9, 9, 1, 15)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (10, 10, 1, 16)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (11, 11, 1, 17)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (12, 12, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (13, 13, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (14, 14, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (15, 15, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (16, 16, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (17, 17, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (18, 18, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (19, 19, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (20, 20, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (21, 21, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (22, 22, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (23, 23, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (24, 24, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (25, 25, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (26, 26, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (27, 27, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (28, 28, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (29, 29, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (30, 30, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (31, 31, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (32, 32, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (33, 33, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (34, 34, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (35, 35, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (36, 36, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (37, 37, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (38, 38, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (39, 39, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (40, 40, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (41, 41, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (42, 42, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (43, 43, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (44, 44, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (45, 45, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (46, 46, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (47, 47, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (48, 48, 2, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (49, 49, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (50, 50, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (51, 51, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (52, 52, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (53, 53, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (54, 4, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (55, 54, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (56, 55, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (57, 56, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (58, 57, 3, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (59, 58, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (60, 59, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (61, 60, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (62, 61, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (63, 62, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (64, 63, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (65, 64, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (66, 65, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (67, 66, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (68, 5, 4, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (69, 67, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (70, 68, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (71, 69, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (72, 70, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (73, 71, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (74, 72, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (75, 73, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (76, 74, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (77, 75, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (78, 76, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (79, 77, 5, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (80, 78, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (81, 79, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (82, 80, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (83, 81, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (84, 82, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (85, 83, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (86, 84, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (87, 85, 6, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (88, 86, 7, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (89, 87, 7, 18)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (90, 88, 7, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (91, 2, 7, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (92, 89, 7, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (93, 90, 7, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (94, 91, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (95, 92, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (96, 3, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (97, 93, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (98, 94, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (99, 95, 8, 1)
GO
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (100, 96, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (101, 97, 8, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (102, 98, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (103, 99, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (104, 100, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (105, 101, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (106, 102, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (107, 103, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (108, 104, 9, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (109, 105, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (110, 106, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (111, 107, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (112, 108, 9, 1)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (113, 109, 10, 2)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (114, 8, 10, 2)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (115, 110, 10, 2)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (116, 111, 10, 2)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (117, 112, 10, 2)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (118, 113, 11, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (119, 114, 11, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (120, 115, 11, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (121, 116, 11, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (122, 117, 11, 3)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (123, 118, 12, 4)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (124, 119, 12, 4)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (125, 120, 12, 20)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (126, 121, 12, 19)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (127, 122, 12, 4)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (128, 123, 12, 19)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (129, 124, 12, 4)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (130, 125, 12, 19)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (131, 126, 13, 5)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (132, 127, 13, 5)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (133, 128, 13, 5)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (134, 129, 13, 5)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (135, 130, 13, 5)
INSERT [dbo].[Staff] ([Id], [EmployeeId], [DepartmentId], [PositionId]) VALUES (136, 131, 14, 6)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [Title]) VALUES (1, N'Русский язык')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (2, N'Литературное чтение')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (3, N'Математика')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (4, N'Окружающий мир')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (5, N'Труд (Технология)')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (6, N'Основы православной культуры')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (7, N'Основы светской этики')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (8, N'Информатика')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (10, N'Алгебра')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (11, N'Геометрия')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (12, N'Вероятность и статистика')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (13, N'Алгебра и начала математического анализа')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (14, N'Математика: избранные вопросы')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (15, N'Литература')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (16, N'Английский язык')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (17, N'Физика')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (18, N'Химия')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (19, N'Биология')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (20, N'География')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (21, N'К совершенству шаг за шагом (Биология)')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (22, N'История')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (23, N'Обществознание')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (24, N'Актуальные вопросы изучения обществознания')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (25, N'Основы безопасности и защиты Родины')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (26, N'Основы духовно-нравственной культуры народов России')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (27, N'Музыка')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (28, N'Изобразительное искусство')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (29, N'Физическая культура')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [PasswordHash], [EmployeeId], [RoleId], [Status], [Is2faOn], [Secret], [Salt], [Image]) VALUES (0, N'root', 0xB687252728B1C039DFAF3933A2578B7754AE792AEE2FFE370D6413147BF30BEB, NULL, 1, 1, 0, NULL, 0x317FC98FA716CD4B20F597F77EC80FEE, NULL)
INSERT [dbo].[User] ([Id], [Login], [PasswordHash], [EmployeeId], [RoleId], [Status], [Is2faOn], [Secret], [Salt], [Image]) VALUES (1, N'principal', 0x85E1A78F141970D2A2DD9CFD2A59D560A1C89819D727019839607AD2E2942FEA, 1, 1, 1, 0, NULL, 0x09C4C83EB42A8C7A5198B95EF2C6BA0A, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Is2faEnabled]  DEFAULT ((0)) FOR [Is2faOn]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Staff]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Subject]
GO
ALTER TABLE [dbo].[ClassGuidance]  WITH CHECK ADD  CONSTRAINT [FK_ClassGuidance_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ClassGuidance] CHECK CONSTRAINT [FK_ClassGuidance_Employee]
GO
ALTER TABLE [dbo].[ClassGuidance]  WITH CHECK ADD  CONSTRAINT [FK_ClassGuidance_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([Id])
GO
ALTER TABLE [dbo].[ClassGuidance] CHECK CONSTRAINT [FK_ClassGuidance_Grade]
GO
ALTER TABLE [dbo].[Development]  WITH CHECK ADD  CONSTRAINT [FK_Development_DevelopmentCourse] FOREIGN KEY([DevelopmentCourseId])
REFERENCES [dbo].[DevelopmentCourse] ([Id])
GO
ALTER TABLE [dbo].[Development] CHECK CONSTRAINT [FK_Development_DevelopmentCourse]
GO
ALTER TABLE [dbo].[Development]  WITH CHECK ADD  CONSTRAINT [FK_Development_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Development] CHECK CONSTRAINT [FK_Development_Employee]
GO
ALTER TABLE [dbo].[DevelopmentCourse]  WITH CHECK ADD  CONSTRAINT [FK_DevelopmentCourse_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[DevelopmentCourse] CHECK CONSTRAINT [FK_DevelopmentCourse_Organization]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Degree] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[Degree] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Degree]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Employee]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Organization]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Qualification] FOREIGN KEY([QualificationId])
REFERENCES [dbo].[Qualification] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Qualification]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Specialty] FOREIGN KEY([SpecialtyId])
REFERENCES [dbo].[Specialty] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Specialty]
GO
ALTER TABLE [dbo].[Retraining]  WITH CHECK ADD  CONSTRAINT [FK_Retraining_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Retraining] CHECK CONSTRAINT [FK_Retraining_Employee]
GO
ALTER TABLE [dbo].[Retraining]  WITH CHECK ADD  CONSTRAINT [FK_Retraining_RetrainingCourse] FOREIGN KEY([RetrainingCourseId])
REFERENCES [dbo].[RetrainingCourse] ([Id])
GO
ALTER TABLE [dbo].[Retraining] CHECK CONSTRAINT [FK_Retraining_RetrainingCourse]
GO
ALTER TABLE [dbo].[RetrainingCourse]  WITH CHECK ADD  CONSTRAINT [FK_RetrainingCourse_Organization] FOREIGN KEY([OrgranizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[RetrainingCourse] CHECK CONSTRAINT [FK_RetrainingCourse_Organization]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Employee]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Employee]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [MySchool] SET  READ_WRITE 
GO
