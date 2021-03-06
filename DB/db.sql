USE [master]
GO
/****** Object:  Database [PaymentDetailsTraining]    Script Date: 16-12-2021 15:02:42 ******/
CREATE DATABASE [PaymentDetailsTraining]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PaymentDetailsTraining', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\PaymentDetailsTraining.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PaymentDetailsTraining_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\PaymentDetailsTraining_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PaymentDetailsTraining] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PaymentDetailsTraining].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PaymentDetailsTraining] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET ARITHABORT OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PaymentDetailsTraining] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PaymentDetailsTraining] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PaymentDetailsTraining] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PaymentDetailsTraining] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PaymentDetailsTraining] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET RECOVERY FULL 
GO
ALTER DATABASE [PaymentDetailsTraining] SET  MULTI_USER 
GO
ALTER DATABASE [PaymentDetailsTraining] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PaymentDetailsTraining] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PaymentDetailsTraining] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PaymentDetailsTraining] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PaymentDetailsTraining] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PaymentDetailsTraining', N'ON'
GO
ALTER DATABASE [PaymentDetailsTraining] SET QUERY_STORE = OFF
GO
USE [PaymentDetailsTraining]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16-12-2021 15:02:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 16-12-2021 15:02:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[PMId] [int] IDENTITY(1,1) NOT NULL,
	[CardOwnerName] [nvarchar](100) NOT NULL,
	[CardNumber] [varchar](16) NOT NULL,
	[ExpirationDate] [varchar](5) NOT NULL,
	[CVV] [varchar](3) NOT NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[PMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211215111829_IntialCreate', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[PaymentDetails] ON 

INSERT [dbo].[PaymentDetails] ([PMId], [CardOwnerName], [CardNumber], [ExpirationDate], [CVV]) VALUES (2, N'Sean Crosby', N'2345678987645333', N'11/29', N'990')
INSERT [dbo].[PaymentDetails] ([PMId], [CardOwnerName], [CardNumber], [ExpirationDate], [CVV]) VALUES (3, N'Latanya L. Strickland', N'9887677897348932', N'23/28', N'121')
INSERT [dbo].[PaymentDetails] ([PMId], [CardOwnerName], [CardNumber], [ExpirationDate], [CVV]) VALUES (4, N'Rodney S. Coleman', N'2233445566778890', N'11/24', N'543')
INSERT [dbo].[PaymentDetails] ([PMId], [CardOwnerName], [CardNumber], [ExpirationDate], [CVV]) VALUES (6, N'Bette C. Hartman', N'1233445768786765', N'12/26', N'121')
INSERT [dbo].[PaymentDetails] ([PMId], [CardOwnerName], [CardNumber], [ExpirationDate], [CVV]) VALUES (7, N'Ervin M. Brown', N'9808876679879878', N'12/28', N'121')
SET IDENTITY_INSERT [dbo].[PaymentDetails] OFF
GO
USE [master]
GO
ALTER DATABASE [PaymentDetailsTraining] SET  READ_WRITE 
GO
