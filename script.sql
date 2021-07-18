USE [master]
GO
/****** Object:  Database [SellingCustomerDB]    Script Date: 19-07-2021 01:20:53 ******/
CREATE DATABASE [SellingCustomerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SellingCustomerDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SellingCustomerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SellingCustomerDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SellingCustomerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SellingCustomerDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SellingCustomerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SellingCustomerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SellingCustomerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SellingCustomerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SellingCustomerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SellingCustomerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SellingCustomerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SellingCustomerDB] SET  MULTI_USER 
GO
ALTER DATABASE [SellingCustomerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SellingCustomerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SellingCustomerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SellingCustomerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SellingCustomerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SellingCustomerDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SellingCustomerDB] SET QUERY_STORE = OFF
GO
USE [SellingCustomerDB]
GO
/****** Object:  Table [dbo].[tblBookingDetails]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookingDetails](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[DesignID] [int] NULL,
	[CustomerID] [varchar](50) NULL,
	[DateOfBooking] [date] NULL,
 CONSTRAINT [PK_tblBookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBridalDress]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBridalDress](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignCategory] [varchar](50) NULL,
	[DesignerLoginID] [varchar](50) NULL,
	[DateOfUpload] [date] NULL,
	[Price] [money] NULL,
	[Pic] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCardDetails]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCardDetails](
	[PayID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](50) NULL,
	[CustomerLoginID] [varchar](50) NULL,
	[Amount] [money] NULL,
	[CardType] [varchar](50) NULL,
	[CardNumber] [varchar](50) NULL,
	[DateOfExpire] [date] NULL,
	[BankName] [varchar](50) NULL,
 CONSTRAINT [PK_tblCardDetails] PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompanyDetails]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompanyDetails](
	[CompanyID] [varchar](50) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[LoginID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CompanyAddress] [varchar](50) NULL,
	[Contact] [bigint] NULL,
	[EmailID] [varchar](50) NULL,
	[FaxNo] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[PIN] [int] NULL,
	[ROLE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDesignerDetails]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDesignerDetails](
	[DesignerID] [int] IDENTITY(0,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[LoginID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Contact] [bigint] NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PIN] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ROLE] [int] NULL,
	[eligible] [int] NULL,
 CONSTRAINT [PK_tblDesignerDetails] PRIMARY KEY CLUSTERED 
(
	[DesignerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKidsDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKidsDesign](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignCategory] [varchar](50) NULL,
	[DesignerLoginID] [varchar](50) NULL,
	[DateOfUpload] [date] NULL,
	[Price] [money] NULL,
	[Pic] [varchar](max) NULL,
 CONSTRAINT [PK_tblKidsDesign] PRIMARY KEY CLUSTERED 
(
	[DesignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLadiesSaree]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLadiesSaree](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignCategory] [varchar](50) NULL,
	[DesignerLoginID] [varchar](50) NULL,
	[DateOfUpload] [date] NULL,
	[Price] [money] NULL,
	[Pic] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblLadiesSaree] PRIMARY KEY CLUSTERED 
(
	[DesignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLadiesSuit]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLadiesSuit](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignCategory] [varchar](50) NULL,
	[DesignerLoginID] [varchar](50) NULL,
	[DateOfUpload] [date] NULL,
	[Price] [money] NULL,
	[Pic] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbllogin]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbllogin](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ROLE] [int] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOtherDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOtherDesign](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignCategory] [varchar](50) NULL,
	[DesignerLoginID] [varchar](50) NULL,
	[DateOfUpload] [date] NULL,
	[Price] [money] NULL,
	[Pic] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuery]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuery](
	[QId] [int] NOT NULL,
	[CustomerID] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_tblQuery] PRIMARY KEY CLUSTERED 
(
	[QId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQueryDetails]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQueryDetails](
	[QId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_tblQueryDetails] PRIMARY KEY CLUSTERED 
(
	[QId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_bookingDesigns]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_bookingDesigns]
  @DesignID int
, @CustomerID varchar(50)
, @DoB date

AS
BEGIN
insert into tblBookingDetails(DesignID,CustomerID,DateOfBooking)
 values(@DesignID,@CustomerID,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[usp_chkEligiblity]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_chkEligiblity]
 
 @LoginID varchar(50)
AS
BEGIN
 SELECT * FROM tblDesignerDetails where LoginID=@LoginID and eligible=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProducts]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetProducts]
 
 @Pid varchar(50)

AS
BEGIN
 SELECT * FROM tblLadiesSaree where DesignID=@Pid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProducts1]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetProducts1]
 
 @Pid varchar(50)

AS
BEGIN
 SELECT * FROM tblLadiesSuit where DesignID=@Pid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProducts2]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetProducts2]
 
 @Pid varchar(50)

AS
BEGIN
 SELECT * FROM tblKidsDesign where DesignID=@Pid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProducts3]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetProducts3]
 
 @Pid varchar(50)

AS
BEGIN
 SELECT * FROM tblBridalDress where DesignID=@Pid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProducts4]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetProducts4]
 
 @Pid varchar(50)

AS
BEGIN
 SELECT * FROM tblOtherDesign where DesignID=@Pid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PaymentCard]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PaymentCard]
  @PaymentType varchar(50)
, @CLoginID varchar(50)
, @Amount money
, @CardType varchar(50)
, @CardNo varchar(50)
, @DoE date
, @BankName varchar(50)
AS
BEGIN
insert into tblCardDetails(PaymentType,CustomerLoginID,Amount,CardType,CardNumber,DateOfExpire,BankName)
 values(@PaymentType, @CLoginID, @Amount, @CardType, 
 @CardNo, @DoE, @BankName)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PlayerLogin]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_PlayerLogin]
 
 @LoginID varchar(50)
, @Password varchar(50)

AS
BEGIN
 SELECT * FROM tblLogin where LoginID=@LoginID and Password=@Password;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Query]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Query]
  @LoginID varchar(50)
, @Query varchar(50)


AS
BEGIN
insert into tblQueryDetails(CustomerID,Description)
 values(@LoginID,@Query)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetRegisterDataC]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SetRegisterDataC]
  @CompanyID varchar(10)
, @CompanyName varchar(50)
, @LoginID varchar(20)
, @Password varchar(20)
, @CompanyAddress varchar(50)
, @Contact bigint
, @EmailID varchar(20)
, @FaxNo  varchar(20)
, @Country  varchar(20)
, @State varchar(20)
, @PIN int
, @ROLE int
AS
BEGIN
insert into tblCompanyDetails(CompanyID, CompanyName, LoginID, Password, CompanyAddress, Contact, EmailID,
 FaxNo, Country, State, PIN, ROLE)
 values(@CompanyID, @CompanyName, @LoginID, @Password, @CompanyAddress, 
 @Contact, @EmailID, @FaxNo, @Country, @State, @PIN, @Role)
INSERT INTO tblLogin(LoginID, Password,ROLE) values(@LoginID,@Password,@ROLE)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetRegisterDataD]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SetRegisterDataD]
  @Name varchar(50)
, @LoginID varchar(50)
, @Password varchar(50)
, @Gender varchar(50)
, @EmailID varchar(50)
, @Address varchar(50)
, @Contact  bigint
, @City  varchar(50)
, @State varchar(50)
, @PIN int
, @ROLE int
AS
BEGIN
insert into tblDesignerDetails(Name,LoginID,Password,Gender,EmailId,
 Address, Contact,City,State,PIN,ROLE,eligible)
 values(@Name, @LoginID, @Password, @Gender, 
 @EmailID, @Address, @Contact, @City, @State, @PIN, @Role,0)
INSERT INTO tblLogin(LoginID, Password,ROLE) values(@LoginID,@Password,@ROLE)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UploadBridalDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[usp_UploadBridalDesign]
  @DesignCategory varchar(50)
, @DesignerLoginID varchar(50)
, @DoU date
, @Price money
, @Pic varchar(max)
AS
BEGIN
insert into tblBridalDress(DesignCategory,DesignerLoginID,DateOfUpload,Price,Pic)
 values(@DesignCategory, @DesignerLoginID, @DoU, @Price, @Pic)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UploadKidsDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[usp_UploadKidsDesign]
  @DesignCategory varchar(50)
, @DesignerLoginID varchar(50)
, @DoU date
, @Price money
, @Pic varchar(max)
AS
BEGIN
insert into tblKidsDesign(DesignCategory,DesignerLoginID,DateOfUpload,Price,Pic)
 values(@DesignCategory, @DesignerLoginID, @DoU, @Price, @Pic)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UploadLadiesSuitDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[usp_UploadLadiesSuitDesign]
  @DesignCategory varchar(50)
, @DesignerLoginID varchar(50)
, @DoU date
, @Price money
, @Pic varchar(max)
AS
BEGIN
insert into tblLadiesSuit(DesignCategory,DesignerLoginID,DateOfUpload,Price,Pic)
 values(@DesignCategory, @DesignerLoginID, @DoU, @Price, @Pic)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UploadOtherDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[usp_UploadOtherDesign]
  @DesignCategory varchar(50)
, @DesignerLoginID varchar(50)
, @DoU date
, @Price money
, @Pic varchar(max)
AS
BEGIN
insert into tblOtherDesign(DesignCategory,DesignerLoginID,DateOfUpload,Price,Pic)
 values(@DesignCategory, @DesignerLoginID, @DoU, @Price, @Pic)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UploadSareeDesign]    Script Date: 19-07-2021 01:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UploadSareeDesign]
  @DesignCategory varchar(50)
, @DesignerLoginID varchar(50)
, @DoU date
, @Price money
, @Pic varchar(max)
AS
BEGIN
insert into tblLadiesSaree(DesignCategory,DesignerLoginID,DateOfUpload,Price,Pic)
 values(@DesignCategory, @DesignerLoginID, @DoU, @Price, @Pic)
END
GO
USE [master]
GO
ALTER DATABASE [SellingCustomerDB] SET  READ_WRITE 
GO
