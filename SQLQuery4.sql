USE [master]
GO
/****** Object:  Database [BarHotelManagemet_Prabh]    Script Date: 03-Aug-2021 07:03:48 ******/
CREATE DATABASE [BarHotelManagemet_Prabh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BarHotelManagemet_Prabh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BarHotelManagemet_Prabh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BarHotelManagemet_Prabh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BarHotelManagemet_Prabh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BarHotelManagemet_Prabh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ARITHABORT OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET RECOVERY FULL 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET  MULTI_USER 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BarHotelManagemet_Prabh', N'ON'
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET QUERY_STORE = OFF
GO
USE [BarHotelManagemet_Prabh]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TableNo] [nvarchar](max) NULL,
	[OrderNo] [nvarchar](max) NULL,
	[BillDate] [datetime] NULL,
	[BillAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Bills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[FeedbackDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Feedbacks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCategories]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FoodCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodItems]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FoodCategoryID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FoodItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodRateLists]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodRateLists](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FoodItemID] [int] NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[PlatType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FoodRateLists] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableOrders]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNo] [nvarchar](max) NULL,
	[KOT] [nvarchar](max) NULL,
	[OrderDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.TableOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wines]    Script Date: 03-Aug-2021 07:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wines](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SmallPeg] [nvarchar](max) NULL,
	[LargePeg] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
	[SmallPegQuantity] [nvarchar](max) NULL,
	[LargePegQuantity] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Wines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201907270817455_initiate', N'BarHotelManagemet.Migrations.Configuration', 0x1F8B0800000000000400ED5DD96EE4B8157D0F907F10F494041E979774A3639467E029B733C6788BCB3DC99B414B7459682D3512ABC746305F96877C527E21A444495C256A2DD9300618B825F25CF2F25C8AEBA9FFFDE7BFF31F9E03DFFA06E3C48BC2637B7F77CFB660E844AE17AE8EED0D7AFCEE93FDC3F77FFCC3FCB31B3C5BBFE4E90E493A9C334C8EED2784D647B359E23CC10024BB81E7C451123DA25D270A66C08D66077B7B7F9BEDEFCF2086B0319665CD6F3721F20298FE03FF7311850E5CA30DF02F2317FA097D8EDF2C5354EB0A04305903071EDB3F82F8A70841FF12846005038876B33CB675E27B00976709FD47DB026118218070698FBE247089E2285C2DD7F801F0EF5ED610A77B047E02692D8ECAE4A615DA3B20159A951973286793A0286808B87F483D3413B3B7F2B35D7810FBF033F6357A21B54EFD885DE8F9BE6D89868E167E4C12E95DBC4B32EE58D2EB9D8218983FE4BF1D6BB1F1D12686C721DCA018E04C379B07DF737E862F77D157181E871B5C04A690B898F81DF7003FBA89A3358CD1CB2D7CA4453F3FB5AD199F6F26662CB23179B28A9D87E8F0C0B6AEB071F0E0C382038C1396288AE1DF61086380A07B031082316EC27317A65E94AC0BB6C8FF736B9874388A6CEB123C5FC070859E8E6DFCA76D9D79CFD0CD9FD0127C093D1C7438138A37B0CEC81D29FC5534B89DEBD885F1087608AD4EB1BB7343E4EF3B2F30CA771244B82F297242C70B0026F74D8CFFA27DDA27DB5A3A8034B7AAED5913F359192B95117406A1FB009CAFADA228CFFC1E4955B616A96331FFC688A8BC494E61E2C4DE3AEB777BB5694EAD287217D863AB287E69472F06E09D62E377D657E09BB74ACB27920C37CC3982011EAADC423F4D913C79EB6CC4B29BBFBD67DACF8338ED591C05B791CF000849EEEF40BC82A40F8CAAD32DA34DEC74E125016DCD4992F99D8F95BD1013B9F57627C76D96B4FD123C276E1DC1F3406852EA5B9CFDC24B90B6CC79827B267EF922CB299421A948D63922CBD2B78CCA1CE03D32EB2293B458D7A8BC6547B9DDC6AA32F80DA62F819ED427AD55F4A8E2BD22C85A454FDEF4C44255F45C16F3EC93647D858327CFB89B419EC518EEB728FEBACB22EE58C6F9CA303B300DB3C3FD87C7C34F1F3E02F7F0E35FE1E1875621E7B60839B7825BFB079F8CB8D5EF87ECE0C3C75EAC6A29FE25C1ADA3A437DBDEF73459496DF9AD446B45925E284DA0FAA7758E3A7D6A9392CAF4562625156A1309B989B1A3212FEFB0768D1997AE44A5CB44AD062065F6F7E1C7D65715C75AEDFBF9FA6E9CBAD42F291AF3FC64BDC63C4BDB92447E2BB20B185B66FC2BF9FA7F0E80E7F7F0F937B0B288C2472F0E6051CB1F23DCD982B0F9381C2409FEFAB93F81E46970A62FA1B3893159970804EBC1ADDD3C4521BCDA040F2406C6B3D55BD3DCFD169D010777C69F4392AB33DE45E47C8D36E873E8920EE60B729A6E611400BD14E7C47160929C61324377C1EE8BB49BAD926E6ADBC3EF850F3CCDF452E850EFF3A4E5185C9D421A876B92355D4DBA88565E6856D43CA9BEA8598ADAA2D2644D8B4AC0CC4A4A53EA0B9A26A82D6796AAB7D94DDA42FD4F6F52D8E9CF6FBA7DBC871FAE6E6B729436DF302B602A4BBF007FD3B7A956D1907602FD47430A3BFD68488B891F7FF3D269A8C1A43F4F8CE18DD2ABD713EA634E28D9D8E1C055736CE3E3F401C6E1F24F2FAC5C0ED3CEDA48C6F7C589AD2F4E2C03E0FB377035B8A10B324419C3104E8C4673DB3F3680B6E548EE1BC8A02EDE4F922472BC94CEC2CE94B8DBCC971E4FDC2CC3ADE7AC1AEC4636AE0D0E798F0C7471918EEDBF48CEA9872FF68979F8F200106F62DF16FB8BEBF014FA1041EBC4C90E9B2E40E200576E28EC39977F82BB181893180764ED23C19D961722B93FF242C75B03DFAC224276C30E8D14AF3024BE39856B1892BEC8ACA54C4A201EB4904B5318159C58E7B3F98CA1623D4315BBA3550CAADA2AE509549E0B68C6D1AAA30CF511300D7AEAEB30123BF5CD644ACEFCACC15688A9D8D7D451A66A93B3A40BBFD53E20652A0BA6E0B1BC615A172DAD48A9F7921121553B99E684D47BC2C4B87A7F7424226A16F8746D5EB7DA57B6BBB49D330A276B961935BCA44B5D8310B3DA632390B3DA252605D0EEF56F83A07459D79400E21AEFD4082A2C2E6B084A579F462128EFB12D109477C9AB2368B69A6FDAFEC2D2FED4E8C9EF298CFF59AF74D716B8C9F96362D4CCA6ED380FC239602CD3F3F481BC84CFAA93CCB89C74A12EA18B02224508F81222E65E58625BE55201E54576EF519AFFF099F3AB402A80F2DA571D8870C45D46E226F90668F4E8AC12289B8A1980E413131D50396BAC01A3BB8212083FD2AF0111C3B40AB00CE51AD0F248990A8E3DAF5603440F744A1052DFD7A096F90E756535E980AF016CBE9B5C094B3FD335B064B95B8594AD9F0B99995897C92A5DF36052D7DC0811BB23F355BAA23A5CD048FD9BF9BA9C00C8D647FC72F1DE30F494EA78BCDA51754B454D168B845A31DD428DAB2A96874C5CDFC249AA43D6B283EA962C4C172D984AD01EA9C221156B0C0C8EA297EBEC14DDC917D9312653E8269368A662B4312A1C5433E1D53829AF4CEF5ECABBC97A2FA9E6714D66729DBC24CCBA345ECA2BD3BB972847EB9DA4984B34984D7472113FF2EF29D8F2BDA562905ABC9BCF321912FA603ED3E895CC2FC17AED852B46BF843EB1969978C9E2BB65733D8F20C398399CB7C52175610945315841E12D368D4B7AE6C5093A05083C00B2D1B6700329997248AE1933E426D951B7DC88F948224F4DFEA639AA74461433188A7086EB17906950BA71CDB4BE3A9B455464800F62C51EF922F23741A85FF8D7E7CE76BDD9FCD913738442C58305291E9AE314E7F6599CE2A1394EA9C2C102954F9B21E5BA1C2256FE5C469BCF84F69566A51297A4B5039E9846B42DE77BBD50B7982236A7AF3EEB3014E61536581CFE8D39A2524683055626980E15EAA6216DF8C04EF45B70A232FBB6BBB62DB6936E06D4B289D2259476CDA3CE3A4CD3880717B8D8AA39D4F0CA1BBC9CA4F6D6E8C57257BB86D7671FAEF1F3830162C3EB0E0CE8D16EA54FFD6DC3CF7CA937C0A2944F27431FDD4CA5056DB805CEE6B4A9CEAEA58D2BD046B166AFCF3DF9E896276DBD3655B174DCBEB9F4103AA7E75B2BACDB75DB2D7A94FCF40517A59A13195B6B3E76C5BD97866316E99B375955E66D0F97869EC1A537AB598CF441C372C85340E6F16448A75BE36D41377143A739E76A1186E9D8E9DD6816803E6A88C15CAF95C098770D4606DC0D686E74C0BD314714AE39B390C2AB06A5642F337385645FB4C2D378549DA2C19291747D995B3B92DE9A232B2E32B3D08AD72DB0156516DF99A32AEE3AB3C08AD7E6D8E5C567F1FB3DE1A193766BA7E3D829DB8FEE3678D2600CD32FF633F6622E93724B63E5E38658F4BAA804469F4F9253DA8DB08E9CCA0E2374E3940643DF0B719731F94EA8F206A91E93BB61C975F455374CF578CD98BB257E6447447AA1447AAAA4390BD4D9A63ABA2FAF2E72A396E269830F69713791636FF1B401D1D2CB871CCDD227CD6B555EF453D5AE7CDBBC966A64F9EDC881216D138B490AEBF449F1EF629B986ED1D6FFD685B4679B252192A159FF823DFD922018EC9204BBCB5FFD85EF4132D6C913E090F31E6182B22BC8F6C1DEFE81F04319D3F9D18A5992B8DCFEADE6972BF8B61AE10EB5473C5A7B4BBA83AE65F80DC4CE1388FF1480E73FB3482D7E0DA21396A001D7094BFC550717FF8D5249A4E638FCAF3CB863FFCAC3DB609CEA17153AB570C5AF2634C06DF7CB086FA3495A364573D1FEB7E12EB5407E6A4ABA34701EBAF0F9D8FE779AF5C83AFFD73D9F7BC74A3BBB236BCFFA7D92EDA6DE5E7CD56DC74BA83769B72C67A73663B5D73B7E416470517B7D0852E8370FC7900DCB6B248BF8F4103BF53C2095267FA58F77ACF3044F587EDDE01777D8A1840DA228613F43000349EDA2A0BFBF0AAD6A7397E3D0CBB2F261D7B1F97905EB46A5C9B276284D1B5DEBB7D1FBF636E6EB7386C02841772F53F3A9466BF5E7D7DBF77272CA4A54A1EF6CAF9EFC40D6937A504EEEC40CA53A7227448502725F78BDB850A770DC064BAB6EDC762AAF563B6E5334ADD271DA7B76D43936FF28E539B7382A516CAD8DD1250DF2959AD648459293ED14E8B264EC9073842A59D86E03D65726B7DADBA7F3465653ED0D7B9BBC6F26A1FA3E1AD6ECEDF500264A8F760263E5457BA9A2A8E8D94B553B800E2B055A6A73081219A32873CAFA042D05485B6B28565C59328970AB8DA0E79B96EE346EC4018954CABB08E530570BEDA4193BB6FEE69B96DB9C8AC266B932AA119E194958734C2DCD8A2B25A6CBB62391AB9B84E60444DF14CA481A9E8D28943936D77447701B6C274C5F0E736264A3B3670DD94614BD1C9B6CBAB3B913275B2369CB89716D5BDFCF2D33CDF813BA75A14A593C476C567A5E943DA7A813A0CC0E711EDBEE03D946CBE6B754B272560D5BEA4F4AD0E52B153C236A5967829BE3CA66B8D74A53D532792A7BD93448692B7BA5B3A3169953992867384A33E56B9D29AD469E5699318B5BC91CFF5A652EFB992DB57C95CE58D951680D9649F446F5BA59A26156495332C9BE5419E3443A6B0C49BDB3644D4A515DBF664EA5A3CA4AAFD234D56635B27655B6E920A3D2364D536D5B231627DACE443E2573D9639505AA162AC06E471654ECB464F91CF9F3A15AA211722BB57527A7F5695CF48A352121B7560B78721A9E4A0540955870CDF84B81A2951D9EB2662757931AB9E2BAB9B6C6276A8DE2294B74F6E214AE43D65C48ECDF29432972F6E2923E43A78102A77C850A8FF93721399492FDEB1426DEAA849863CC103ADC68BF48731E3E46F9A44328519E44D8BFBA8408B8782A701223EF113808BF26E751D29FB84BF7F8C9A9A807E89E87D71BB4DE205C65183CF8DC37884C5EAAECA732A37C99E7D7E9258BA48F2AE0627AE41CCF75F8E3C6F3DDA2DC678A2D620D049915D15D59D29688ECCEAE5E0AA4AB48D40CD70151F71593B93B18AC7D0C965C874BF00DB6291BA6DF055C01E7A53C10A003A96F08DEEDF3530FAC62102414A3CC8FFF8939EC06CFDFFF1F53C55CCE5B9B0000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'53755bda-e979-4714-af26-5304179640cc', N'Admin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'bfbbb75e-fb9b-4683-8ca9-3f20fed4f5ab', N'Manager')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'11dfe78e-363f-4630-b0af-f39c276f2261', N'53755bda-e979-4714-af26-5304179640cc')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'11dfe78e-363f-4630-b0af-f39c276f2261', N'prabh@gmail.com', 0, N'AAvLz+pCX+6H0nbPCpTWYCISmEpdBaOMiBqP8lbouGZ92BEFaUmCVIyX8krHWUIjUA==', N'0a2128e1-45c9-456e-8419-fe003e132d17', NULL, 0, 0, NULL, 1, 0, N'prabh@gmail.com')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodCategoryID]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_FoodCategoryID] ON [dbo].[FoodItems]
(
	[FoodCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodItemID]    Script Date: 03-Aug-2021 07:03:49 ******/
CREATE NONCLUSTERED INDEX [IX_FoodItemID] ON [dbo].[FoodRateLists]
(
	[FoodItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FoodItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FoodItems_dbo.FoodCategories_FoodCategoryID] FOREIGN KEY([FoodCategoryID])
REFERENCES [dbo].[FoodCategories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodItems] CHECK CONSTRAINT [FK_dbo.FoodItems_dbo.FoodCategories_FoodCategoryID]
GO
ALTER TABLE [dbo].[FoodRateLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FoodRateLists_dbo.FoodItems_FoodItemID] FOREIGN KEY([FoodItemID])
REFERENCES [dbo].[FoodItems] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodRateLists] CHECK CONSTRAINT [FK_dbo.FoodRateLists_dbo.FoodItems_FoodItemID]
GO
USE [master]
GO
ALTER DATABASE [BarHotelManagemet_Prabh] SET  READ_WRITE 
GO