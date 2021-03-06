USE [master]
GO
/****** Object:  Database [HealthBuddy]    Script Date: 4/26/2021 4:20:10 PM ******/
CREATE DATABASE [HealthBuddy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HealthBuddy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\HealthBuddy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HealthBuddy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\HealthBuddy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HealthBuddy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthBuddy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HealthBuddy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HealthBuddy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HealthBuddy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HealthBuddy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HealthBuddy] SET ARITHABORT OFF 
GO
ALTER DATABASE [HealthBuddy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HealthBuddy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HealthBuddy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HealthBuddy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HealthBuddy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HealthBuddy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HealthBuddy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HealthBuddy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HealthBuddy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HealthBuddy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HealthBuddy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HealthBuddy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HealthBuddy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HealthBuddy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HealthBuddy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HealthBuddy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HealthBuddy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HealthBuddy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HealthBuddy] SET  MULTI_USER 
GO
ALTER DATABASE [HealthBuddy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HealthBuddy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HealthBuddy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HealthBuddy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HealthBuddy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HealthBuddy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HealthBuddy] SET QUERY_STORE = OFF
GO
USE [HealthBuddy]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[did] [int] NOT NULL,
	[date] [varchar](50) NOT NULL,
	[time] [time](0) NOT NULL,
	[symptoms] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[pstatus] [int] NOT NULL,
 CONSTRAINT [PK_Apponintment] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[areaId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[hospitalname] [varchar](max) NOT NULL,
	[dRegNo] [varchar](50) NOT NULL,
	[phno] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[cid] [int] NOT NULL,
	[address] [varchar](max) NOT NULL,
	[areaId] [int] NOT NULL,
	[basicCharge] [varchar](50) NOT NULL,
	[RegisterStatus] [int] NOT NULL,
	[lname] [nchar](10) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[fname] [nchar](10) NOT NULL,
	[phno] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[areaId] [int] NOT NULL,
	[dob] [datetime] NULL,
	[lname] [nchar](10) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payid] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[date] [varchar](50) NOT NULL,
	[time] [time](0) NOT NULL,
	[amount] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[payid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[preid] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[details] [varchar](max) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[did] [int] NOT NULL,
	[reportName] [varchar](max) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[preid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptionist]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionist](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[did] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phno] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[areaId] [int] NOT NULL,
	[gender] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Receptionist] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[rname] [varchar](50) NOT NULL,
	[filepath] [varchar](50) NOT NULL,
	[filetype] [varchar](50) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User1]    Script Date: 4/26/2021 4:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User1](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_User1] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Apponintment_Category] FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Apponintment_Category]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Apponintment_Doctor] FOREIGN KEY([did])
REFERENCES [dbo].[Doctor] ([did])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Apponintment_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Apponintment_Patient] FOREIGN KEY([pid])
REFERENCES [dbo].[Patient] ([pid])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Apponintment_Patient]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Area] FOREIGN KEY([areaId])
REFERENCES [dbo].[Area] ([areaId])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Area]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Category] FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Category]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Area] FOREIGN KEY([areaId])
REFERENCES [dbo].[Area] ([areaId])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Area]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User1] ([uid])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_User]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Appointment] FOREIGN KEY([aid])
REFERENCES [dbo].[Appointment] ([aid])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Appointment]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Appointment] FOREIGN KEY([aid])
REFERENCES [dbo].[Appointment] ([aid])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Appointment]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Doctor] FOREIGN KEY([did])
REFERENCES [dbo].[Doctor] ([did])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Doctor]
GO
ALTER TABLE [dbo].[Receptionist]  WITH CHECK ADD  CONSTRAINT [FK_Receptionist_Area] FOREIGN KEY([areaId])
REFERENCES [dbo].[Area] ([areaId])
GO
ALTER TABLE [dbo].[Receptionist] CHECK CONSTRAINT [FK_Receptionist_Area]
GO
ALTER TABLE [dbo].[Receptionist]  WITH CHECK ADD  CONSTRAINT [FK_Receptionist_Doctor] FOREIGN KEY([did])
REFERENCES [dbo].[Doctor] ([did])
GO
ALTER TABLE [dbo].[Receptionist] CHECK CONSTRAINT [FK_Receptionist_Doctor]
GO
ALTER TABLE [dbo].[Receptionist]  WITH CHECK ADD  CONSTRAINT [FK_Receptionist_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User1] ([uid])
GO
ALTER TABLE [dbo].[Receptionist] CHECK CONSTRAINT [FK_Receptionist_User]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Appointment] FOREIGN KEY([aid])
REFERENCES [dbo].[Appointment] ([aid])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Appointment]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unique key email
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User1', @level2type=N'CONSTRAINT',@level2name=N'IX_User1'
GO
USE [master]
GO
ALTER DATABASE [HealthBuddy] SET  READ_WRITE 
GO
