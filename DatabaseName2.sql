USE [master]
GO
/****** Object:  Database [Branagh]    Script Date: 9/7/2021 2:19:47 PM ******/
CREATE DATABASE [Branagh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Branagh', FILENAME = N'G:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Branagh.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Branagh_log', FILENAME = N'L:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Log\Branagh_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Branagh] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Branagh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Branagh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Branagh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Branagh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Branagh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Branagh] SET ARITHABORT OFF 
GO
ALTER DATABASE [Branagh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Branagh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Branagh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Branagh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Branagh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Branagh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Branagh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Branagh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Branagh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Branagh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Branagh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Branagh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Branagh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Branagh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Branagh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Branagh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Branagh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Branagh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Branagh] SET  MULTI_USER 
GO
ALTER DATABASE [Branagh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Branagh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Branagh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Branagh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Branagh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Branagh', N'ON'
GO
ALTER DATABASE [Branagh] SET QUERY_STORE = OFF
GO
USE [Branagh]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Branagh]
GO
/****** Object:  User [DCYF\G-S-DCYF-Data Architects]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-Data Architects] FOR LOGIN [DCYF\G-S-DCYF-Data Architects]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Data Architects]
GO
/****** Object:  Schema [Config]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE SCHEMA [Config]
GO
/****** Object:  Schema [Detail]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE SCHEMA [Detail]
GO
/****** Object:  Schema [ETLImport]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE SCHEMA [ETLImport]
GO
/****** Object:  Schema [Utilities]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE SCHEMA [Utilities]
GO
/****** Object:  UserDefinedFunction [Utilities].[udfRemoveStringData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [Utilities].[udfRemoveStringData] (@mixedString AS VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN 
 DECLARE @resultString VARCHAR(MAX), @tmpString CHAR(1), @i INT, @strLen INT
 DECLARE @FinalResult INT 
 SELECT @resultString='', @i=0, @strLen=LEN(@mixedString)

 WHILE @strLen>=@i
 BEGIN 
 SELECT @tmpString=SUBSTRING (@mixedString,@i/*character index*/,1/*one character*/)
 IF ISNUMERIC(@tmpString)=1
 SELECT @resultString=@resultString+@tmpString 
 SELECT @i=@i+1
 END 

 RETURN @resultString
