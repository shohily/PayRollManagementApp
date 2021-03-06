USE [master]
GO
/****** Object:  Database [DB_PayRollSystem]    Script Date: 6/3/2015 8:40:22 AM ******/
CREATE DATABASE [DB_PayRollSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_PayRollSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_PayRollSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_PayRollSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_PayRollSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_PayRollSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_PayRollSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_PayRollSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_PayRollSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_PayRollSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_PayRollSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_PayRollSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_PayRollSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_PayRollSystem] SET  MULTI_USER 
GO
ALTER DATABASE [DB_PayRollSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_PayRollSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_PayRollSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_PayRollSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_PayRollSystem]
GO
/****** Object:  Table [dbo].[PayRoll_Table]    Script Date: 6/3/2015 8:40:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PayRoll_Table](
	[EmployeeID] [int] NULL,
	[EmployeeName] [varchar](50) NULL,
	[BasicSalary] [varchar](50) NULL,
	[HouseRent] [float] NULL,
	[MedicalAllowance] [float] NULL,
	[Tax] [float] NULL,
	[TotalSalary] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PayRoll_Table] ([EmployeeID], [EmployeeName], [BasicSalary], [HouseRent], [MedicalAllowance], [Tax], [TotalSalary]) VALUES (1, N'Disha', N'20000', 4000, 3000, 1000, 26000)
INSERT [dbo].[PayRoll_Table] ([EmployeeID], [EmployeeName], [BasicSalary], [HouseRent], [MedicalAllowance], [Tax], [TotalSalary]) VALUES (2, N'Sorna', N'15000', 3000, 2250, 750, 19500)
INSERT [dbo].[PayRoll_Table] ([EmployeeID], [EmployeeName], [BasicSalary], [HouseRent], [MedicalAllowance], [Tax], [TotalSalary]) VALUES (3, N'Tanjila', N'10000', 2000, 1500, 500, 13000)
INSERT [dbo].[PayRoll_Table] ([EmployeeID], [EmployeeName], [BasicSalary], [HouseRent], [MedicalAllowance], [Tax], [TotalSalary]) VALUES (3, N'Hridda', N'30000', 6000, 4500, 1500, 39000)
USE [master]
GO
ALTER DATABASE [DB_PayRollSystem] SET  READ_WRITE 
GO
