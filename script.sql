USE [master]
GO
/****** Object:  Database [SellingCustomerDB]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblBookingDetails]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblBridalDress]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblCardDetails]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblCompanyDetails]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblDesignerDetails]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblKidsDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblLadiesSaree]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblLadiesSuit]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tbllogin]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblOtherDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblQuery]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  Table [dbo].[tblQueryDetails]    Script Date: 20-07-2021 08:36:28 ******/
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
SET IDENTITY_INSERT [dbo].[tblBridalDress] ON 
GO
INSERT [dbo].[tblBridalDress] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (1, N'Staples', N'Store12', CAST(N'2021-01-01' AS Date), 18.0000, N'~\DesignsUploaded\6.jpeg')
GO
SET IDENTITY_INSERT [dbo].[tblBridalDress] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCardDetails] ON 
GO
INSERT [dbo].[tblCardDetails] ([PayID], [PaymentType], [CustomerLoginID], [Amount], [CardType], [CardNumber], [DateOfExpire], [BankName]) VALUES (1, N'online', N'123', 144.0000, N'Credit Card', N'1236547896547854', CAST(N'2027-01-01' AS Date), N'PNB')
GO
SET IDENTITY_INSERT [dbo].[tblCardDetails] OFF
GO
INSERT [dbo].[tblCompanyDetails] ([CompanyID], [CompanyName], [LoginID], [Password], [CompanyAddress], [Contact], [EmailID], [FaxNo], [Country], [State], [PIN], [ROLE]) VALUES (N'', N'Satyam Patel', N'123', N'1234', N'ABC', 9874587458, N's@gmail.com', N'', N'India', N'Delhi', 201309, 1)
GO
INSERT [dbo].[tblCompanyDetails] ([CompanyID], [CompanyName], [LoginID], [Password], [CompanyAddress], [Contact], [EmailID], [FaxNo], [Country], [State], [PIN], [ROLE]) VALUES (N'FXA12', N'ABC.pvt.ltd', N'FXA12', N'FXA12@123', N'abc', 9999999999, N'vikram@gmail.com', N'FXA12', N'India', N'Delhi', 201309, 1)
GO
INSERT [dbo].[tblCompanyDetails] ([CompanyID], [CompanyName], [LoginID], [Password], [CompanyAddress], [Contact], [EmailID], [FaxNo], [Country], [State], [PIN], [ROLE]) VALUES (N'', N'admin', N'admin1', N'admin1', N'admin', 8798745878, N'admin@gmail.com', N'', N'In', N'Delhi', 201309, 1)
GO
SET IDENTITY_INSERT [dbo].[tblDesignerDetails] ON 
GO
INSERT [dbo].[tblDesignerDetails] ([DesignerID], [Name], [LoginID], [Password], [EmailID], [Gender], [Contact], [Address], [City], [PIN], [State], [ROLE], [eligible]) VALUES (0, N'STORE123', N'FXA12', N'FXA12@123', N'v@gmail.com', N'Male', 9889898745, N'ABC', N'Uttrakhand', N'201309', N'Uttrakhand', 0, 1)
GO
INSERT [dbo].[tblDesignerDetails] ([DesignerID], [Name], [LoginID], [Password], [EmailID], [Gender], [Contact], [Address], [City], [PIN], [State], [ROLE], [eligible]) VALUES (1, N'STORE1234', N'123456', N'123456789', N'b@ggmail.com', N'Male', 9555555555, N'ABC', N'Uttrakhand', N'201309', N'Uttrakhand', 0, 1)
GO
INSERT [dbo].[tblDesignerDetails] ([DesignerID], [Name], [LoginID], [Password], [EmailID], [Gender], [Contact], [Address], [City], [PIN], [State], [ROLE], [eligible]) VALUES (2, N'store', N'store12', N'store123', N'v@gmail.com', N'Male', 9875487458, N'ABC', N'Delhi', N'201309', N'Delhi', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tblDesignerDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLadiesSaree] ON 
GO
INSERT [dbo].[tblLadiesSaree] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (1, N'Ladies Saree', N'FXA12', CAST(N'2021-12-07' AS Date), 12.0000, N'~\DesignsUploaded\6.jpeg')
GO
SET IDENTITY_INSERT [dbo].[tblLadiesSaree] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLadiesSuit] ON 
GO
INSERT [dbo].[tblLadiesSuit] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (1, N'Snacks', N'Store12', CAST(N'2021-01-01' AS Date), 14.0000, N'~\DesignsUploaded\image.jpg')
GO
SET IDENTITY_INSERT [dbo].[tblLadiesSuit] OFF
GO
SET IDENTITY_INSERT [dbo].[tbllogin] ON 
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (1, N'FXA12', N'FXA12@123', 1)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (2, N'FXA121', N'FXA12@123', 0)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (3, N'admin', N'admin', 10)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (4, N'123456', N'123456789', 0)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (5, N'123', N'1234', 1)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (6, N'store12', N'store123', 0)
GO
INSERT [dbo].[tbllogin] ([Serial], [LoginID], [Password], [ROLE]) VALUES (9, N'admin1', N'admin1', 10)
GO
SET IDENTITY_INSERT [dbo].[tbllogin] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOtherDesign] ON 
GO
INSERT [dbo].[tblOtherDesign] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (1, N'Others', N'FXA12', CAST(N'2021-12-07' AS Date), 12.0000, N'~\DesignsUploaded\4.jpg')
GO
INSERT [dbo].[tblOtherDesign] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (2, N'Masale', N'123456', CAST(N'2021-01-01' AS Date), 1.0000, N'~\DesignsUploaded\2.jpg')
GO
INSERT [dbo].[tblOtherDesign] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (3, N'Others', N'Store12', CAST(N'2020-01-01' AS Date), 14.0000, N'~\DesignsUploaded\2.jpg')
GO
INSERT [dbo].[tblOtherDesign] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (4, N'Others', N'FXA12', CAST(N'2021-12-07' AS Date), 14.0000, N'~\DesignsUploaded\3.jpg')
GO
INSERT [dbo].[tblOtherDesign] ([DesignID], [DesignCategory], [DesignerLoginID], [DateOfUpload], [Price], [Pic]) VALUES (5, N'Others', N'FXA12', CAST(N'2021-12-07' AS Date), 12.0000, N'~\DesignsUploaded\p3.jpg')
GO
SET IDENTITY_INSERT [dbo].[tblOtherDesign] OFF
GO
SET IDENTITY_INSERT [dbo].[tblQueryDetails] ON 
GO
INSERT [dbo].[tblQueryDetails] ([QId], [CustomerID], [Description]) VALUES (1, N'123', N'who are you?')
GO
SET IDENTITY_INSERT [dbo].[tblQueryDetails] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_bookingDesigns]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_chkEligiblity]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProducts]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProducts1]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProducts2]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProducts3]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProducts4]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_PaymentCard]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_PlayerLogin]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Query]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SetRegisterDataC]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SetRegisterDataD]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UploadBridalDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UploadKidsDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UploadLadiesSuitDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UploadOtherDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UploadSareeDesign]    Script Date: 20-07-2021 08:36:28 ******/
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