END
GO
/****** Object:  Table [Config].[MERITBranaghERSCohort]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[MERITBranaghERSCohort](
	[CenterCode] [int] NULL,
	[CenterLicenseNumber] [int] NULL,
	[CenterName] [nvarchar](1000) NULL,
	[CenterAgency] [nvarchar](1000) NULL,
	[CenterAddress1] [varchar](51) NULL,
	[CenterAddress2] [varchar](36) NULL,
	[CenterAddress3] [varchar](36) NULL,
	[CenterCity] [nvarchar](125) NULL,
	[CenterCountyNumber] [varchar](35) NULL,
	[CenterCountyName] [varchar](50) NULL,
	[CenterRegion] [varchar](100) NULL,
	[CenterState] [varchar](2) NULL,
	[CenterZip] [varchar](9) NULL,
	[CenterZipExtension] [int] NULL,
	[CenterFax] [int] NULL,
	[CenterLicensedCapacity] [numeric](38, 0) NULL,
	[CenterPhone] [nvarchar](19) NULL,
	[CenterPhoneExt] [varchar](6) NULL,
	[CenterType] [varchar](400) NULL,
	[CenterEmail] [varchar](60) NULL,
	[CenterOpenTime] [int] NULL,
	[CenterCloseTime] [int] NULL,
	[CenterComments] [int] NULL,
	[StatusDate] [datetime] NULL,
	[FamlinkId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[ECERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[ECERSRObsReportData](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Observation Date] [datetime] NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [decimal](10, 4) NULL,
	[Observation Alternate Score] [decimal](10, 4) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp Number] [bigint] NULL,
	[Observation First Upload Date] [datetime] NULL,
	[Observation Latest Upload Date] [datetime] NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [decimal](10, 4) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [decimal](10, 4) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [decimal](10, 4) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [decimal](10, 4) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [decimal](10, 4) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Item Score 6] [decimal](10, 4) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [decimal](10, 4) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [decimal](10, 4) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Subscale Score 2] [decimal](10, 4) NULL,
	[Subscale Raw Score 2] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 2] [decimal](10, 4) NULL,
	[Item Score 9] [decimal](10, 4) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [decimal](10, 4) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [decimal](10, 4) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Item Score 12] [decimal](10, 4) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [decimal](10, 4) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [decimal](10, 4) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 3] [decimal](10, 4) NULL,
	[Subscale Raw Score 3] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 3] [decimal](10, 4) NULL,
	[Item Score 15] [decimal](10, 4) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [decimal](10, 4) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [decimal](10, 4) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [decimal](10, 4) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Subscale Score 4] [decimal](10, 4) NULL,
	[Subscale Raw Score 4] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 4] [decimal](10, 4) NULL,
	[Item Score 19] [decimal](10, 4) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [decimal](10, 4) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [decimal](10, 4) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [decimal](10, 4) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [decimal](10, 4) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [decimal](10, 4) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Item Score 25] [decimal](10, 4) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [decimal](10, 4) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [decimal](10, 4) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [decimal](10, 4) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 5] [decimal](10, 4) NULL,
	[Subscale Raw Score 5] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 5] [decimal](10, 4) NULL,
	[Item Score 29] [decimal](10, 4) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [decimal](10, 4) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [decimal](10, 4) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [decimal](10, 4) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Item Score 33] [decimal](10, 4) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Subscale Score 6] [decimal](10, 4) NULL,
	[Subscale Raw Score 6] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 6] [decimal](10, 4) NULL,
	[Item Score 34] [decimal](10, 4) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [decimal](10, 4) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [decimal](10, 4) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [decimal](10, 4) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Subscale Score 7] [decimal](10, 4) NULL,
	[Subscale Raw Score 7] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 7] [decimal](10, 4) NULL,
	[Item Score 38] [decimal](10, 4) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [decimal](10, 4) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Item Score 40] [decimal](10, 4) NULL,
	[Item Note 40] [varchar](4000) NULL,
	[Item Score 41] [decimal](10, 4) NULL,
	[Item Note 41] [varchar](4000) NULL,
	[Item Score 42] [decimal](10, 4) NULL,
	[Item Note 42] [varchar](4000) NULL,
	[Item Score 43] [decimal](10, 4) NULL,
	[Item Note 43] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp Number] [bigint] NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [smallint] NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [smallint] NULL,
	[Maximum Children Allowed] [smallint] NULL,
	[Maximum Children Present] [smallint] NULL,
	[Youngest Birthdate] [datetime] NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [datetime] NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [smallint] NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [smallint] NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [smallint] NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [smallint] NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [smallint] NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [datetime] NULL,
	[Final QC] [varchar](100) NULL,
	[Much of the Day] [varchar](100) NULL,
	[Number of Infants] [smallint] NULL,
	[Number of Toddlers] [smallint] NULL,
	[Number of Preschool K] [smallint] NULL,
	[Number of Schoolager] [smallint] NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ObservationTimestamp] [datetime] NULL,
	[AssessorTimestamp] [datetime] NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[ExternalSourceId] [varchar](20) NULL,
 CONSTRAINT [pkDetailECERSRObsReportData] PRIMARY KEY NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[FacilityReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[FacilityReportData](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[FacilityName] [varchar](100) NOT NULL,
	[FacilityCode] [varchar](100) NULL,
	[FacilityAddress1] [varchar](150) NULL,
	[FacilityAddress2] [varchar](100) NULL,
	[FacilityAddress3] [varchar](100) NULL,
	[FacilityCity] [varchar](100) NULL,
	[FacilityState] [varchar](100) NULL,
	[FacilityZip] [varchar](100) NULL,
	[FacilityZipExtension] [varchar](100) NULL,
	[FacilityCountyNumber] [varchar](100) NULL,
	[FacilityCountyName] [varchar](100) NULL,
	[FacilityLicensedCapacity] [decimal](18, 4) NULL,
	[FacilityLicenseNumber] [varchar](100) NOT NULL,
	[FacilityPhone] [varchar](100) NULL,
	[FacilityPhoneExtension] [varchar](100) NULL,
	[FacilityFax] [varchar](100) NULL,
	[FacilityRegion] [varchar](100) NULL,
	[FacilityType] [varchar](100) NULL,
	[FacilityOpenTime] [varchar](100) NULL,
	[FacilityCloseTime] [varchar](100) NULL,
	[FacilityComments] [varchar](100) NULL,
	[FacilityGUID] [varchar](100) NOT NULL,
	[FacilityTimestamp] [varchar](100) NOT NULL,
	[CurrentAccountId] [varchar](20) NULL,
	[CurrentQualityRatingCaseId] [varchar](20) NULL,
	[CurrentExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailFacilityReportData] PRIMARY KEY NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[FCCERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[FCCERSRObsReportData](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Observation Date] [datetime] NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [decimal](10, 4) NULL,
	[Observation Alternate Score] [decimal](10, 4) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp Number] [bigint] NULL,
	[Observation First Upload Date] [datetime] NULL,
	[Observation Latest Upload Date] [datetime] NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [decimal](10, 4) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [decimal](10, 4) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [decimal](10, 4) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [decimal](10, 4) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [decimal](10, 4) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Item Score 6] [decimal](10, 4) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [decimal](10, 4) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [decimal](10, 4) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Subscale Score 2] [decimal](10, 4) NULL,
	[Subscale Raw Score 2] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 2] [decimal](10, 4) NULL,
	[Item Score 9] [decimal](10, 4) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [decimal](10, 4) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [decimal](10, 4) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Item Score 12] [decimal](10, 4) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [decimal](10, 4) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [decimal](10, 4) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 3] [decimal](10, 4) NULL,
	[Subscale Raw Score 3] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 3] [decimal](10, 4) NULL,
	[Item Score 15] [decimal](10, 4) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [decimal](10, 4) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [decimal](10, 4) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [decimal](10, 4) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Subscale Score 4] [decimal](10, 4) NULL,
	[Subscale Raw Score 4] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 4] [decimal](10, 4) NULL,
	[Item Score 19] [decimal](10, 4) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [decimal](10, 4) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [decimal](10, 4) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [decimal](10, 4) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [decimal](10, 4) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [decimal](10, 4) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Item Score 25] [decimal](10, 4) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [decimal](10, 4) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [decimal](10, 4) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [decimal](10, 4) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 5] [decimal](10, 4) NULL,
	[Subscale Raw Score 5] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 5] [decimal](10, 4) NULL,
	[Item Score 29] [decimal](10, 4) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [decimal](10, 4) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [decimal](10, 4) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [decimal](10, 4) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Item Score 33] [decimal](10, 4) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Subscale Score 6] [decimal](10, 4) NULL,
	[Subscale Raw Score 6] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 6] [decimal](10, 4) NULL,
	[Item Score 34] [decimal](10, 4) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [decimal](10, 4) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [decimal](10, 4) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [decimal](10, 4) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Subscale Score 7] [decimal](10, 4) NULL,
	[Subscale Raw Score 7] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 7] [decimal](10, 4) NULL,
	[Item Score 38] [decimal](10, 4) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [decimal](10, 4) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp Number] [bigint] NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [smallint] NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [smallint] NULL,
	[Maximum Children Allowed] [smallint] NULL,
	[Maximum Children Present] [smallint] NULL,
	[Youngest Birthdate] [datetime] NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [datetime] NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [smallint] NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [smallint] NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [smallint] NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [smallint] NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [smallint] NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [datetime] NULL,
	[Final QC] [datetime] NULL,
	[Much of the Day] [varchar](1000) NULL,
	[Number of Infants] [smallint] NULL,
	[Number of Toddlers] [smallint] NULL,
	[Number of Preschool K] [smallint] NULL,
	[Number of Schoolagers] [smallint] NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ObservationTimestamp] [datetime] NULL,
	[AssessorTimestamp] [datetime] NULL,
	[ExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailFCCERSRObsReportData] PRIMARY KEY NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[FileImportProperties]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[FileImportProperties](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileCreationDate] [datetime] NULL,
	[FileLastModifiedDate] [datetime] NULL,
	[FileSize] [int] NULL,
	[FileImportSuccessful] [bit] NULL,
	[FileInsertDatetime] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[ITERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[ITERSRObsReportData](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Observation Date] [datetime] NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [decimal](10, 4) NULL,
	[Observation Alternate Score] [decimal](10, 4) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp Number] [bigint] NULL,
	[Observation First Upload Date] [datetime] NULL,
	[Observation Latest Upload Date] [datetime] NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [decimal](10, 4) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [decimal](10, 4) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [decimal](10, 4) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [decimal](10, 4) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [decimal](10, 4) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Item Score 6] [decimal](10, 4) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [decimal](10, 4) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [decimal](10, 4) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Subscale Score 2] [decimal](10, 4) NULL,
	[Subscale Raw Score 2] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 2] [decimal](10, 4) NULL,
	[Item Score 9] [decimal](10, 4) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [decimal](10, 4) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [decimal](10, 4) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Item Score 12] [decimal](10, 4) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [decimal](10, 4) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [decimal](10, 4) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 3] [decimal](10, 4) NULL,
	[Subscale Raw Score 3] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 3] [decimal](10, 4) NULL,
	[Item Score 15] [decimal](10, 4) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [decimal](10, 4) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [decimal](10, 4) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [decimal](10, 4) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Subscale Score 4] [decimal](10, 4) NULL,
	[Subscale Raw Score 4] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 4] [decimal](10, 4) NULL,
	[Item Score 19] [decimal](10, 4) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [decimal](10, 4) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [decimal](10, 4) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [decimal](10, 4) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [decimal](10, 4) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [decimal](10, 4) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Item Score 25] [decimal](10, 4) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [decimal](10, 4) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [decimal](10, 4) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [decimal](10, 4) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 5] [decimal](10, 4) NULL,
	[Subscale Raw Score 5] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 5] [decimal](10, 4) NULL,
	[Item Score 29] [decimal](10, 4) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [decimal](10, 4) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [decimal](10, 4) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [decimal](10, 4) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Item Score 33] [decimal](10, 4) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Subscale Score 6] [decimal](10, 4) NULL,
	[Subscale Raw Score 6] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 6] [decimal](10, 4) NULL,
	[Item Score 34] [decimal](10, 4) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [decimal](10, 4) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [decimal](10, 4) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [decimal](10, 4) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Subscale Score 7] [decimal](10, 4) NULL,
	[Subscale Raw Score 7] [decimal](10, 4) NULL,
	[Subscale Number of Items Scored 7] [decimal](10, 4) NULL,
	[Item Score 38] [decimal](10, 4) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [decimal](10, 4) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp Number] [bigint] NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [smallint] NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [smallint] NULL,
	[Maximum Children Allowed] [smallint] NULL,
	[Maximum Children Present] [smallint] NULL,
	[Youngest Birthdate] [datetime] NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [datetime] NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [smallint] NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [smallint] NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [smallint] NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [smallint] NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [smallint] NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [datetime] NULL,
	[Final QC] [varchar](100) NULL,
	[Much of the Day] [varchar](1000) NULL,
	[Number of Infants] [smallint] NULL,
	[Number of Toddlers] [smallint] NULL,
	[Number of Preschool K] [smallint] NULL,
	[Number of Schoolagers] [smallint] NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ObservationTimestamp] [datetime] NULL,
	[AssessorTimestamp] [datetime] NULL,
	[ExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailITERSRObsReportData] PRIMARY KEY NONCLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ECERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ECERSRObsReportData](
	[Observation Date] [varchar](100) NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [varchar](100) NULL,
	[Observation Alternate Score] [varchar](100) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp] [varchar](100) NULL,
	[Observation First Upload Date] [varchar](100) NULL,
	[Observation Latest Upload Date] [varchar](100) NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [varchar](100) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [varchar](100) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [varchar](100) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [varchar](100) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [varchar](100) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Item Score 6] [varchar](100) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [varchar](100) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [varchar](100) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Subscale Score 2] [varchar](100) NULL,
	[Subscale Raw Score 2] [varchar](100) NULL,
	[Subscale Number of Items Scored 2] [varchar](100) NULL,
	[Item Score 9] [varchar](100) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [varchar](100) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [varchar](100) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Item Score 12] [varchar](100) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [varchar](100) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [varchar](100) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 3] [varchar](100) NULL,
	[Subscale Raw Score 3] [varchar](100) NULL,
	[Subscale Number of Items Scored 3] [varchar](100) NULL,
	[Item Score 15] [varchar](100) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [varchar](100) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [varchar](100) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [varchar](100) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Subscale Score 4] [varchar](100) NULL,
	[Subscale Raw Score 4] [varchar](100) NULL,
	[Subscale Number of Items Scored 4] [varchar](100) NULL,
	[Item Score 19] [varchar](100) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [varchar](100) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [varchar](100) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [varchar](100) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [varchar](100) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [varchar](100) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Item Score 25] [varchar](100) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [varchar](100) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [varchar](100) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [varchar](100) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 5] [varchar](100) NULL,
	[Subscale Raw Score 5] [varchar](100) NULL,
	[Subscale Number of Items Scored 5] [varchar](100) NULL,
	[Item Score 29] [varchar](100) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [varchar](100) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [varchar](100) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [varchar](100) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Item Score 33] [varchar](100) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Subscale Score 6] [varchar](100) NULL,
	[Subscale Raw Score 6] [varchar](100) NULL,
	[Subscale Number of Items Scored 6] [varchar](100) NULL,
	[Item Score 34] [varchar](100) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [varchar](100) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [varchar](100) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [varchar](100) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Subscale Score 7] [varchar](100) NULL,
	[Subscale Raw Score 7] [varchar](100) NULL,
	[Subscale Number of Items Scored 7] [varchar](100) NULL,
	[Item Score 38] [varchar](100) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [varchar](100) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Item Score 40] [varchar](100) NULL,
	[Item Note 40] [varchar](4000) NULL,
	[Item Score 41] [varchar](100) NULL,
	[Item Note 41] [varchar](4000) NULL,
	[Item Score 42] [varchar](100) NULL,
	[Item Note 42] [varchar](4000) NULL,
	[Item Score 43] [varchar](100) NULL,
	[Item Note 43] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp] [varchar](100) NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [varchar](100) NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [varchar](100) NULL,
	[Maximum Children Allowed] [varchar](100) NULL,
	[Maximum Children Present] [varchar](100) NULL,
	[Youngest Birthdate] [varchar](100) NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [varchar](100) NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [varchar](100) NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [varchar](100) NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [varchar](100) NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [varchar](100) NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [varchar](100) NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [varchar](100) NULL,
	[Final QC] [varchar](100) NULL,
	[Much of the Day] [varchar](100) NULL,
	[Number of Infants] [varchar](100) NULL,
	[Number of Toddlers] [varchar](100) NULL,
	[Number of Preschool K] [varchar](100) NULL,
	[Number of Schoolager] [varchar](100) NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[FacilityReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[FacilityReportData](
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Facility Address 1] [varchar](150) NULL,
	[Facility Address 2] [varchar](100) NULL,
	[Facility Address 3] [varchar](100) NULL,
	[Facility City] [varchar](100) NULL,
	[Facility State] [varchar](100) NULL,
	[Facility Zip] [varchar](100) NULL,
	[Facility Zip Extension] [varchar](100) NULL,
	[Facility County Number] [varchar](100) NULL,
	[Facility County Name] [varchar](100) NULL,
	[Facility Licensed Capacity] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Phone] [varchar](100) NULL,
	[Facility Phone Extension] [varchar](100) NULL,
	[Facility Fax] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Type] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility Comments] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Facility Timestamp] [varchar](100) NULL,
	[CurrentAccountId] [varchar](20) NULL,
	[CurrentQualityRatingCaseId] [varchar](20) NULL,
	[CurrenExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[FCCERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[FCCERSRObsReportData](
	[Observation Date] [varchar](100) NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [varchar](100) NULL,
	[Observation Alternate Score] [varchar](100) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp] [varchar](100) NULL,
	[Observation First Upload Date] [varchar](100) NULL,
	[Observation Latest Upload Date] [varchar](100) NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [varchar](100) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [varchar](100) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [varchar](100) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [varchar](100) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [varchar](100) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Subscale Score 2] [varchar](100) NULL,
	[Subscale Raw Score 2] [varchar](100) NULL,
	[Subscale Number of Items Scored 2] [varchar](100) NULL,
	[Item Score 6] [varchar](100) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [varchar](100) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [varchar](100) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Item Score 9] [varchar](100) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [varchar](100) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [varchar](100) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Subscale Score 3] [varchar](100) NULL,
	[Subscale Raw Score 3] [varchar](100) NULL,
	[Subscale Number of Items Scored 3] [varchar](100) NULL,
	[Item Score 12] [varchar](100) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [varchar](100) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [varchar](100) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 4] [varchar](100) NULL,
	[Subscale Raw Score 4] [varchar](100) NULL,
	[Subscale Number of Items Scored 4] [varchar](100) NULL,
	[Item Score 15] [varchar](100) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [varchar](100) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [varchar](100) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [varchar](100) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Item Score 19] [varchar](100) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [varchar](100) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [varchar](100) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [varchar](100) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [varchar](100) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [varchar](100) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Subscale Score 5] [varchar](100) NULL,
	[Subscale Raw Score 5] [varchar](100) NULL,
	[Subscale Number of Items Scored 5] [varchar](100) NULL,
	[Item Score 25] [varchar](100) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [varchar](100) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [varchar](100) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [varchar](100) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 6] [varchar](100) NULL,
	[Subscale Raw Score 6] [varchar](100) NULL,
	[Subscale Number of Items Scored 6] [varchar](100) NULL,
	[Item Score 29] [varchar](100) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [varchar](100) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [varchar](100) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [varchar](100) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Subscale Score 7] [varchar](100) NULL,
	[Subscale Raw Score 7] [varchar](100) NULL,
	[Subscale Number of Items Scored 7] [varchar](100) NULL,
	[Item Score 33] [varchar](100) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Item Score 34] [varchar](100) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [varchar](100) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [varchar](100) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [varchar](100) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Item Score 38] [varchar](100) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [varchar](100) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp] [varchar](100) NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [varchar](100) NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [varchar](100) NULL,
	[Maximum Children Allowed] [varchar](100) NULL,
	[Maximum Children Present] [varchar](100) NULL,
	[Youngest Birthdate] [varchar](100) NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [varchar](100) NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [varchar](100) NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [varchar](100) NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [varchar](100) NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [varchar](100) NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [varchar](100) NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [varchar](100) NULL,
	[Final QC] [varchar](100) NULL,
	[Much of the Day] [varchar](1000) NULL,
	[Number of Infants] [varchar](100) NULL,
	[Number of Toddlers] [varchar](100) NULL,
	[Number of Preschool K] [varchar](100) NULL,
	[Number of Schoolagers] [varchar](100) NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ITERSRObsReportData]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ITERSRObsReportData](
	[Observation Date] [varchar](100) NULL,
	[Observation Status] [varchar](100) NULL,
	[Observation Scale] [varchar](100) NULL,
	[Observation Start Time] [varchar](100) NULL,
	[Observation End Time] [varchar](100) NULL,
	[Observation Score] [varchar](100) NULL,
	[Observation Alternate Score] [varchar](100) NULL,
	[Observation Reliability] [varchar](100) NULL,
	[Observation Consensus] [varchar](100) NULL,
	[Observation IR Code] [varchar](100) NULL,
	[Observation IR Percentage] [varchar](100) NULL,
	[Observation GUID] [varchar](100) NULL,
	[Observation Timestamp] [varchar](100) NULL,
	[Observation First Upload Date] [varchar](100) NULL,
	[Observation Latest Upload Date] [varchar](100) NULL,
	[Subscale Score 1] [varchar](100) NULL,
	[Subscale Raw Score 1] [varchar](100) NULL,
	[Subscale Number of Items Scored 1] [varchar](100) NULL,
	[Item Score 1] [varchar](100) NULL,
	[Item Note 1] [varchar](4000) NULL,
	[Item Score 2] [varchar](100) NULL,
	[Item Note 2] [varchar](4000) NULL,
	[Item Score 3] [varchar](100) NULL,
	[Item Note 3] [varchar](4000) NULL,
	[Item Score 4] [varchar](100) NULL,
	[Item Note 4] [varchar](4000) NULL,
	[Item Score 5] [varchar](100) NULL,
	[Item Note 5] [varchar](4000) NULL,
	[Subscale Score 2] [varchar](100) NULL,
	[Subscale Raw Score 2] [varchar](100) NULL,
	[Subscale Number of Items Scored 2] [varchar](100) NULL,
	[Item Score 6] [varchar](100) NULL,
	[Item Note 6] [varchar](4000) NULL,
	[Item Score 7] [varchar](100) NULL,
	[Item Note 7] [varchar](4000) NULL,
	[Item Score 8] [varchar](100) NULL,
	[Item Note 8] [varchar](4000) NULL,
	[Item Score 9] [varchar](100) NULL,
	[Item Note 9] [varchar](4000) NULL,
	[Item Score 10] [varchar](100) NULL,
	[Item Note 10] [varchar](4000) NULL,
	[Item Score 11] [varchar](100) NULL,
	[Item Note 11] [varchar](4000) NULL,
	[Subscale Score 3] [varchar](100) NULL,
	[Subscale Raw Score 3] [varchar](100) NULL,
	[Subscale Number of Items Scored 3] [varchar](100) NULL,
	[Item Score 12] [varchar](100) NULL,
	[Item Note 12] [varchar](4000) NULL,
	[Item Score 13] [varchar](100) NULL,
	[Item Note 13] [varchar](4000) NULL,
	[Item Score 14] [varchar](100) NULL,
	[Item Note 14] [varchar](4000) NULL,
	[Subscale Score 4] [varchar](100) NULL,
	[Subscale Raw Score 4] [varchar](100) NULL,
	[Subscale Number of Items Scored 4] [varchar](100) NULL,
	[Item Score 15] [varchar](100) NULL,
	[Item Note 15] [varchar](4000) NULL,
	[Item Score 16] [varchar](100) NULL,
	[Item Note 16] [varchar](4000) NULL,
	[Item Score 17] [varchar](100) NULL,
	[Item Note 17] [varchar](4000) NULL,
	[Item Score 18] [varchar](100) NULL,
	[Item Note 18] [varchar](4000) NULL,
	[Item Score 19] [varchar](100) NULL,
	[Item Note 19] [varchar](4000) NULL,
	[Item Score 20] [varchar](100) NULL,
	[Item Note 20] [varchar](4000) NULL,
	[Item Score 21] [varchar](100) NULL,
	[Item Note 21] [varchar](4000) NULL,
	[Item Score 22] [varchar](100) NULL,
	[Item Note 22] [varchar](4000) NULL,
	[Item Score 23] [varchar](100) NULL,
	[Item Note 23] [varchar](4000) NULL,
	[Item Score 24] [varchar](100) NULL,
	[Item Note 24] [varchar](4000) NULL,
	[Subscale Score 5] [varchar](100) NULL,
	[Subscale Raw Score 5] [varchar](100) NULL,
	[Subscale Number of Items Scored 5] [varchar](100) NULL,
	[Item Score 25] [varchar](100) NULL,
	[Item Note 25] [varchar](4000) NULL,
	[Item Score 26] [varchar](100) NULL,
	[Item Note 26] [varchar](4000) NULL,
	[Item Score 27] [varchar](100) NULL,
	[Item Note 27] [varchar](4000) NULL,
	[Item Score 28] [varchar](100) NULL,
	[Item Note 28] [varchar](4000) NULL,
	[Subscale Score 6] [varchar](100) NULL,
	[Subscale Raw Score 6] [varchar](100) NULL,
	[Subscale Number of Items Scored 6] [varchar](100) NULL,
	[Item Score 29] [varchar](100) NULL,
	[Item Note 29] [varchar](4000) NULL,
	[Item Score 30] [varchar](100) NULL,
	[Item Note 30] [varchar](4000) NULL,
	[Item Score 31] [varchar](100) NULL,
	[Item Note 31] [varchar](4000) NULL,
	[Item Score 32] [varchar](100) NULL,
	[Item Note 32] [varchar](4000) NULL,
	[Subscale Score 7] [varchar](100) NULL,
	[Subscale Raw Score 7] [varchar](100) NULL,
	[Subscale Number of Items Scored 7] [varchar](100) NULL,
	[Item Score 33] [varchar](100) NULL,
	[Item Note 33] [varchar](4000) NULL,
	[Item Score 34] [varchar](100) NULL,
	[Item Note 34] [varchar](4000) NULL,
	[Item Score 35] [varchar](100) NULL,
	[Item Note 35] [varchar](4000) NULL,
	[Item Score 36] [varchar](100) NULL,
	[Item Note 36] [varchar](4000) NULL,
	[Item Score 37] [varchar](100) NULL,
	[Item Note 37] [varchar](4000) NULL,
	[Item Score 38] [varchar](100) NULL,
	[Item Note 38] [varchar](4000) NULL,
	[Item Score 39] [varchar](100) NULL,
	[Item Note 39] [varchar](4000) NULL,
	[Assessor First Name] [varchar](100) NULL,
	[Assessor Middle Name] [varchar](100) NULL,
	[Assessor Last Name] [varchar](100) NULL,
	[Assessor Code] [varchar](100) NULL,
	[Assessor GUID] [varchar](100) NULL,
	[Assessor Timestamp] [varchar](100) NULL,
	[Facility Name] [varchar](100) NULL,
	[Facility Code] [varchar](100) NULL,
	[Room] [varchar](100) NULL,
	[Room Code] [varchar](100) NULL,
	[Facility License Number] [varchar](100) NULL,
	[Facility Region] [varchar](100) NULL,
	[Facility Open Time] [varchar](100) NULL,
	[Facility Close Time] [varchar](100) NULL,
	[Facility GUID] [varchar](100) NULL,
	[Number of Staff Present] [varchar](100) NULL,
	[Staff First Name 1] [varchar](100) NULL,
	[Staff Middle Name 1] [varchar](100) NULL,
	[Staff Last Name 1] [varchar](100) NULL,
	[Staff Code 1] [varchar](100) NULL,
	[Staff Title 1] [varchar](100) NULL,
	[Staff Position 1] [varchar](100) NULL,
	[Staff Email 1] [varchar](100) NULL,
	[Staff Education 1] [varchar](100) NULL,
	[Staff Major 1] [varchar](100) NULL,
	[Staff Years at Facility 1] [varchar](100) NULL,
	[Staff Months at Facility 1] [varchar](100) NULL,
	[Staff Years in Early Child Care 1] [varchar](100) NULL,
	[Staff Months in Early Child Care 1] [varchar](100) NULL,
	[Staff GUID 1] [varchar](100) NULL,
	[Staff First Name 2] [varchar](100) NULL,
	[Staff Middle Name 2] [varchar](100) NULL,
	[Staff Last Name 2] [varchar](100) NULL,
	[Staff Code 2] [varchar](100) NULL,
	[Staff Title 2] [varchar](100) NULL,
	[Staff Position 2] [varchar](100) NULL,
	[Staff Email 2] [varchar](100) NULL,
	[Staff Education 2] [varchar](100) NULL,
	[Staff Major 2] [varchar](100) NULL,
	[Staff Years at Facility 2] [varchar](100) NULL,
	[Staff Months at Facility 2] [varchar](100) NULL,
	[Staff Years in Early Child Care 2] [varchar](100) NULL,
	[Staff Months in Early Child Care 2] [varchar](100) NULL,
	[Staff GUID 2] [varchar](100) NULL,
	[Staff First Name 3] [varchar](100) NULL,
	[Staff Middle Name 3] [varchar](100) NULL,
	[Staff Last Name 3] [varchar](100) NULL,
	[Staff Code 3] [varchar](100) NULL,
	[Staff Title 3] [varchar](100) NULL,
	[Staff Position 3] [varchar](100) NULL,
	[Staff Email 3] [varchar](100) NULL,
	[Staff Education 3] [varchar](100) NULL,
	[Staff Major 3] [varchar](100) NULL,
	[Staff Years at Facility 3] [varchar](100) NULL,
	[Staff Months at Facility 3] [varchar](100) NULL,
	[Staff Years in Early Child Care 3] [varchar](100) NULL,
	[Staff Months in Early Child Care 3] [varchar](100) NULL,
	[Staff GUID 3] [varchar](100) NULL,
	[Number of Children Enrolled] [varchar](100) NULL,
	[Maximum Children Allowed] [varchar](100) NULL,
	[Maximum Children Present] [varchar](100) NULL,
	[Youngest Birthdate] [varchar](100) NULL,
	[Youngest Age Years] [varchar](100) NULL,
	[Youngest Age Months] [varchar](100) NULL,
	[Oldest Birthdate] [varchar](100) NULL,
	[Oldest Age Years] [varchar](100) NULL,
	[Oldest Age Months] [varchar](100) NULL,
	[Primary Language] [varchar](100) NULL,
	[Secondary Language] [varchar](100) NULL,
	[Infants Enrolled-FCCERS-R] [varchar](100) NULL,
	[Toddlers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Preschool K Enrolled-FCCERS-R] [varchar](100) NULL,
	[School-agers Enrolled-FCCERS-R] [varchar](100) NULL,
	[Total Number of Special Needs] [varchar](100) NULL,
	[Type of Special Need 1] [varchar](100) NULL,
	[Total Number w Special Need 1] [varchar](100) NULL,
	[Type of Special Need 2] [varchar](100) NULL,
	[Total Number w Special Need 2] [varchar](100) NULL,
	[Type of Special Need 3] [varchar](100) NULL,
	[Total Number w Special Need 3] [varchar](100) NULL,
	[Assessment Type] [varchar](100) NULL,
	[Cohort Number] [varchar](100) NULL,
	[Cohort Year] [varchar](100) NULL,
	[Number of 2 year olds] [varchar](100) NULL,
	[Number of 3 year olds] [varchar](100) NULL,
	[Number of 4 year olds] [varchar](100) NULL,
	[Number of 5 year olds] [varchar](100) NULL,
	[1st QC] [varchar](100) NULL,
	[Final QC] [varchar](100) NULL,
	[Much of the Day] [varchar](1000) NULL,
	[Number of Infants] [varchar](100) NULL,
	[Number of Toddlers] [varchar](100) NULL,
	[Number of Preschool K] [varchar](100) NULL,
	[Number of Schoolagers] [varchar](100) NULL,
	[1st QC Initials] [varchar](100) NULL,
	[Final QC Initials] [varchar](100) NULL,
	[QualityRatingCaseId] [varchar](100) NULL,
	[AccountId] [varchar](100) NULL,
	[ExternalSourceId] [varchar](20) NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_CurrentPreviousInd]    Script Date: 9/7/2021 2:19:48 PM ******/
