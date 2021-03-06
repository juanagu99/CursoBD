USE [master]
GO
/****** Object:  Database [Rocketbot_Pro]    Script Date: 17/06/2021 12:54:52 a. m. ******/
CREATE DATABASE [Rocketbot_Pro]
 CONTAINMENT = NONE --no es una base de datos aislada
 ON  PRIMARY 
( NAME = N'Rocketbot_Pro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rocketbot_Pro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rocketbot_Pro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rocketbot_Pro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Rocketbot_Pro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
	begin
		EXEC [Rocketbot_Pro].[dbo].[sp_fulltext_database] @action = 'enable'
	end
GO
ALTER DATABASE [Rocketbot_Pro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rocketbot_Pro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rocketbot_Pro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rocketbot_Pro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rocketbot_Pro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET RECOVERY FULL 
GO
ALTER DATABASE [Rocketbot_Pro] SET  MULTI_USER 
GO
ALTER DATABASE [Rocketbot_Pro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rocketbot_Pro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rocketbot_Pro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rocketbot_Pro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rocketbot_Pro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rocketbot_Pro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Rocketbot_Pro', N'ON'
GO
ALTER DATABASE [Rocketbot_Pro] SET QUERY_STORE = OFF
GO
USE [Rocketbot_Pro]
GO
/****** Object:  UserDefinedFunction [dbo].[FC_HelloWorld]    Script Date: 17/06/2021 12:54:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Juan Pablo Agudelo Flórez
-- Create date: 17/06/2021
-- Description:	Función que me devuelve un mensaje de hola mundo
-- =============================================
CREATE FUNCTION [dbo].[FC_HelloWorld]()
RETURNS varchar(20)
AS 
BEGIN
	 RETURN 'Hello world'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HelloWorld]    Script Date: 17/06/2021 12:54:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Juan Pablo Agudelo
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_HelloWorld]
AS
PRINT 'Hello World'
GO
/****** Object:  StoredProcedure [dbo].[SP_HelloWorldReturn]    Script Date: 17/06/2021 12:54:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Juan Pablo Agudelo
-- Create date: 17/06/2021
-- Description: SP QUE ME RETORNA UN VALOR
-- =============================================
CREATE PROCEDURE [dbo].[SP_HelloWorldReturn]
@paramout varchar(20) out
as
set @paramout='Hello world'
GO
USE [master]
GO
ALTER DATABASE [Rocketbot_Pro] SET  READ_WRITE 
GO