CREATE NONCLUSTERED INDEX [ix_CurrentPreviousInd] ON [Detail].[ECERSRObsReportData]
(
	[CurrentPreviousInd] ASC
)
INCLUDE([Observation GUID],[RecordHash]) WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
GO
ALTER TABLE [Detail].[ECERSRObsReportData] ADD  CONSTRAINT [DF_DetailECERSRObsReportData_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[ECERSRObsReportData] ADD  CONSTRAINT [DF_DetailECERSRObsReportData_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[ECERSRObsReportData] ADD  CONSTRAINT [DF_DetailECERSRObsReportData_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[ECERSRObsReportData] ADD  CONSTRAINT [DF_DetailECERSRObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[FacilityReportData] ADD  CONSTRAINT [DF_DetailFacilityReportData_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[FacilityReportData] ADD  CONSTRAINT [DF_DetailFacilityReportData_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[FacilityReportData] ADD  CONSTRAINT [DF_DetailFacilityReportData_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[FacilityReportData] ADD  CONSTRAINT [DF_DetailFacilityReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[FCCERSRObsReportData] ADD  CONSTRAINT [DF_DetailFCCERSRObsReportData_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[FCCERSRObsReportData] ADD  CONSTRAINT [DF_DetailFCCERSRObsReportData_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[FCCERSRObsReportData] ADD  CONSTRAINT [DF_DetailFCCERSRObsReportData_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[FCCERSRObsReportData] ADD  CONSTRAINT [DF_DetailFCCERSRObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[FileImportProperties] ADD  CONSTRAINT [DF_FileImportProperties_FileInsertDatetime]  DEFAULT (sysdatetime()) FOR [FileInsertDatetime]
GO
ALTER TABLE [Detail].[ITERSRObsReportData] ADD  CONSTRAINT [DF_DetailITERSRObsReportData_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[ITERSRObsReportData] ADD  CONSTRAINT [DF_DetailITERSRObsReportData_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[ITERSRObsReportData] ADD  CONSTRAINT [DF_DetailITERSRObsReportData_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[ITERSRObsReportData] ADD  CONSTRAINT [DF_DetailITERSRObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[ECERSRObsReportData] ADD  CONSTRAINT [DF_ETLECERSRObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[FacilityReportData] ADD  CONSTRAINT [DF_ETLFacilityReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[FCCERSRObsReportData] ADD  CONSTRAINT [DF_ETLFCCERSObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[ITERSRObsReportData] ADD  CONSTRAINT [DF_ETLITERSRObsReportData_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
/****** Object:  StoredProcedure [ETLImport].[spCleanUpColumnDataByLength]    Script Date: 9/7/2021 2:19:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[spCleanUpColumnDataByLength]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
-- Pulls a list of columns from a specific database, Schema, Table and checks for blanks and replaces
them will NULL

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-04-20: Created by William Benson (DEL)

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImport].[spCleanUpColumnDataByLength]
@DatabaseName = 'Branagh'
,@SchemaName = 'ETLImport'
,@TableName = 'ECERSRObsReportData';

EXEC [ETLImport].[spCleanUpColumnDataByLength]
@SchemaName = 'ETLImport'
,@TableName = 'ECERSRObsReportData';


**************************************************************************************************/
CREATE PROCEDURE [ETLImport].[spCleanUpColumnDataByLength]
@DatabaseName AS sysname = NULL
,@SchemaName AS sysname
,@TableName AS sysname
,@Debug AS BIT = 0

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE @SQLStatementStart AS NVARCHAR(MAX) /* Start of the SELECT */
	, @SQLStatementMiddle AS NVARCHAR(MAX)
	, @SQLStatementEnd AS NVARCHAR(MAX)
	, @SQLStatement AS NVARCHAR(MAX)
	, @TableColumnCount SMALLINT
	, @LoopCounterStart SMALLINT = 1
	, @ColumnName NVARCHAR(128);

	/** Raise an error with the details of the exception **/
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT;
	
	DECLARE @tblColumnList TABLE(RecordId SMALLINT IDENTITY(1,1) NOT NULL, ColumnName NVARCHAR(128));

	IF @DatabaseName IS NULL
	BEGIN
		SELECT @DatabaseName = DB_NAME();
	END

	SELECT @SQLStatementStart = 'Update trgt' + CHAR(13);
	SELECT @SQLStatementEnd = 'FROM ' + @SchemaName + '.' + @TableName + ' AS trgt';

	INSERT INTO @tblColumnList(ColumnName)
	SELECT
	COLUMN_NAME
	FROM information_schema.columns
	WHERE TABLE_CATALOG = @DatabaseName
	AND TABLE_SCHEMA = @SchemaName
	AND TABLE_NAME = @TableName
	AND CHARACTER_MAXIMUM_LENGTH IS NOT NULL;

	SELECT @TableColumnCount = @@ROWCOUNT;

	WHILE @LoopCounterStart < @TableColumnCount
	BEGIN

		SELECT
		@ColumnName = ColumnName
		FROM @tblColumnList
		WHERE RecordId = @LoopCounterStart;

		IF @LoopCounterStart = 1
		BEGIN
			/* SET trgt.[Observation Date] = CASE WHEN LEN(trgt.[Observation Date]) >0 THEN trgt.[Observation Date] ELSE NULL END */
			SELECT @SQLStatementMiddle = 'SET trgt.[' + @ColumnName + '] = CASE WHEN LEN(trgt.[' + @ColumnName + ']) >0 THEN trgt.[' + @ColumnName + '] ELSE NULL END ' + CHAR(13);
		END
		ELSE
		BEGIN
			/* ,trgt.[Observation Status] = CASE WHEN LEN(trgt.[Observation Status]) >0 THEN trgt.[Observation Status] ELSE NULL END */
			SELECT @SQLStatementMiddle = @SQLStatementMiddle + ',trgt.[' + @ColumnName + '] = CASE WHEN LEN(trgt.[' + @ColumnName + ']) >0 THEN trgt.[' + @ColumnName + '] ELSE NULL END ' + CHAR(13);
		END

		SELECT @LoopCounterStart = @LoopCounterStart + 1;
	END
	
	SELECT @SQLStatement = @SQLStatementStart + @SQLStatementMiddle + @SQLStatementEnd;

	IF @Debug = 1
	BEGIN
		SELECT @SQLStatement;
	END

	BEGIN TRY
	EXEC(@SQLStatement);
	END TRY
	BEGIN CATCH
			/** Grab specific information about the error/object **/
			SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID)
			, @E_ErrorLineNumber = ERROR_LINE();                   
                
			SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ') '  
                                                                                                                                                     
			/** Raise the error message **/
			RAISERROR (@ErrMsg, 18, 1) ;
	END CATCH

END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique auto number for the record in the table.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'FileImportProperties', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table stores the log of what files where imported from the SFTp' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'FileImportProperties'
GO
USE [master]
GO
ALTER DATABASE [Branagh] SET  READ_WRITE 
GO
