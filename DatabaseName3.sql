USE [master]
GO
/****** Object:  Database [WACompass]    Script Date: 9/7/2021 2:21:15 PM ******/
CREATE DATABASE [WACompass]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WACompass', FILENAME = N'G:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\WACompass.mdf' , SIZE = 11739136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WACompass_log', FILENAME = N'L:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Log\WACompass_log.ldf' , SIZE = 4202496KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WACompass] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WACompass].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WACompass] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WACompass] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WACompass] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WACompass] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WACompass] SET ARITHABORT OFF 
GO
ALTER DATABASE [WACompass] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WACompass] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WACompass] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WACompass] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WACompass] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WACompass] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WACompass] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WACompass] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WACompass] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WACompass] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WACompass] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WACompass] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WACompass] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WACompass] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WACompass] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WACompass] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WACompass] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WACompass] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WACompass] SET  MULTI_USER 
GO
ALTER DATABASE [WACompass] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WACompass] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WACompass] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WACompass] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WACompass] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WACompass', N'ON'
GO
ALTER DATABASE [WACompass] SET QUERY_STORE = OFF
GO
USE [WACompass]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [WACompass]
GO
/****** Object:  User [DCYF\william.benson]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\william.benson] FOR LOGIN [DCYF\william.benson] WITH DEFAULT_SCHEMA=[DCYF\william.benson]
GO
/****** Object:  User [DCYF\G-S-DCYF-SalesForce Developers]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-SalesForce Developers] FOR LOGIN [DCYF\G-S-DCYF-SalesForce Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-OIAA DI Database Leads]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-OIAA DI Database Leads] FOR LOGIN [DCYF\G-S-DCYF-OIAA DI Database Leads] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DCYF\G-S-DCYF-Merit Developers]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Merit Developers] FOR LOGIN [DCYF\G-S-DCYF-Merit Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Data Dictionary Developers]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Data Dictionary Developers] FOR LOGIN [DCYF\G-S-DCYF-Data Dictionary Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Data Architects]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Data Architects] FOR LOGIN [DCYF\G-S-DCYF-Data Architects]
GO
/****** Object:  User [DCYF\G-S-DCYF-Contract ETL Developers]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Contract ETL Developers] FOR LOGIN [DCYF\G-S-DCYF-Contract ETL Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Attendance Developers]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Attendance Developers] FOR LOGIN [DCYF\G-S-DCYF-Attendance Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Attendance Data Analytics]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Attendance Data Analytics] FOR LOGIN [DCYF\G-S-DCYF-Attendance Data Analytics]
GO
/****** Object:  User [DCYF\G-S-DCYF-Attendance Business Users]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DCYF\G-S-DCYF-Attendance Business Users] FOR LOGIN [DCYF\G-S-DCYF-Attendance Business Users]
GO
/****** Object:  User [DataDictionary_User]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [DataDictionary_User] FOR LOGIN [DataDictionary_User] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Attendance_Reporting]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE USER [Attendance_Reporting] FOR LOGIN [Attendance_Reporting] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [rlDataDictionary]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE ROLE [rlDataDictionary]
GO
/****** Object:  DatabaseRole [rlAttendance]    Script Date: 9/7/2021 2:21:16 PM ******/
CREATE ROLE [rlAttendance]
GO
/****** Object:  DatabaseRole [dvlprlOIAA]    Script Date: 9/7/2021 2:21:17 PM ******/
CREATE ROLE [dvlprlOIAA]
GO
/****** Object:  DatabaseRole [dvlprlAttendance]    Script Date: 9/7/2021 2:21:17 PM ******/
CREATE ROLE [dvlprlAttendance]
GO
ALTER ROLE [db_owner] ADD MEMBER [DCYF\G-S-DCYF-SalesForce Developers]
GO
ALTER ROLE [dvlprlOIAA] ADD MEMBER [DCYF\G-S-DCYF-OIAA DI Database Leads]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Merit Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Data Dictionary Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Data Architects]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Contract ETL Developers]
GO
ALTER ROLE [dvlprlAttendance] ADD MEMBER [DCYF\G-S-DCYF-Attendance Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Attendance Developers]
GO
ALTER ROLE [dvlprlAttendance] ADD MEMBER [DCYF\G-S-DCYF-Attendance Data Analytics]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Attendance Data Analytics]
GO
ALTER ROLE [dvlprlAttendance] ADD MEMBER [DCYF\G-S-DCYF-Attendance Business Users]
GO
ALTER ROLE [rlDataDictionary] ADD MEMBER [DataDictionary_User]
GO
ALTER ROLE [rlAttendance] ADD MEMBER [Attendance_Reporting]
GO
/****** Object:  Schema [Config]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [Config]
GO
/****** Object:  Schema [DataMart]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [DataMart]
GO
/****** Object:  Schema [DataMartAttendance]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [DataMartAttendance]
GO
/****** Object:  Schema [Detail]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [Detail]
GO
/****** Object:  Schema [ETLConfig]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [ETLConfig]
GO
/****** Object:  Schema [ETLImport]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [ETLImport]
GO
/****** Object:  Schema [ETLImportLog]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [ETLImportLog]
GO
/****** Object:  Schema [Utilities]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE SCHEMA [Utilities]
GO
/****** Object:  UserDefinedFunction [Utilities].[udfConvertTimeToHHMMSS]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [Utilities].[udfConvertTimeToHHMMSS]
(
    @time DECIMAL(28,3), 
    @unit VARCHAR(20)
)
RETURNS VARCHAR(20)
AS
BEGIN

    DECLARE @seconds DECIMAL(18,3), @minutes INT, @hours INT;

    IF(@unit = 'hour' OR @unit = 'hh' )
        SET @seconds = @time * 60 * 60;
    ELSE IF(@unit = 'minute' OR @unit = 'mi' OR @unit = 'n')
        SET @seconds = @time * 60;
    ELSE IF(@unit = 'second' OR @unit = 'ss' OR @unit = 's')
        SET @seconds = @time;
    ELSE SET @seconds = 0; -- unknown time units

    SET @hours = CONVERT(INT, @seconds /60 / 60);
    SET @minutes = CONVERT(INT, (@seconds / 60) - (@hours * 60 ));
    SET @seconds = @seconds % 60;

    RETURN 
        CONVERT(VARCHAR(9), CONVERT(INT, @hours)) + ':' +
        RIGHT('00' + CONVERT(VARCHAR(2), CONVERT(INT, @minutes)), 2) + ':' +
        RIGHT('00' + CONVERT(VARCHAR(6), @seconds), 6)

END
GO
/****** Object:  UserDefinedFunction [Utilities].[udfFormatTime]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
DailyActivity.Utilities.udfFormatTime

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Returns a friendly display format

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
03/13/2009: Created by wbenson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE dbImportLog 
SELECT Utilities.udfFormatTime(20, 'S', '%M% Min %S% Sec')

**************************************************************************************************/
CREATE FUNCTION [Utilities].[udfFormatTime]
(
	@Duration DECIMAL(23,6),
	@DurationType CHAR(1),  --Y=Year, D=Day,H=Hour,M=Minute,S=Second
	@Format VARCHAR(200) --%Y%=Year, %D%=Day, %H%=Hour, %M%=Minute, %S%=Second
)

RETURNS VARCHAR(200) AS

BEGIN	
	DECLARE @Year bigint,
		@Day bigint,
		@Hour bigint,
		@Minute bigint,
		@Second bigint
   
	IF @Duration < 0 
		SET @Duration = 0


	SET @Year = 0
	SET @Day = 0
	SET @Hour = 0
	SET @Minute = 0
	SET @Second = 0

	/*****************************
	Convert duration into Seconds
	******************************/
	IF @DurationType = 'Y' SET @Duration = @Duration * 365 * 24 * 60 * 60

	IF @DurationType = 'D' SET @Duration = @Duration * 24 * 60 * 60

	IF @DurationType = 'H' SET @Duration = @Duration * 60 * 60

	IF @DurationType = 'M' SET @Duration = @Duration * 60

	IF @DurationType = 'S' SET @Duration = @Duration
      
	IF CHARINDEX('%Y%', @Format) > 0
		BEGIN
			SET @Year = @Duration / (365 * 24 * 60 * 60)
			SET @Duration = @Duration - (@Year * 365 * 24 * 60 * 60) 
		END

	IF CHARINDEX('%D%', @Format) > 0
		BEGIN
			SET @Day = @Duration / (24 * 60 * 60)
			SET @Duration = @Duration - (@Day * 24 * 60 * 60)
		END

	IF CHARINDEX('%H%', @Format) > 0
		BEGIN
			SET @Hour = @Duration / (60 * 60)
			SET @Duration = @Duration - (@Hour * 60 * 60)
		END

	IF CHARINDEX('%M%', @Format) > 0
		BEGIN
			SET @Minute = @Duration / 60
			SET @Duration = @Duration - (@Minute * 60)
		END

	IF CHARINDEX('%S%', @Format) > 0
		BEGIN
			SET @Second = @Duration
		END
   
	SELECT @Format = REPLACE(@Format, '%Y%', Utilities.udfZeroPad(@Year, 2))
	SELECT @Format = REPLACE(@Format, '%D%', Utilities.udfZeroPad(@Day, 2))
	SELECT @Format = REPLACE(@Format, '%H%', Utilities.udfZeroPad(@Hour, 2))
	SELECT @Format = REPLACE(@Format, '%M%', Utilities.udfZeroPad(@Minute, 2))
	SELECT @Format = REPLACE(@Format, '%S%', Utilities.udfZeroPad(@Second, 2))

	RETURN @Format
END






GO
/****** Object:  UserDefinedFunction [Utilities].[udfRemoveStringData]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [Utilities].[udfRemoveStringData] (@mixedString AS VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN 
	DECLARE @resultString VARCHAR(MAX), @tmpString CHAR(1), @i INT, @strLen INT 
	SELECT @resultString='', @i=0, @strLen=LEN(@mixedString)

	IF @mixedString IS NOT NULL OR LEN(@mixedString) > 0
	BEGIN
		 WHILE @strLen>=@i
		 BEGIN 
		 SELECT @tmpString=SUBSTRING (@mixedString,@i/*character index*/,1/*one character*/)
		 IF ISNUMERIC(@tmpString)=1
		 SELECT @resultString=@resultString+@tmpString 
		 SELECT @i=@i+1
		 END 
	END
	ELSE
	BEGIN
		SELECT @resultString = NULL;
	END

	IF LEN(@resultString) = 0 OR @resultString = ''
	BEGIN
		SELECT @resultString = NULL
	END
	
	RETURN @resultString
END
GO
/****** Object:  UserDefinedFunction [Utilities].[udfScriptIndex]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [Utilities].[udfScriptIndex](@table sysname, @index sysname)
RETURNS VARCHAR(MAX)
AS
	BEGIN
	DECLARE	@cols VARCHAR(MAX)
	SELECT	@cols = ISNULL(@cols + ', ', '') + sc.name
	FROM	sys.indexes ix
	JOIN	sys.index_columns ic
			ON ic.object_id = ix.object_id
			AND ic.index_id = ix.index_id
	JOIN	sys.columns sc 
			ON ic.object_id = sc.object_id 
			AND ic.column_id = sc.column_id
	WHERE	ix.object_id = OBJECT_ID(@table)
	AND		ix.name = @index
	ORDER	BY ic.index_column_id

	DECLARE	@ret VARCHAR(MAX)
	SELECT	@ret = 'CREATE '
	SELECT	@ret = @ret + 'UNIQUE ' 
	WHERE	INDEXPROPERTY(OBJECT_ID(@table), @index, 'IsUnique') = 1
	SELECT	@ret = @ret + 'CLUSTERED '
	WHERE	INDEXPROPERTY(OBJECT_ID(@table), @index, 'IsClustered') = 1
	SELECT	@ret = @ret + 'INDEX ' + @index + ' ON ' + @table + '(' + @cols + ')'

	RETURN @ret
	END

GO
/****** Object:  UserDefinedFunction [Utilities].[udfZeroPad]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
DailyActivity.Utilities.udfZeroPad

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Zero Pad any string

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
03/13/2007: Created by wbenson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE dbImportLog 
SELECT Utilities.udfZeroPad('9', 3)

**************************************************************************************************/
CREATE FUNCTION [Utilities].[udfZeroPad]
(
	@Value VARCHAR(100),
	@Length SMALLINT
)
RETURNS VARCHAR(100) AS

BEGIN
	DECLARE @i SMALLINT, @Output VARCHAR(100)
   
	SET @Output = ''
   
	IF LEN(@value) < @Length
		BEGIN			
			SET @i = @Length - LEN(@value)
			
			WHILE @i > 0
				BEGIN
					SET @Output = @Output + '0'
					
					SET @i = @i - 1
				END
				
			SET @Output = @Output + @value
		END
	ELSE SET @Output = @value
	
	RETURN @Output
END






GO
/****** Object:  Table [Detail].[SalesforceElectronicAttendanceSystems]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceElectronicAttendanceSystems](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](80) NULL,
	[Address_1__c] [nvarchar](100) NULL,
	[Address_2__c] [nvarchar](100) NULL,
	[City__c] [nvarchar](50) NULL,
	[State__c] [nvarchar](50) NULL,
	[Zip__c] [nvarchar](20) NULL,
	[Company_URL__c] [nvarchar](255) NULL,
	[Contact_Email__c] [nvarchar](80) NULL,
	[Contact_Name__c] [nvarchar](50) NULL,
	[Contact_Phone__c] [nvarchar](40) NULL,
	[Product_Description__c] [nvarchar](255) NULL,
	[Product_Name__c] [nvarchar](100) NULL,
	[Product_URL__c] [nvarchar](255) NULL,
	[Validated_for_Attendance__c] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](20) NULL,
	[OwnerId] [nvarchar](20) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](20) NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Product_Comments__c] [nvarchar](4000) NULL,
	[Validation_Status__c] [nvarchar](4000) NULL,
	[Contact_Comments__c] [nvarchar](4000) NULL,
	[Interface_Comments__c] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceElectronicAttendanceSystems_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceElectronicAttendanceSystems_RecordId] ON [Detail].[SalesforceElectronicAttendanceSystems]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceAccount]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceAccount](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](40) NOT NULL,
	[AccountSource] [nvarchar](40) NULL,
	[ParentId] [nvarchar](40) NULL,
	[MasterRecordId] [nvarchar](20) NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [nvarchar](40) NULL,
	[RecordTypeId] [nvarchar](40) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](40) NULL,
	[AccountNumber] [nvarchar](40) NULL,
	[Website] [nvarchar](250) NULL,
	[PhotoUrl] [nvarchar](260) NULL,
	[Sic] [nvarchar](20) NULL,
	[Industry] [nvarchar](40) NULL,
	[AnnualRevenue] [decimal](18, 4) NULL,
	[NumberOfEmployees] [int] NULL,
	[Ownership] [nvarchar](40) NULL,
	[TickerSymbol] [nvarchar](20) NULL,
	[Description] [nvarchar](1000) NULL,
	[Rating] [nvarchar](50) NULL,
	[Site] [nvarchar](80) NULL,
	[IsCustomerPortal] [tinyint] NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawCompanyId] [nvarchar](20) NULL,
	[SicDesc] [nvarchar](80) NULL,
	[Contractor_Name__c] [nvarchar](80) NULL,
	[County__c] [nvarchar](40) NULL,
	[Date_Data_last_Pulled_From_Fam_Link__c] [datetime] NULL,
	[Doing_Business_As__c] [nvarchar](110) NULL,
	[AIAN_Early_Head_Start_Center_Based__c] [decimal](18, 4) NULL,
	[External_Source_Id__c] [nvarchar](50) NULL,
	[FamLink_Id__c] [nvarchar](20) NULL,
	[In_ECEAP__c] [tinyint] NULL,
	[In_Esit__c] [tinyint] NULL,
	[In_Head_Start__c] [tinyint] NULL,
	[Inconclusive_Complaint_Count__c] [decimal](18, 4) NULL,
	[Initial_License_Date__c] [datetime] NULL,
	[License_Facility_Type_Name__c] [nvarchar](100) NULL,
	[Primary_Contact_Date_of_Birth__c] [datetime] NULL,
	[Referral_Type__c] [nvarchar](20) NULL,
	[SSPS_Id__c] [nvarchar](20) NULL,
	[Source_Site_Name__c] [nvarchar](1000) NULL,
	[State_Wide_Vendor_Number_Suffix__c] [nvarchar](10) NULL,
	[State_Wide_Vendor_Number__c] [nvarchar](32) NULL,
	[Subcontractor_Name__c] [nvarchar](150) NULL,
	[Valid_Complaint_Count__c] [decimal](18, 4) NULL,
	[Site_Structure__c] [nvarchar](50) NULL,
	[Temp_Unique_ID__c] [nvarchar](50) NULL,
	[Days_of_Operation__c] [nvarchar](1000) NULL,
	[Email__c] [nvarchar](100) NULL,
	[Hours_of_Operation__c] [nvarchar](64) NULL,
	[Inactive_End_Date__c] [datetime] NULL,
	[Inactive_Start_Date__c] [datetime] NULL,
	[Is_Military__c] [tinyint] NULL,
	[Is_OSPI__c] [tinyint] NULL,
	[AIAN_Early_Head_Start_Home_Based__c] [decimal](18, 4) NULL,
	[AIAN_Head_Start__c] [decimal](18, 4) NULL,
	[No_Referral_Status__c] [tinyint] NULL,
	[Office__c] [nvarchar](50) NULL,
	[Operating_Status_Detail__c] [nvarchar](300) NULL,
	[Operating_Status_Reason__c] [nvarchar](260) NULL,
	[Operating_Status__c] [nvarchar](20) NULL,
	[Physical_City__c] [nvarchar](50) NULL,
	[Physical_State__c] [nvarchar](80) NULL,
	[Physical_Street__c] [nvarchar](120) NULL,
	[Physical_Zip__c] [nvarchar](20) NULL,
	[Region__c] [nvarchar](40) NULL,
	[School_District__c] [nvarchar](260) NULL,
	[Tribal_Affiliation__c] [nvarchar](260) NULL,
	[AKA_Names__c] [nvarchar](500) NULL,
	[Ages_Served__c] [nvarchar](100) NULL,
	[Anniversary_Date__c] [nvarchar](30) NULL,
	[Certificate_of_Occupancy__c] [datetime] NULL,
	[Count_Of_Open_Licenses__c] [decimal](18, 4) NULL,
	[CountyId__c] [nvarchar](50) NULL,
	[Current_EA_Program_Rec_ID__c] [nvarchar](40) NULL,
	[Current_License_Status__c] [nvarchar](50) NULL,
	[Current_Primary_Contact_Display_Label__c] [nvarchar](250) NULL,
	[Current_Primary_Contact_Email__c] [nvarchar](100) NULL,
	[Current_Primary_Contact_Phone__c] [nvarchar](50) NULL,
	[Current_Primary_Contact_Rec_ID__c] [nvarchar](40) NULL,
	[DEL_Licensor_Email__c] [nvarchar](100) NULL,
	[DEL_Licensor_Name__c] [nvarchar](50) NULL,
	[DEL_Licensor_Phone__c] [nvarchar](25) NULL,
	[ECEAP_Slots_Display_Label__c] [nvarchar](250) NULL,
	[EIN_Tax_ID__c] [nvarchar](20) NULL,
	[Educational_Service_District__c] [nvarchar](260) NULL,
	[Elementary_School_Lookup__c] [nvarchar](40) NULL,
	[Ending_Age_Served_Formula__c] [nvarchar](1000) NULL,
	[Famlink_Last_Updated_By__c] [nvarchar](100) NULL,
	[Fire_Marhshal_Visit_Date__c] [datetime] NULL,
	[Has_License_Formula__c] [tinyint] NULL,
	[Health_Procedures_Reviewed_Date__c] [datetime] NULL,
	[Health_Procedures_Reviewed_Name__c] [nvarchar](100) NULL,
	[High_School_Lookup__c] [nvarchar](40) NULL,
	[Is_Elementary_School__c] [tinyint] NULL,
	[Is_High_School__c] [tinyint] NULL,
	[Is_Middle_School__c] [tinyint] NULL,
	[Latest_License_Age_Group_Served__c] [nvarchar](100) NULL,
	[Latest_License_Capacity__c] [decimal](18, 4) NULL,
	[Latest_License_End_Reason__c] [nvarchar](500) NULL,
	[Latest_License_Expiration_Date__c] [datetime] NULL,
	[Latest_License_Facility_Type_Name__c] [nvarchar](150) NULL,
	[Latest_License_ID__c] [nvarchar](20) NULL,
	[Latest_License_Rec_ID__c] [nvarchar](40) NULL,
	[Latest_License_Start_Date__c] [datetime] NULL,
	[Latest_License_Status__c] [nvarchar](50) NULL,
	[Latest_License_Type__c] [nvarchar](50) NULL,
	[License_Exempt__c] [tinyint] NULL,
	[License_Facility_Type_Label__c] [nvarchar](100) NULL,
	[Licensed_Capacity__c] [decimal](18, 4) NULL,
	[Local_Planning_Office_Notified__c] [datetime] NULL,
	[MC_Is_Mobilized_Account__c] [tinyint] NULL,
	[MC_Proxy_ID__c] [nvarchar](260) NULL,
	[Middle_School_Lookup__c] [nvarchar](40) NULL,
	[Mobilized_Provider_Case_Count__c] [decimal](18, 4) NULL,
	[No_Referral_Begin_Date__c] [datetime] NULL,
	[No_Referral_Notes__c] [nvarchar](300) NULL,
	[No_Referral_Type__c] [nvarchar](100) NULL,
	[Office_Address_1__c] [nvarchar](250) NULL,
	[Office_Address_2__c] [nvarchar](250) NULL,
	[On_Tribal_Land__c] [tinyint] NULL,
	[Primary_Contact_Full_Name__c] [nvarchar](100) NULL,
	[Primary_Contact_Phone__c] [nvarchar](40) NULL,
	[Primary_Language__c] [nvarchar](100) NULL,
	[Restricted__c] [tinyint] NULL,
	[Starting_Age_Served_Formula__c] [nvarchar](1000) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Template_Status__c] [nvarchar](250) NULL,
	[Active_Primary_Contact_Count__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Extended_Day_Slots__c] [int] NULL,
	[Total_ECEAP_Full_Day_Slots__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Part_Day_Slots__c] [decimal](18, 4) NULL,
	[Total_HeadStart_Slots__c] [decimal](18, 4) NULL,
	[Account_Parent_External_Source_Id__c] [nvarchar](50) NULL,
	[Program__c_Current_EA_Program_Rec_ID__r_External_Source_ID__c] [nvarchar](50) NULL,
	[Contact_Account_Role__c_Current_Primary_Contact_Rec_ID__r_External_Source_Id__c] [nvarchar](50) NULL,
	[Account_Elementary_School_Lookup__r_External_Source_Id__c] [nvarchar](50) NULL,
	[Account_High_School_Lookup__r_External_Source_Id__c] [nvarchar](50) NULL,
	[Account_Middle_School_Lookup__r_External_Source_Id__c] [nvarchar](50) NULL,
	[User_Owner_External_Source_ID__c] [nvarchar](50) NULL,
	[Opt_In_Map_View__c] [tinyint] NULL,
	[Opt_In_Physical_Street_Address__c] [tinyint] NULL,
	[Opt_in_to_Public_Search__c] [tinyint] NULL,
	[Accepted_Payment_Types__c] [nvarchar](100) NULL,
	[Accepting_New_Children__c] [nvarchar](250) NULL,
	[Account_Name_Display_Label__c] [nvarchar](250) NULL,
	[Age_From_Normalized__c] [decimal](18, 4) NULL,
	[Age_To_Normalized__c] [decimal](18, 4) NULL,
	[Current_Primary_Contact_Detail_Label__c] [nvarchar](250) NULL,
	[Current_Primary_DEL_Licensor__c] [nvarchar](40) NULL,
	[Display_on_Map_View__c] [tinyint] NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[End_Time_Fri__c] [nvarchar](250) NULL,
	[End_Time_Mon__c] [nvarchar](250) NULL,
	[End_Time_Sat__c] [nvarchar](250) NULL,
	[End_Time_Sun__c] [nvarchar](250) NULL,
	[End_Time_Thu__c] [nvarchar](250) NULL,
	[End_Time_Tue__c] [nvarchar](250) NULL,
	[End_Time_Wed__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Fri__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Mon__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Sat__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Sun__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Thu__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Tue__c] [nvarchar](250) NULL,
	[Hours_of_Operation_Wed__c] [nvarchar](250) NULL,
	[Is_Funded_ECEAP__c] [nvarchar](250) NULL,
	[Is_Funded_EHS__c] [nvarchar](250) NULL,
	[Is_Funded_HS__c] [nvarchar](250) NULL,
	[Languages_Spoken__c] [nvarchar](100) NULL,
	[Latest_License_Sub_Type__c] [nvarchar](100) NULL,
	[Low_Income_Children_Served__c] [tinyint] NULL,
	[Phone_Normalized__c] [nvarchar](50) NULL,
	[Physical_County__c] [nvarchar](80) NULL,
	[Physical_Geolocation__Latitude__s] [decimal](18, 4) NULL,
	[Physical_Geolocation__Longitude__s] [decimal](18, 4) NULL,
	[Physical_Street_Display_Label__c] [nvarchar](120) NULL,
	[Physical_Street_Intersection_Label__c] [nvarchar](100) NULL,
	[Schedules_Of_Operation__c] [nvarchar](500) NULL,
	[Start_Time_Fri__c] [nvarchar](260) NULL,
	[Start_Time_Mon__c] [nvarchar](260) NULL,
	[Start_Time_Sat__c] [nvarchar](260) NULL,
	[Start_Time_Sun__c] [nvarchar](260) NULL,
	[Start_Time_Thu__c] [nvarchar](260) NULL,
	[Start_Time_Tue__c] [nvarchar](260) NULL,
	[Start_Time_Wed__c] [nvarchar](260) NULL,
	[Tier1_Food_Program__c] [tinyint] NULL,
	[Total_Classroom_Count__c] [int] NULL,
	[Total_ECEAP_Extended_Day_SlotsOld__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Full_Day_Slotsold__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Full_Slots__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Part_Day_Slotsold__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Part_Slots__c] [decimal](18, 4) NULL,
	[Total_Early_Head_Start_Program_Slots__c] [decimal](18, 4) NULL,
	[Total_HeadStart_Slotsold__c] [decimal](18, 4) NULL,
	[Total_Head_Start_Slots__c] [decimal](18, 4) NULL,
	[Custom_Account_Team__c_Current_Primary_DEL_Licensor__r_External_Source_ID__c] [nvarchar](50) NULL,
	[Latest_License_Certificate_Type__c] [nvarchar](50) NULL,
	[Latest_License_Created_Date__c] [nvarchar](50) NULL,
	[OwnerId] [nvarchar](40) NULL,
	[CreatedById] [nvarchar](40) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](40) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Early_Achiever_Pathway__c] [nvarchar](100) NULL,
	[Early_Achievers_Areas_Of_Specialization__c] [nvarchar](100) NULL,
	[Early_Achiever_Status_External__c] [nvarchar](250) NULL,
	[Early_Achievers_Contact_Email__c] [nvarchar](80) NULL,
	[Early_Achievers_Contact_Name__c] [nvarchar](150) NULL,
	[Early_Achievers_Contact_Phone__c] [nvarchar](40) NULL,
	[Initial_Early_Achievers_Enroll_Date__c] [datetime] NULL,
	[Current_Early_Achievers_Enroll_Date__c] [datetime] NULL,
	[Early_Achiever_Status_Internal__c] [nvarchar](100) NULL,
	[VIP_Template__c] [nvarchar](20) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](50) NULL,
	[School_Year_End_date__c] [datetime] NULL,
	[School_Year_Start_Date__c] [datetime] NULL,
	[PP_Total_Unique_Login_Count__c] [decimal](18, 4) NULL,
	[PP_CAR_Login_Count__c] [decimal](18, 4) NULL,
	[PP_Emp_Login_Count__c] [decimal](18, 4) NULL,
	[PP_Total_Login_Count__c] [decimal](18, 4) NULL,
	[PP_Unique_Contact_Count__c] [decimal](18, 4) NULL,
	[Open_Year_Round__c] [tinyint] NULL,
	[Accepts_Full_Time_Students__c] [tinyint] NULL,
	[Accepts_Part_Time_Students__c] [tinyint] NULL,
	[Same_Mon_to_Fri__c] [tinyint] NULL,
	[Quality_Rating__c] [decimal](18, 4) NULL,
	[Referral_Status__c] [nvarchar](25) NULL,
	[Provider_Self_Description_Pending__c] [nvarchar](1000) NULL,
	[Provider_Self_Description_Approved__c] [tinyint] NULL,
	[Provider_Self_Description_Needs_Review__c] [tinyint] NULL,
	[Provider_Portal_Physical_Address_Label__c] [nvarchar](150) NULL,
	[Provider_Logo__c] [nvarchar](250) NULL,
	[Provider_Name_Display_Label__c] [nvarchar](250) NULL,
	[Provider_Self_Description__c] [nvarchar](500) NULL,
	[Provider_Stage__c] [nvarchar](80) NULL,
	[PS_Provider_ContactUs_Label__c] [nvarchar](250) NULL,
	[Provider_Details_Display_Label__c] [nvarchar](180) NULL,
	[Provider_Location_Label__c] [nvarchar](250) NULL,
	[Provider_Status__c] [nvarchar](25) NULL,
	[Provider_License__c_Latest_License_Rec_ID__r_External_Source_ID__c] [nvarchar](250) NULL,
	[Provider_Type__c] [nvarchar](80) NULL,
	[Licensing_Orientation_1_Date__c] [datetime] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[School_Year_Days_Closed__c] [decimal](18, 4) NULL,
	[Total_ECEAP_Extended_Slots__c] [decimal](18, 4) NULL,
	[Total_NBG_Amount__c] [decimal](18, 4) NULL,
	[Count_QIP__c] [decimal](18, 4) NULL,
	[NBG_In_Progress_Application_Count__c] [decimal](18, 4) NULL,
	[Evening_and_Overnight_Care__c] [tinyint] NULL,
	[Is_NBG_Eligible__c] [tinyint] NULL,
	[Latest_Licensing_Orientation_1__c] [datetime] NULL,
	[Latest_Licensing_Orientation_2__c] [datetime] NULL,
	[Latest_Lic_Orientation1_CAR__c] [datetime] NULL,
	[Latest_Lic_Orientation2_CAR__c] [datetime] NULL,
	[BillingStreet] [nvarchar](110) NULL,
	[BillingCity] [nvarchar](50) NULL,
	[BillingState] [nvarchar](80) NULL,
	[BillingPostalCode] [nvarchar](20) NULL,
	[BillingCountry] [nvarchar](80) NULL,
	[BillingLatitude] [decimal](18, 4) NULL,
	[BillingLongitude] [decimal](18, 4) NULL,
	[BillingGeocodeAccuracy] [nvarchar](50) NULL,
	[ShippingStreet] [nvarchar](110) NULL,
	[ShippingCity] [nvarchar](50) NULL,
	[ShippingState] [nvarchar](80) NULL,
	[ShippingPostalCode] [nvarchar](20) NULL,
	[ShippingCountry] [nvarchar](80) NULL,
	[ShippingLatitude] [decimal](18, 4) NULL,
	[ShippingLongitude] [decimal](18, 4) NULL,
	[ShippingGeocodeAccuracy] [nvarchar](50) NULL,
	[Account_Parent_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[User_Owner_Default_Account__c] [nvarchar](18) NULL,
	[Account_Elementary_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](50) NULL,
	[Account_High_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](50) NULL,
	[Account_Middle_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](50) NULL,
	[Licensing_Orientation_Status__c] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[Office_Fax__c] [nvarchar](50) NULL,
	[Office_Phone__c] [nvarchar](50) NULL,
	[Office_Mailing_Address__c] [nvarchar](50) NULL,
	[Office_Mailing_Address_2__c] [nvarchar](50) NULL,
	[Account_Id__c] [nvarchar](20) NULL,
	[Coaching_Agency__c] [nvarchar](18) NULL,
	[Is_NBG_New_App_Eligible__c] [tinyint] NULL,
	[Is_Tribal_Provider__c] [tinyint] NULL,
	[NBG_Override_Paid_Restriction__c] [tinyint] NULL,
	[Provider_Logo_Approved__c] [tinyint] NULL,
	[Provider_Logo_Needs_Approval__c] [tinyint] NULL,
	[Provider_Logo_Pending__c] [nvarchar](25) NULL,
	[School_District_Lkp__c] [nvarchar](20) NULL,
	[User_Owner_Branagh_GUID__c] [nvarchar](40) NULL,
	[Account_Coaching_Agency__r_External_Source_Id__c] [nvarchar](50) NULL,
	[School_District_Library__c_School_District_Lkp__r_External_Source_ID__c] [nvarchar](65) NULL,
	[Owner_Id__c] [nvarchar](50) NULL,
	[HS_ECEAP_Org_ID__c] [nvarchar](25) NULL,
	[State_Wide_Vendor_Number_Label__c] [nvarchar](25) NULL,
	[User_Owner_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Parent_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Elementary_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_High_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Middle_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Coaching_Agency__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Unique_ID__c] [nvarchar](30) NULL,
	[Subsidy_Indicator_Status__c] [nvarchar](15) NULL,
	[Subsidy_Initial_Date__c] [datetime] NULL,
	[Subsidy_Last_Date__c] [datetime] NULL,
	[latest_license_external_source_id__c] [nvarchar](100) NULL,
	[Latest_License_End_Category__c] [nvarchar](100) NULL,
	[Account_Parent_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Elementary_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_High_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Middle_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Coaching_Agency__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Account_Coaching_Agency__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Languages_of_Instruction__c] [nvarchar](max) NULL,
	[Provider_Status_External__c] [nvarchar](100) NULL,
	[EA_Disqual_Case_Exists__c] [tinyint] NULL,
	[Early_Achiever_Status_Search__c] [nvarchar](100) NULL,
	[Early_Achievers_Tab_Visible__c] [tinyint] NULL,
	[Program_Participant__c] [nvarchar](250) NULL,
	[Provider_Logo_Approved_Email_Sent__c] [tinyint] NULL,
	[Provider_Schedule_Approved_Email_Sent__c] [tinyint] NULL,
	[Provider_Self_Description_Approved_Email__c] [tinyint] NULL,
	[School_Year__c] [tinyint] NULL,
	[Covid_19_Closure__c] [bit] NULL,
	[Total_Available_Slots__c] [decimal](18, 0) NULL,
	[Provider_Slot_Availability__c] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceAccount_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceAccount_RecordId] ON [Detail].[SalesforceAccount]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceProgram]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceProgram](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[RecordTypeId] [nvarchar](20) NULL,
	[Account__c] [nvarchar](20) NULL,
	[AIAN_Early_Head_Start_Center_Based__c] [decimal](18, 4) NULL,
	[AIAN_Early_Head_Start_Home_Based__c] [decimal](18, 4) NULL,
	[AIAN_Head_Start__c] [decimal](18, 4) NULL,
	[ECEAP_Enrollment_Email__c] [nvarchar](100) NULL,
	[ECEAP_Enrollment_Phone__c] [nvarchar](20) NULL,
	[ECEAP_Id__c] [nvarchar](25) NULL,
	[ECEAP_Program_Year__c] [nvarchar](50) NULL,
	[Early_Head_Start_Center_Based__c] [decimal](18, 4) NULL,
	[Early_Head_Start_Home_Based__c] [decimal](18, 4) NULL,
	[Early_Head_Start_Program_Slots__c] [decimal](18, 4) NULL,
	[External_Source_ID__c] [nvarchar](50) NULL,
	[Head_Start_Id__c] [nvarchar](20) NULL,
	[Head_Start__c] [decimal](18, 4) NULL,
	[Migrant_Seasonal_Head_Start__c] [decimal](18, 4) NULL,
	[Program_Year_Start__c] [datetime] NULL,
	[Program_Year_End__c] [datetime] NULL,
	[Program_Start__c] [datetime] NULL,
	[Program_End__c] [datetime] NULL,
	[AIAN_Early_Head_Start_Center_Based_Slots__c] [decimal](18, 4) NULL,
	[AIAN_Early_Head_Start_Home_Based_Slots__c] [decimal](18, 4) NULL,
	[AIAN_Head_Start_Slots__c] [decimal](18, 4) NULL,
	[ECEAP_Extended_Day_Slots__c] [decimal](18, 4) NULL,
	[ECEAP_Full_Day_Slots__c] [decimal](18, 4) NULL,
	[ECEAP_Part_Day_Slots__c] [decimal](18, 4) NULL,
	[EHS_CC_Partnership_Slots__c] [decimal](18, 4) NULL,
	[Early_Achiever_Status_External__c] [nvarchar](40) NULL,
	[Early_Achiever_Status_Internal__c] [nvarchar](40) NULL,
	[Early_Achievers_Areas_Of_Specialization__c] [nvarchar](140) NULL,
	[Early_Achievers_Opt_Out__c] [tinyint] NULL,
	[Early_Achievers_Program_Description__c] [nvarchar](1500) NULL,
	[Early_Head_Start_Center_Based_Slots__c] [decimal](18, 4) NULL,
	[Early_Head_Start_Home_Based_Slots__c] [decimal](18, 4) NULL,
	[Effective_Datetime__c] [datetime] NULL,
	[Head_Start_Slots__c] [decimal](18, 4) NULL,
	[Migrant_Seasonal_Early_Head_Start_Slots__c] [decimal](18, 4) NULL,
	[Migrant_Seasonal_Head_Start_Slots__c] [decimal](18, 4) NULL,
	[Program_ID__c] [nvarchar](50) NULL,
	[Program_Type__c] [nvarchar](40) NULL,
	[Total_Funded_Slots_DisplayLabel__c] [decimal](18, 4) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](50) NULL,
	[Status__c] [nvarchar](40) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](20) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](20) NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[InsertDateTime] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[Electronic_Attendance_System__c] [nvarchar](18) NULL,
	[Approved_for_Attendance__c] [nvarchar](25) NULL,
	[EA_Latest_Enrollment_Date__c] [datetime] NULL,
	[EA_Progress_Label__c] [nvarchar](250) NULL,
	[EA_Withdraw_Date__c] [datetime] NULL,
	[ECEAP_no_Early_Achievers_Sent__c] [tinyint] NULL,
	[Quality_Rating_In_Progress_Count__c] [decimal](18, 4) NULL,
	[Record_Type_Label__c] [nvarchar](250) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Days_of_EA_enrollment__c] [decimal](18, 4) NULL,
	[EA_Areas_of_Specialization_Label__c] [nvarchar](255) NULL,
	[EA_Level_2_Completion_Email_Sent__c] [tinyint] NULL,
	[EA_Withdrawl_Email_Sent__c] [tinyint] NULL,
	[EA_enrolled_15_months_not_Level_2_Email__c] [tinyint] NULL,
	[EA_enrolled_9_months_not_Level_2_Email__c] [tinyint] NULL,
	[Enrolled_in_EA_6_months_not_L2_email__c] [tinyint] NULL,
	[Latest_Quality_Rating_Expiration_Date__c] [datetime] NULL,
	[TR_30_Month_Reminder_Email_Sent__c] [tinyint] NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[EAS_ETR_Approval_End_Date__c] [datetime] NULL,
	[EAS_ETR_Approval_Start_Date__c] [datetime] NULL,
	[EAS_ETR_Approval_Type__c] [nvarchar](255) NULL,
	[EAS_ETR_Approved_Date__c] [datetime] NULL,
	[EAS_ETR_Denied_Date__c] [datetime] NULL,
	[EAS_ETR_Received_Date__c] [datetime] NULL,
	[EAS_ETR_Status__c] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceProgram_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceProgram_RecordId] ON [Detail].[SalesforceProgram]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceRecordType]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceRecordType](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DeveloperName] [nvarchar](80) NULL,
	[NamespacePrefix] [nvarchar](20) NULL,
	[Description] [nvarchar](260) NULL,
	[BusinessProcessId] [nvarchar](20) NULL,
	[SobjectType] [nvarchar](50) NULL,
	[IsActive] [tinyint] NULL,
	[CreatedById] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](20) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceRecordType_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceRecordType_RecordId] ON [Detail].[SalesforceRecordType]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [DataMartAttendance].[vwElectronicAttendanceSystemProvidersETR]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [DataMartAttendance].[vwElectronicAttendanceSystemProvidersETR]
AS

SELECT
sfprgm.Id AS ProgramId
,sfprgm.[Name] AS ProgramName
,CONVERT(CHAR(10), sfprgm.Program_Start__c,121) AS ProgramStartDate
,CONVERT(CHAR(10), sfprgm.Program_End__c,121) AS ProgramEndDate
,sfprgm.Program_Type__c AS ProgramType
--,sfprgm.Approved_for_Attendance__c AS ApprovedForAttendance
,sfeas.Validated_for_Attendance__c AS ApprovedForAttendance
,sfeas.[Name] AS ElectronicAttendanceSystemsName
,sfeas.Product_Name__c AS ElectronicAttendanceSystemsProductName 
,sfprgm.Status__c AS ProgramStatus
,sfacct.Id AS ProviderId
,sfacct.[Name] AS ProviderName
--,sfacct.SSPS_Id__c AS SSPSId
,CASE WHEN sfacct.SSPS_Id__c = '0' THEN NULL
	WHEN ISNUMERIC(sfacct.SSPS_Id__c) = 1 THEN CONVERT(INT, sfacct.SSPS_Id__c)
	ELSE NULL
END AS SSPSId
,sfacct.Provider_Type__c AS ProviderType
,sfrcty.[Name] AS ProviderRecordType
,sfacct.Provider_Status__c AS ProviderStatus
--,sfacct.SystemModstamp AS ProviderAccountLastModifiedDate
,sfprgm.EAS_ETR_Approval_End_Date__c AS EASETRApprovalEndDate
,sfprgm.EAS_ETR_Approval_Start_Date__c AS EASETRApprovalStartDate
,sfprgm.EAS_ETR_Approval_Type__c AS EASETRApprovalType
,sfprgm.EAS_ETR_Approved_Date__c AS EASETRApprovedDate
,sfprgm.EAS_ETR_Denied_Date__c AS EASETRDeniedDate
,sfprgm.EAS_ETR_Received_Date__c AS EASETRReceivedDate
,sfprgm.EAS_ETR_Status__c AS EASETRStatus
,sfprgm.LastModifiedDate AS ProgramLastModifiedDate
,sfprgm.SystemModstamp AS ProgramSystemLastModifiedDate
,sfeas.SystemModstamp AS EASLastModifiedDate
,sfprgm.Insertdatetime AS LastUpdatedDate
FROM Detail.SalesforceProgram AS sfprgm

INNER JOIN Detail.SalesforceAccount AS sfacct
	ON sfprgm.Account__c = sfacct.Id
	AND sfacct.CurrentPreviousInd = 'C'
	AND sfacct.IsDeleted = 0

INNER JOIN Detail.SalesforceRecordType AS sfrcty
	ON sfacct.RecordTypeId = sfrcty.Id
	AND sfrcty.CurrentPreviousInd = 'C'
	AND sfrcty.IsDeleted = 0

LEFT OUTER JOIN Detail.SalesforceElectronicAttendanceSystems AS sfeas
	ON sfprgm.Electronic_Attendance_System__c = sfeas.Id
	AND sfeas.CurrentPreviousInd = 'C'
	AND sfeas.IsDeleted = 0

WHERE sfprgm.CurrentPreviousInd = 'C'
	AND sfprgm.IsDeleted = 0
	AND sfprgm.Status__c = 'Active'
	AND (sfprgm.EAS_ETR_Approval_End_Date__c IS NOT NULL
		OR sfprgm.EAS_ETR_Approval_Start_Date__c IS NOT NULL
		OR sfprgm.EAS_ETR_Approval_Type__c IS NOT NULL
		OR sfprgm.EAS_ETR_Approved_Date__c IS NOT NULL
		OR sfprgm.EAS_ETR_Denied_Date__c IS NOT NULL
		OR sfprgm.EAS_ETR_Received_Date__c IS NOT NULL
		OR sfprgm.EAS_ETR_Status__c IS NOT NULL)

/* Old Code 
SELECT 
[ProgramId]
,[ProgramName]
,[ProgramStartDate]
,[ProgramEndDate]
,[ProgramType]
,[ApprovedForAttendance]
,[ElectronicAttendanceSystemsName]
,[ElectronicAttendanceSystemsProductName]
,[ProgramStatus]
,[ProviderId]
,[ProviderName]
,[SSPSId]
,[ProviderType]
,[ProviderRecordType]
,[ProviderStatus]
,[ProgramLastModifiedDate]
,[EASLastModifiedDate]
,[LastUpdatedDate]
FROM [WACompass].[dbo].[tmpElectronicAttendanceSystemProviders]

*/

GO
/****** Object:  Table [Detail].[SalesforceContact]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceContact](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[MasterRecordId] [nvarchar](18) NULL,
	[AccountId] [nvarchar](18) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Salutation] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[OtherStreet] [nvarchar](255) NULL,
	[OtherCity] [nvarchar](40) NULL,
	[OtherState] [nvarchar](80) NULL,
	[OtherPostalCode] [nvarchar](20) NULL,
	[OtherCountry] [nvarchar](80) NULL,
	[OtherLatitude] [decimal](18, 4) NULL,
	[OtherLongitude] [decimal](18, 4) NULL,
	[OtherGeocodeAccuracy] [nvarchar](40) NULL,
	[MailingStreet] [nvarchar](255) NULL,
	[MailingCity] [nvarchar](40) NULL,
	[MailingState] [nvarchar](80) NULL,
	[MailingPostalCode] [nvarchar](20) NULL,
	[MailingCountry] [nvarchar](80) NULL,
	[MailingLatitude] [decimal](18, 4) NULL,
	[MailingLongitude] [decimal](18, 4) NULL,
	[MailingGeocodeAccuracy] [nvarchar](40) NULL,
	[Phone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[HomePhone] [nvarchar](40) NULL,
	[OtherPhone] [nvarchar](40) NULL,
	[AssistantPhone] [nvarchar](40) NULL,
	[ReportsToId] [nvarchar](18) NULL,
	[Email] [nvarchar](80) NULL,
	[Title] [nvarchar](128) NULL,
	[Department] [nvarchar](80) NULL,
	[AssistantName] [nvarchar](40) NULL,
	[LeadSource] [nvarchar](40) NULL,
	[Birthdate] [datetime] NULL,
	[Description] [nvarchar](4000) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[HasOptedOutOfEmail] [tinyint] NULL,
	[HasOptedOutOfFax] [tinyint] NULL,
	[DoNotCall] [tinyint] NULL,
	[LastCURequestDate] [datetime] NULL,
	[LastCUUpdateDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[EmailBouncedReason] [nvarchar](255) NULL,
	[EmailBouncedDate] [datetime] NULL,
	[IsEmailBounced] [tinyint] NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawContactId] [nvarchar](20) NULL,
	[Active_Flag__c] [tinyint] NULL,
	[Alias_First_Name__c] [nvarchar](80) NULL,
	[Alias_Last_Name__c] [nvarchar](80) NULL,
	[Alias_Middle_Name__c] [nvarchar](80) NULL,
	[Alias_Verified__c] [tinyint] NULL,
	[Alternate_Email__c] [nvarchar](128) NULL,
	[Birth_Month_Day__c] [nvarchar](32) NULL,
	[Current_PBC_Expiration_Date__c] [datetime] NULL,
	[Current_PBC_Status_Date__c] [datetime] NULL,
	[Current_PBC_Status__c] [nvarchar](255) NULL,
	[Ethnicity_Name__c] [nvarchar](255) NULL,
	[Gender__c] [nvarchar](6) NULL,
	[Last_Submitted_PBC_Date__c] [datetime] NULL,
	[Last_WebAuth_Login_DT__c] [datetime] NULL,
	[Maiden_Name__c] [nvarchar](25) NULL,
	[Mailing_County__c] [nvarchar](128) NULL,
	[Middle_Name__c] [nvarchar](80) NULL,
	[Preferred_Communication_Channel__c] [nvarchar](255) NULL,
	[Preferred_Language__c] [nvarchar](255) NULL,
	[Primary_Language__c] [nvarchar](128) NULL,
	[Race_Name__c] [nvarchar](255) NULL,
	[Secondary_Language__c] [nvarchar](128) NULL,
	[Stars_Id__c] [nvarchar](16) NULL,
	[State_Wide_Vendor_Nbr_Suffix__c] [nvarchar](2) NULL,
	[State_Wide_Vendor_Number__c] [nvarchar](32) NULL,
	[WebAuth_Account_Activation_Flag__c] [tinyint] NULL,
	[WebAuth_Adult_Signature_Date__c] [datetime] NULL,
	[WebAuth_Adult_Signature__c] [nvarchar](255) NULL,
	[WebAuth_Create_Date__c] [datetime] NULL,
	[WebAuth_DEL_Staff_Flag__c] [tinyint] NULL,
	[WebAuth_Locked_Flag__c] [tinyint] NULL,
	[WebAuth_Modified_Date__c] [datetime] NULL,
	[WebAuth_Must_Chg_Pwd_Flag__c] [tinyint] NULL,
	[WebAuth_Offline_User_Flag__c] [tinyint] NULL,
	[WebAuth_User_Id__c] [nvarchar](255) NULL,
	[WebAuth_Username__c] [nvarchar](128) NULL,
	[MERIT_Unique_User_ID__c] [nvarchar](255) NULL,
	[Last_Submitted_PBC_Status__c] [nvarchar](255) NULL,
	[External_Source_ID__c] [nvarchar](12) NULL,
	[Employee_Violation_Count__c] [decimal](18, 4) NULL,
	[PBC_Expiration_Date__c] [datetime] NULL,
	[PBC_Status__c] [nvarchar](255) NULL,
	[BBP_AIDS_Training_Completion_Date__c] [datetime] NULL,
	[BBP_AIDS_Training_Expiration_Date__c] [datetime] NULL,
	[BBP_AIDS_Training_Status__c] [nvarchar](255) NULL,
	[CPR_Certification_Expiration_Date__c] [datetime] NULL,
	[CPR_Certification_Status__c] [nvarchar](255) NULL,
	[CPR_Child_Adult_Cert_Completion_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Comp_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Expr_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Status__c] [nvarchar](255) NULL,
	[Contact_Display_Label__c] [nvarchar](1300) NULL,
	[First_Aid_Expiration_Date__c] [datetime] NULL,
	[Food_Handler_Permit_Expiration_Date__c] [datetime] NULL,
	[Food_Handlers_Permit_Completion_Date__c] [datetime] NULL,
	[Food_Handlers_Permit_Expiration_Date__c] [datetime] NULL,
	[Food_Worker_Card_Expiration_Date__c] [datetime] NULL,
	[Health_and_Safety_Violation_Count__c] [decimal](18, 4) NULL,
	[Licensing_Orientation_Date__c] [datetime] NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[Mailing_Street_2__c] [nvarchar](120) NULL,
	[Restricted__c] [tinyint] NULL,
	[Safe_Sleep_Completion_Date__c] [datetime] NULL,
	[Safe_Sleep_Expiration_Date__c] [datetime] NULL,
	[Social_Security_Number__c] [nvarchar](11) NULL,
	[TB_Completion_Date__c] [datetime] NULL,
	[TB_Expiration_Date__c] [datetime] NULL,
	[TB_Status__c] [nvarchar](255) NULL,
	[Account_Account_External_Source_Id__c] [nvarchar](255) NULL,
	[Contact_ReportsTo_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_ReportsTo_External_Source_ID__c] [nvarchar](12) NULL,
	[User_Owner_External_Source_ID__c] [nvarchar](128) NULL,
	[Count_of_Training_Completed__c] [decimal](18, 4) NULL,
	[Latest_Licensing_Orientation_2__c] [datetime] NULL,
	[Latest_Licensing_Orientation_1__c] [datetime] NULL,
	[PP_Emp_Login_Count__c] [decimal](18, 4) NULL,
	[PD_Points__c] [decimal](18, 4) NULL,
	[Degree__c] [nvarchar](255) NULL,
	[PP_CAR_Login_Count__c] [decimal](18, 4) NULL,
	[PBC_Expired__c] [tinyint] NULL,
	[PP_Total_Login_Count__c] [decimal](18, 4) NULL,
	[PP_Unique_Provider_Count__c] [decimal](18, 4) NULL,
	[PP_Total_Unique_Login_Count__c] [decimal](18, 4) NULL,
	[PP_Display_Label__c] [nvarchar](1300) NULL,
	[Account_Account_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Contact_ReportsTo_Stars_Id__c] [nvarchar](16) NULL,
	[User_Owner_Default_Account__c] [nvarchar](18) NULL,
	[Highest_ECE_Education__c] [nvarchar](18) NULL,
	[Education__c_Highest_ECE_Education__r_External_Source_ID__c] [nvarchar](64) NULL,
	[User_Owner_Branagh_GUID__c] [nvarchar](40) NULL,
	[User_Owner_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Account_Account_Branagh_GUID__c] [nvarchar](64) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[LastActivityDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[Account_Account_Account_Unique_ID__c] [nvarchar](30) NULL,
 CONSTRAINT [pkDetailSalesforceContact_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceContactAccountRole]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceContactAccountRole](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Account__c] [nvarchar](18) NULL,
	[Contact__c] [nvarchar](18) NULL,
	[Affiliation_Type__c] [nvarchar](255) NULL,
	[External_Source_Id__c] [nvarchar](255) NULL,
	[Date_Last_Modified_at_Source__c] [datetime] NULL,
	[Program__c] [nvarchar](18) NULL,
	[Contact_Birthday__c] [datetime] NULL,
	[Contact_Email__c] [nvarchar](1300) NULL,
	[Contact_Name__c] [nvarchar](1300) NULL,
	[Contact_Phone__c] [nvarchar](1300) NULL,
	[Contact_Title__c] [nvarchar](1300) NULL,
	[End_Date__c] [datetime] NULL,
	[MC_Account_OwnerID__c] [nvarchar](1300) NULL,
	[MC_Is_Mobilized_Account__c] [tinyint] NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_External_Source_ID__c] [nvarchar](12) NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Display_On_Public_Search__c] [tinyint] NULL,
	[STARS_ID__c] [nvarchar](1300) NULL,
	[PP_Login_Is_Visible__c] [tinyint] NULL,
	[Account_Record_ID__c] [nvarchar](1300) NULL,
	[Account_URL__c] [nvarchar](1300) NULL,
	[Contact_Name_With_Stars_ID_Label__c] [nvarchar](1300) NULL,
	[PP_Login_Status__c] [nvarchar](255) NULL,
	[Contact_Contact__r_Stars_Id__c] [nvarchar](16) NULL,
	[MC_CLASS_Account_OwnerID__c] [nvarchar](1300) NULL,
	[PP_Show_on_Contact_List__c] [tinyint] NULL,
	[Latest_Licensing_Orientation1__c] [datetime] NULL,
	[Latest_Licensing_Orientation2__c] [datetime] NULL,
	[MC_Is_CLASS_Mobilized_Account__c] [tinyint] NULL,
	[Coaching_Participant_Search_Label__c] [nvarchar](1300) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Account_DBA__c] [nvarchar](1300) NULL,
	[Account_ECEAP_Extended_Slots__c] [decimal](18, 4) NULL,
	[Account_ECEAP_Full_Slots__c] [decimal](18, 4) NULL,
	[Account_ECEAP_Part_Slots__c] [decimal](18, 4) NULL,
	[Account_Name__c] [nvarchar](1300) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[Contact_Preferred_Language__c] [nvarchar](100) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceContactAccountRole_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceContactAccountRole_RecordId] ON [Detail].[SalesforceContactAccountRole]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [DataMart].[vwProviderAccountDetail]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DataMart].[vwProviderAccountDetail]
AS

SELECT
sfacct.Id AS SalesForceIdId
,sfacct.Account_Unique_ID__c AS WaCompassAccountId
,sfacct.[Name] AS ProviderName
,sfrctyp.[Name] AS ProviderRecordType
,sfacct.Doing_Business_As__c AS DoingBusinessAS
,CASE WHEN sfacct.SSPS_Id__c = '0' THEN NULL
	WHEN ISNUMERIC(sfacct.SSPS_Id__c) = 1 THEN CONVERT(DECIMAL(20,0), sfacct.SSPS_Id__c)
	ELSE NULL
END AS SSPSId
,CASE WHEN sfacct.FamLink_Id__c = '0' THEN NULL
	WHEN ISNUMERIC(sfacct.FamLink_Id__c) = 1 THEN CONVERT(INT, sfacct.FamLink_Id__c)
	ELSE NULL
END AS FamLinkId
,sfacct.Provider_Type__c AS ProviderType
,sfacct.Provider_Stage__c AS ProviderStage
,sfacct.Operating_Status__c AS OperatingStatus
,sfacct.Primary_Language__c AS PrimaryLanguage

/* -- Deprecated by VN 20191215 because most recently active CAR is not being pulled, only Active one was
,sfacct.Primary_Contact_Full_Name__c AS PrimaryContactFullName
,sfacct.Current_Primary_Contact_Email__c AS PrimaryContactEmail
,sfacct.Current_Primary_Contact_Phone__c AS PrimaryContactPhone
*/
,sfcnt.[Name] as PrimaryContactFullName
,sfcnt.Email as PrimaryContactEmail
,COALESCE(
	nullif(sfcnt.Phone,'')
	,nullif(sfcnt.HomePhone,'')
	,nullif(sfcnt.MobilePhone,'')
	,nullif(sfcnt.OtherPhone,'')
	,nullif(sfacct.Phone,'')
) as PrimaryContactPhone
-- End of new block

,REPLACE([Utilities].[udfRemoveStringData](sfacct.Phone), '-', '') AS ProviderPhone
,sfacct.Email__c AS ProviderEmail
,sfacct.Physical_Street__c AS ProviderPhysicalStreet
,sfacct.Physical_City__c AS ProviderPhysicalCity
,sfacct.Physical_State__c AS ProviderPhysicalState
,sfacct.Physical_Zip__c AS ProviderPhysicalZip
,sfacct.Physical_County__c AS ProviderPhysicalCounty
,sfacct.Latest_License_Facility_Type_Name__c AS LatestLicenseFacilityTypeName
,CASE WHEN TRY_CAST(sfacct.Latest_License_Capacity__c AS INT) IS NULL THEN NULL
	ELSE CAST(sfacct.Latest_License_Capacity__c AS INT)
END AS LatestLicenseCapacity
,sfacct.Latest_License_Status__c AS LatestLicenseStatus
,sfacct.Latest_License_Age_Group_Served__c AS LatestLicenseAgeGroupServced
,CASE WHEN TRY_CAST(sfacct.Latest_License_Start_Date__c AS DATE) IS NULL THEN NULL
	ELSE CAST(sfacct.Latest_License_Start_Date__c AS DATE)
END AS LatestLicenseStartDate
,CASE WHEN TRY_CAST(sfacct.Latest_License_Expiration_Date__c AS DATE) IS NULL THEN NULL
	ELSE CAST(sfacct.Latest_License_Expiration_Date__c AS DATE)
END AS LatestLicenseExpirationDate
,sfacct.Latest_License_Sub_Type__c AS LatestLicenseSubType
,CASE WHEN TRY_CAST(sfacct.Subsidy_Initial_Date__c AS DATE) IS NULL THEN NULL
	ELSE CAST(sfacct.Subsidy_Initial_Date__c AS DATE)
END AS SubsidyInitialDate
,CASE WHEN TRY_CAST(sfacct.Subsidy_Last_Date__c AS DATE) IS NULL THEN NULL
	ELSE CAST(sfacct.Subsidy_Last_Date__c AS DATE)
END AS SubsidyLastDate
,sfacct.Subsidy_Indicator_Status__c AS SubsidyIndicatorStatus
,sfacct.LastModifiedDate AS AccountLastModifiedDate
,sfacct.SystemModstamp AS AccountSystemModstamp

FROM Detail.SalesforceAccount AS sfacct

INNER JOIN Detail.SalesforceRecordType AS sfrctyp
	ON sfacct.RecordTypeId = sfrctyp.Id
	AND	sfrctyp.CurrentPreviousInd = 'C'
	AND sfrctyp.IsDeleted = 0
	AND sfrctyp.[Name] <> 'Constituent'

-- New block by VN 20191215 to use logic on CAR records to find most recently active contact
INNER JOIN (
	select row_number() over (PARTITION BY Account__c ORDER BY CASE WHEN Status__c='Active' THEN 0 ELSE 1 END ASC,End_Date__c DESC,Start_Date__c DESC,CreatedDate DESC) as Primacy,Account__c,Contact__c
	from Detail.SalesforceContactAccountRole
	where CurrentPreviousInd = 'C' AND IsDeleted = 0
	AND Affiliation_Type__c = 'Primary Contact'
	) AS sfcarl
	ON sfacct.Id = sfcarl.Account__c
	AND sfcarl.Primacy=1

INNER JOIN Detail.SalesforceContact AS sfcnt
	ON sfcarl.Contact__c = sfcnt.Id
	AND sfcnt.CurrentPreviousInd = 'C'
	AND sfcnt.IsDeleted = 0

WHERE sfacct.CurrentPreviousInd = 'C'
	AND sfacct.IsDeleted = 0
GO
/****** Object:  Table [Detail].[SalesforceTraining]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceTraining](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Contact__c] [nvarchar](18) NULL,
	[Completed_Date__c] [datetime] NULL,
	[External_Source_ID__c] [nvarchar](64) NULL,
	[Training_Type__c] [nvarchar](255) NULL,
	[Contact_Contact__r_Stars_Id__c] [nvarchar](16) NULL,
	[Contact_Contact__r_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_External_Source_ID__c] [nvarchar](20) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceTraining_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceTraining_RecordId] ON [Detail].[SalesforceTraining]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceSubsidyAuthorization]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceSubsidyAuthorization](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Program__c] [nvarchar](18) NULL,
	[Auth_Id__c] [nvarchar](15) NULL,
	[Auth_Num__c] [nvarchar](15) NULL,
	[Auth_Submit_Date__c] [datetime] NULL,
	[Barcode_Created_Date__c] [datetime] NULL,
	[Care_Address__c] [nvarchar](255) NULL,
	[Care_Location_Flag__c] [nvarchar](255) NULL,
	[Care_Type__c] [nvarchar](max) NULL,
	[End_Date__c] [datetime] NULL,
	[External_Source_Id__c] [nvarchar](18) NULL,
	[Parent_Disabled__c] [nvarchar](255) NULL,
	[Relationship_to_Child__c] [nvarchar](255) NULL,
	[Relationship_to_Parent__c] [nvarchar](255) NULL,
	[SU_App_Active__c] [tinyint] NULL,
	[SU_App__c] [nvarchar](50) NULL,
	[Service_Codes__c] [nvarchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](50) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[VIP_Template__c] [nvarchar](18) NULL,
	[Active_Authorization_Line_Items__c] [float] NULL,
	[Head_of_Household_Last_Name__c] [nvarchar](25) NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[FFN_Most_Restrictive_Care__c] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceSubsidyAuthorization_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceSubsidyAuthorization_RecordId] ON [Detail].[SalesforceSubsidyAuthorization]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [DataMartAttendance].[vwFFNContactTrainingInfo]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DataMartAttendance].[vwFFNContactTrainingInfo]
AS

WITH cteRecordType AS
(
SELECT
Id AS RecordTypeId
,[Name]
FROM Detail.SalesforceRecordType
WHERE SobjectType = 'Account'
	AND [Name] IN ('License Exempt Applicant','Provider')
	AND IsDeleted = 0
	AND CurrentPreviousInd = 'C'
)
SELECT
sfcnt.[Id] AS ContactId
,sfacct.[Id] AS ProviderId
,CASE WHEN sfacct.SSPS_Id__c = '0' THEN NULL
	ELSE CASE WHEN ISNUMERIC(sfacct.SSPS_Id__c) = 1 THEN sfacct.SSPS_Id__c ELSE NULL END
END AS SSPSNumber
,[LastName] AS ContactLastName
,[FirstName] AS ContactFirstName
,sfcntactrl.Affiliation_Type__c AS AffiliationType
,sfcnt.[Stars_Id__c] AS StarsId
--,[PBC_Expiration_Date__c]
--,[PBC_Status__c]
,COALESCE(sfsubauth.RelatvieCare, NULL) AS RelativeCare
,sftraining.Completed_Date__c AS HealthSafetyTrainingCompletionDate
,[Safe_Sleep_Completion_Date__c] AS SafeSleepCompletionDate
,[First_Aid_Expiration_Date__c] AS FirstAidExpirationDate
,[CPR_Infant_Child_Adult_Cert_Comp_Date__c] AS CPRInfantChildAdultCompletionDate
,[BBP_AIDS_Training_Completion_Date__c] AS BBPAIDSTrainingCompletionDate
,[CPR_Certification_Expiration_Date__c] AS CPRCertificationExpirationDate
,[CPR_Child_Adult_Cert_Completion_Date__c] AS CPRChildAdultCertCompletionDate
--,[BBP_AIDS_Training_Expiration_Date__c]
--,[BBP_AIDS_Training_Status__c]
--,[CPR_Certification_Status__c]
--,[CPR_Infant_Child_Adult_Cert_Expr_Date__c]
--,[CPR_Infant_Child_Adult_Cert_Status__c]
--,[Safe_Sleep_Expiration_Date__c]
,sfacct.Provider_Type__c AS ProviderType
,CASE WHEN sfcnt.LastModifiedDate>sfacct.LastModifiedDate THEN sfcnt.LastModifiedDate ELSE sfacct.LastModifiedDate END as CombinedLastModifiedDate

FROM [Detail].[SalesforceContact] AS sfcnt

INNER JOIN [Detail].[SalesforceContactAccountRole] AS sfcntactrl
	ON sfcnt.Id = sfcntactrl.Contact__c
	AND sfcntactrl.CurrentPreviousInd = 'C'
	AND sfcntactrl.IsDeleted = 0
	AND sfcntactrl.Status__c = 'Active'
	AND sfcntactrl.Affiliation_Type__c = 'Primary Contact'

INNER JOIN [Detail].[SalesforceAccount] AS sfacct
	ON sfcntactrl.Account__c = sfacct.Id
	AND sfacct.CurrentPreviousInd = 'C'
	AND sfacct.IsDeleted = 0
	AND COALESCE(sfacct.Provider_Type__c, 'xx') IN ('FFN','xx')
	AND (sfacct.SSPS_Id__c IS NOT NULL OR sfacct.SSPS_Id__c <> '0') 

INNER JOIN cteRecordType AS sfrctpy
	ON sfacct.RecordTypeId = sfrctpy.RecordTypeId

LEFT OUTER JOIN (
		SELECT DISTINCT
		[Contact__c]
		, MAX(Completed_Date__c) AS [Completed_Date__c]    
		FROM [WACompass].[Detail].[SalesforceTraining]
		WHERE [CurrentPreviousInd] = 'C'
			AND IsDeleted = 0
			AND [Training_Type__c] = 'Friend/Neighbor Health & Safety Training'
		GROUP BY [Contact__c]
) AS sftraining
ON sfcnt.[Id] = sftraining.[Contact__c]

LEFT OUTER JOIN Detail.SalesforceProgram AS sfprgm
	ON sfacct.Id = sfprgm.Account__c
	AND sfprgm.Record_Type_Label__c = 'FFN'
	AND sfprgm.Status__c = 'Active'
	AND sfprgm.CurrentPreviousInd = 'C'
	AND sfprgm.IsDeleted = 0

LEFT OUTER JOIN (
	SELECT DISTINCT
	subauth.Program__c
	,CASE WHEN subauth.Relationship_to_Child__c = 'Other non-relative' THEN 'N'
	ELSE 'Y'
	END AS RelatvieCare
	FROM Detail.SalesforceSubsidyAuthorization AS subauth
	WHERE subauth.CurrentPreviousInd = 'C'
	AND subauth.IsDeleted = 0
	AND subauth.Status__c = 'Active'
	AND subauth.SU_App__c IS NOT NULL
) AS sfsubauth
	ON sfprgm.Id = sfsubauth.Program__c

--LEFT OUTER JOIN (
--	SELECT
--	subreqst.[Program__c]
--	,CASE WHEN subreqst.[Relationship_Type__c] = 'Other non-relative' THEN 'N'
--		ELSE 'Y'
--	END AS RelatvieCare
--	FROM [WACompass].[Detail].[SalesforceSubsidyRequest] AS subreqst
--	INNER JOIN Detail.SalesforceRecordType AS rctpye
--		ON subreqst.RecordTypeId = rctpye.Id
--		AND rctpye.[Name] = 'FFN New Auth'
--		AND rctpye.CurrentPreviousInd = 'C'
--		AND rctpye.IsDeleted = 0
--	WHERE subreqst.CurrentPreviousInd = 'C'
--	AND subreqst.IsDeleted = 0
--	AND subreqst.Subsidy_Authorization__c IS NULL
--) AS sfsubrqst
--	ON sfprgm.Id = sfsubrqst.Program__c

WHERE sfcnt.CurrentPreviousInd = 'C'
AND sfcnt.IsDeleted = 0

--AND sfacct.SSPS_Id__c = '003199'

--ORDER BY sfacct.SSPS_Id__c
--,[LastName]
--,[FirstName]

GO
/****** Object:  Table [ETLConfig].[PackagePrecedence]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLConfig].[PackagePrecedence](
	[PrecedenceRecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[ChildPackageId] [smallint] NOT NULL,
	[ParentPackageId] [smallint] NOT NULL,
	[PrecedenceActive] [bit] NOT NULL,
	[PrecedenceLastUpdatedOn] [datetime] NOT NULL,
	[PrecedenceCreatedOn] [datetime] NOT NULL,
 CONSTRAINT [pkConfig_PackagePrecedence] PRIMARY KEY CLUSTERED 
(
	[PrecedenceRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ETLConfig].[PackageInfo]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLConfig].[PackageInfo](
	[PackageId] [smallint] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](250) NULL,
	[ManualOverride] [bit] NOT NULL,
	[ReadyToRun] [bit] NOT NULL,
	[RunsMultipleTimes] [bit] NOT NULL,
	[DebugLevel] [smallint] NULL,
	[NightlyReset] [bit] NULL,
	[ClearToRun] [tinyint] NULL,
	[IsActive] [bit] NOT NULL,
	[PrimaryPOC] [varchar](50) NULL,
	[SecondaryPOC] [varchar](50) NULL,
	[DirectoryLocation] [varchar](200) NULL,
	[JobName] [varchar](200) NULL,
	[SourceServer] [varchar](100) NULL,
	[SourceDatabase] [varchar](100) NULL,
	[DestinationServer] [varchar](100) NULL,
	[DestinationDatabase] [varchar](100) NULL,
	[ETLServerName] [varchar](100) NULL,
	[ETLServerDatabase] [varchar](100) NULL,
	[ETLLogServer] [varchar](100) NULL,
	[ETLLogDatabase] [varchar](100) NULL,
	[DataMartServer] [varchar](100) NULL,
	[DataMartDatabase] [varchar](100) NULL,
	[BypassPackagePrecedence] [bit] NULL,
 CONSTRAINT [pkConfig_PackageInfo] PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ETLConfig].[vwPackagePrecedence]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [ETLConfig].[vwPackagePrecedence]
AS 

SELECT
papc.[PrecedenceRecordId]
,papc.[ParentPackageId]
,pkgingo.PackageName AS ParentPackageName
,papc.[ChildPackageId]
,pkgingo1.PackageName AS ChildPackageName
,papc.[PrecedenceActive]
,papc.[PrecedenceLastUpdatedOn]
,papc.[PrecedenceCreatedOn]
FROM [WACompass].[ETLConfig].[PackagePrecedence] AS papc
INNER JOIN [WACompass].[ETLConfig].[PackageInfo] AS pkgingo
ON papc.[ParentPackageId] = pkgingo.PackageId
INNER JOIN [WACompass].[ETLConfig].[PackageInfo] AS pkgingo1
ON papc.ChildPackageId = pkgingo1.PackageId

GO
/****** Object:  Table [Detail].[SalesforceSubsidyRequest]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceSubsidyRequest](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Birthdate__c] [datetime] NULL,
	[Child_First_Name__c] [nvarchar](50) NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Head_of_Household_Last_Name__c] [nvarchar](25) NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Number_of_Children_Served__c] [float] NULL,
	[Parent_Subsidy_Request__c] [nvarchar](18) NULL,
	[Parents_Disabled__c] [nvarchar](255) NULL,
	[Program__c] [nvarchar](18) NULL,
	[Relationship_Type__c] [nvarchar](255) NULL,
	[SU_App__c] [nvarchar](12) NULL,
	[Service_Codes__c] [nvarchar](255) NULL,
	[Subsidy_Authorization__c] [nvarchar](18) NULL,
	[Subsidy_Line_Item__c] [nvarchar](18) NULL,
	[Change_Request_Reason__c] [nvarchar](255) NULL,
	[Explanation_of_Changes__c] [nvarchar](255) NULL,
	[Last_Name__c] [nvarchar](80) NULL,
	[Status__c] [nvarchar](255) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](50) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[VIP_Template__c] [nvarchar](18) NULL,
	[Auth_Suffix__c] [nvarchar](1300) NULL,
	[Effective_Date__c] [datetime] NULL,
	[Immediate_Closure__c] [nvarchar](255) NULL,
	[Number_of_Active_Children__c] [float] NULL,
	[Provider_Requested_Closure__c] [nvarchar](255) NULL,
	[Request_Detail__c] [nvarchar](255) NULL,
	[Requested_Closure_Date__c] [datetime] NULL,
	[SSPS_ID__c] [nvarchar](1300) NULL,
	[Sent_to_Barcode_Datetime__c] [datetime] NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Subsidy_Authorization__c_Subsidy_Authorization__r_External_Source_Id__c] [nvarchar](18) NULL,
	[Subsidy_Line_Item__c_Subsidy_Line_Item__r_External_Source_Id__c] [nvarchar](17) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[Validated_SU_App__c] [nvarchar](10) NULL,
	[IsDeleted] [tinyint] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[FFN_Most_Restrictive_Care__c] [tinyint] NULL,
 CONSTRAINT [pkDetailSalesforceSubsidyRequest_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [DataMartAttendance].[vwSubsidyRequestTermination]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DataMartAttendance].[vwSubsidyRequestTermination]
AS

SELECT
CASE when CONVERT(INT,LEFT(sr.Change_Request_Reason__c,3)) BETWEEN 201 AND 206 then 1 else 0 end as BackgroundCheckTermination
,a.SSPS_Id__c
,sr.Name
,sr.CreatedDate
,sr.LastModifiedDate
,sr.SystemModstamp
,sr.Change_Request_Reason__c
,sr.Request_Detail__c
,sr.Effective_Date__c
,sr.Immediate_Closure__c
,srrt.[Name] AS Record_Type_Name__c
,sr.Status__c
FROM WACompass.Detail.SalesforceSubsidyRequest sr
INNER JOIN WACompass.Detail.SalesforceProgram p
	ON sr.program__c=p.Id
	AND p.CurrentPreviousInd='C'
	AND p.IsDeleted=0
INNER JOIN WACompass.Detail.SalesforceAccount a 
	ON p.Account__c=a.Id
	AND a.CurrentPreviousInd='C'
	AND a.IsDeleted=0
INNER JOIN WACompass.Detail.SalesForceRecordType srrt
	ON sr.RecordTypeID=srrt.Id
	AND srrt.CurrentPreviousInd='C'
	AND srrt.IsDeleted=0
	AND srrt.SobjectType='Subsidy_Request__c'
WHERE sr.CurrentPreviousInd='C'
	AND sr.IsDeleted=0
	AND CONVERT(INT,LEFT(sr.Change_Request_Reason__c,3)) BETWEEN 201 AND 222 /** This causes an entire table scan on Detail.SalesforceSubsidyRequest */
GO
/****** Object:  Table [Detail].[SalesforceSubsidyLineItem]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceSubsidyLineItem](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Subsidy_Authorization__c] [nvarchar](18) NULL,
	[Auth_Suffix__c] [nvarchar](2) NULL,
	[Begin_Date__c] [datetime] NULL,
	[CL_Num__c] [float] NULL,
	[End_Date__c] [datetime] NULL,
	[External_Source_Id__c] [nvarchar](17) NULL,
	[Line_Num__c] [float] NULL,
	[Location_of_Care_Address__c] [nvarchar](255) NULL,
	[Location_of_Care_Type__c] [nvarchar](max) NULL,
	[Process_Date__c] [datetime] NULL,
	[Service_Code__c] [nvarchar](5) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Unique_Child_Id__c] [nvarchar](18) NULL,
	[Birthdate__c] [datetime] NULL,
	[Child_First_Name__c] [nvarchar](15) NULL,
	[Termination_Code__c] [nvarchar](50) NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Subsidy_Authorization__c_Subsidy_Authorization__r_External_Source_Id__c] [nvarchar](18) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceSalesforceSubsidyLineItem_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceSalesforceSubsidyLineItem_RecordId] ON [Detail].[SalesforceSubsidyLineItem]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [DataMartAttendance].[vwFFNContactBackgroundCheck]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DataMartAttendance].[vwFFNContactBackgroundCheck]
AS

SELECT
a.SSPS_Id__c
,a.[Name]
,isnull(cp.PBC_Status__c,'') as PrimaryPBCStatus
,isnull(cp.PBC_Expiration_Date__c,'') as PrimaryPBCExpirationDt
,sl.coph as ActiveLinesInProviderHome
,sl.coch as ActiveLinesInChildHome
,CASE when sl.coph>0 then pbco.CountHH else NULL END as CountHH
,CASE when sl.coph>0 then pbco.MinHHPBCExpirationDt else NULL END as MinHHPBCExpirationDt
,CASE when sl.coph>0 and isnull(pbco.CountHH,0)>0 then CASE pbco.SumHHBadPBC when '0' then '1' else '0' END else NULL END as AllHHPBCClear
,sl.led as LastLineEndDt
FROM WACompass.Detail.SalesforceAccount a
INNER JOIN WACompass.Detail.SalesforceProgram p
	ON a.Id=p.Account__c
	AND p.RecordTypeID in (select Id from WACompass.Detail.SalesForceRecordType where CurrentPreviousInd='C' AND IsDeleted=0 and SobjectType='Program__c' and [Name]='FFN')
	AND p.CurrentPreviousInd='C'
	AND p.IsDeleted=0
LEFT JOIN WACompass.Detail.SalesForceContactAccountRole carp
	ON a.Id=carp.Account__c
	AND carp.CurrentPreviousInd='C'
	AND carp.IsDeleted=0
	AND carp.Affiliation_Type__c='Primary Contact'
LEFT JOIN WACompass.Detail.SalesForceContact cp
	ON carp.Contact__c=cp.Id
	AND cp.CurrentPreviousInd='C'
	AND cp.IsDeleted=0
LEFT JOIN (select
		a.Id as Account__c
		,sum(case when sl.End_Date__c>getdate() and left(sa.Location_of_Care__c,1)='P' then 1 else 0 end) as coph
		,sum(case when sl.End_Date__c>getdate() and left(sa.Location_of_Care__c,1)='C' then 1 else 0 end) as coch
		,max(sl.End_Date__c) as led
		FROM WACompass.Detail.SalesForceAccount a
		INNER JOIN WACompass.Detail.SalesForceProgram p
			ON A.Id=P.Account__c
			AND p.CurrentPreviousInd='C'
			AND p.IsDeleted=0
		INNER JOIN WACompass.Detail.SalesForceSubsidyAuthorization sa
			ON sa.Program__c=p.Id
			AND sa.CurrentPreviousInd='C'
			AND sa.IsDeleted=0
		INNER JOIN WACompass.Detail.SalesForceSubsidyLineItem sl
			ON sl.Subsidy_Authorization__c=sa.Id
			AND sl.CurrentPreviousInd='C'
			AND sl.IsDeleted=0
		WHERE a.CurrentPreviousInd='C'
		AND a.IsDeleted=0
		-- AND sl.End_Date__c>getdate()
		-- AND isnull(sl.Termination_Code__c,'')=''
		GROUP BY a.Id) sl
	ON a.Id=sl.Account__c
LEFT JOIN (select
		caro.Account__c
		,count(co.Id) as CountHH
		,min(co.PBC_Expiration_Date__c) as MinHHPBCExpirationDt
		,sum(CASE when co.PBC_Status__c in ('Approved','Pending','') then 0 else 1 end) as SumHHBadPBC
		FROM WACompass.Detail.SalesForceContactAccountRole caro
		INNER JOIN WACompass.Detail.SalesForceContact co
			ON caro.Contact__c=co.Id
			AND co.CurrentPreviousInd='C'
			AND co.IsDeleted=0
		WHERE caro.CurrentPreviousInd='C'
		AND caro.IsDeleted=0
		AND caro.Affiliation_Type__c<>'Primary Contact'
		AND caro.Status__c='Active'
		group by caro.Account__c) pbco
	ON a.Id=pbco.Account__c
WHERE a.CurrentPreviousInd='C'
AND a.IsDeleted=0
AND a.RecordTypeID in (select Id from WACompass.Detail.SalesForceRecordType where CurrentPreviousInd='C' AND IsDeleted=0 and SobjectType='Account' and [Name]='Provider')
AND (sl.led>'2019-07-01' or isnull(sl.coph,0)+isnull(sl.coch,0)>0)
GO
/****** Object:  Table [Detail].[SalesforceProviderLicense]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceProviderLicense](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](20) NOT NULL,
	[OwnerId] [nvarchar](20) NULL,
	[Name] [nvarchar](18) NULL,
	[Account_Field_Office_Address_1__c] [nvarchar](10) NULL,
	[Account_Field_Office_Address_2__c] [nvarchar](10) NULL,
	[Account_Field_Office_Address__c] [nvarchar](10) NULL,
	[Account__c] [nvarchar](20) NULL,
	[Age_From__c] [nvarchar](27) NULL,
	[Age_Group_Served__c] [nvarchar](45) NULL,
	[Age_Groups_Served__c] [nvarchar](10) NULL,
	[Age_Range_Display_Label__c] [nvarchar](48) NULL,
	[Age_To__c] [nvarchar](28) NULL,
	[Authority__c] [nvarchar](20) NULL,
	[Certificate_of_Occupancy__c] [datetime] NULL,
	[County__c] [nvarchar](23) NULL,
	[Current_User_Role_Name__c] [nvarchar](24) NULL,
	[Delivery_Method__c] [nvarchar](10) NULL,
	[Expiration_Date__c] [datetime] NULL,
	[External_Source_ID__c] [nvarchar](18) NULL,
	[Famlink_ID__c] [nvarchar](35) NULL,
	[Famlink_Last_Updated_By__c] [nvarchar](34) NULL,
	[Fire_Marshal_Visit_Date__c] [datetime] NULL,
	[License_Anniversary_Date_MMDD__c] [nvarchar](20) NULL,
	[License_Capacity__c] [float] NULL,
	[License_Certificate_Type__c] [nvarchar](22) NULL,
	[License_End_Category__c] [nvarchar](50) NULL,
	[License_End_Date__c] [datetime] NULL,
	[License_End_Description__c] [nvarchar](102) NULL,
	[License_Expiration_Date__c] [datetime] NULL,
	[License_Expires__c] [nvarchar](10) NULL,
	[License_Facility_Type_Name__c] [nvarchar](32) NULL,
	[License_Start_Date__c] [datetime] NULL,
	[License_Status__c] [nvarchar](29) NULL,
	[License_Sub_Type__c] [nvarchar](23) NULL,
	[License_Type__c] [nvarchar](23) NULL,
	[Licensing_Supervisor__c] [nvarchar](10) NULL,
	[Licensor_City__c] [nvarchar](20) NULL,
	[Limitations__c] [nvarchar](85) NULL,
	[Occupancy__c] [float] NULL,
	[Primary_Contact_Full_Name__c] [nvarchar](30) NULL,
	[Provider_City__c] [nvarchar](34) NULL,
	[Provider_DBA__c] [nvarchar](78) NULL,
	[Provider_License_Capacity__c] [float] NULL,
	[Provider_Shipping_Address_1__c] [nvarchar](93) NULL,
	[Provider_Shipping_Address_2__c] [nvarchar](44) NULL,
	[Provider_Zip_Code__c] [nvarchar](19) NULL,
	[Restricted__c] [tinyint] NULL,
	[SSPS_ID__c] [nvarchar](18) NULL,
	[Tracking_Number__c] [nvarchar](10) NULL,
	[Update_Approved__c] [tinyint] NULL,
	[WAC_Section_Number__c] [nvarchar](22) NULL,
	[Total_Classroom_Capacities__c] [float] NULL,
	[Account_Account_Field_Office_Address__r_External_Source_Id__c] [nvarchar](50) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](50) NULL,
	[User_Licensing_Supervisor__r_External_Source_ID__c] [nvarchar](40) NULL,
	[Account_Office__c] [nvarchar](33) NULL,
	[Primary_Licensor__c] [nvarchar](26) NULL,
	[Days_til_license_expiration_date__c] [float] NULL,
	[Provider_Type__c] [nvarchar](29) NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[Evening_and_Overnight_Care__c] [tinyint] NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[License_Last_Amended_On_Date__c] [datetime] NULL,
	[Licensed_for_Off_Hours__c] [tinyint] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](20) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](20) NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SystemModstamp] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[License_Certificate_Display_Name__c] [nvarchar](100) NULL,
	[Office_Fax_Number__c] [nvarchar](50) NULL,
	[Office_Phone_Number__c] [nvarchar](50) NULL,
	[Account_Office_Physical_Address__c] [nvarchar](50) NULL,
	[Account_Office_Physical_Address_2__c] [nvarchar](50) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Emergency_License__c] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceProviderLicense_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceProviderLicense_RecordId] ON [Detail].[SalesforceProviderLicense]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [DataMart].[vwAccountCovidClosure]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DataMart].[vwAccountCovidClosure]
AS
SELECT A.Id                                   AS SalesForce_GUID
     , A.Account_Unique_ID__c                 AS SalesForce_Unique_ID
     , A.SSPS_Id__c                           AS SSPS_Id
     , A.FamLink_Id__c                        AS FamLink_Id
     , A.Latest_License_Facility_Type_Name__c AS Latest_License_Facility_Type_Name
     , A.[Name]                               AS Account_Name
     , CAR.Status__c                          AS Primary_Contact_Status
     , C.[Name]                               AS Primary_Contact_Full_Name
     , A.Latest_License_Sub_Type__c           AS License_Sub_Type
     , A.Provider_Type__c                     AS Provider_Type
     , A.Office__c                            AS Office
     , L.License_Expiration_Date__c           AS License_Expiration_Date
     , L.License_Capacity__c                  AS License_Capacity
     , L.License_Status__c                    AS License_Status
     , L.Emergency_License__c                 AS Emergency_License
     , A.Provider_Slot_Availability__c        AS Provider_Slot_Availability
     , A.Total_Available_Slots__c             AS Total_Available_Slots
     , A.Phone                                AS Account_Phone
     , A.Email__c                             AS Account_Email
     , A.Primary_Language__c                  AS Primary_Language
     , A.Physical_Street__c                   AS Physical_Street
     , A.Physical_City__c                     AS Physical_City
     , A.Physical_Zip__c                      AS Physical_Zip
     , A.Physical_County__c                   AS Physical_County
     , A.Physical_Geolocation__Latitude__s    AS Physical_Lat
     , A.Physical_Geolocation__Longitude__s   AS Physical_Lon
     , ISNULL (A.Covid_19_Closure__c, 0)      AS Covid19_Closure
     , A.Operating_Status__c                  AS Operating_Status
     , eaprgms.EarlyAchieverStatusInternal    AS EarlyAchieverStatusInternal
     , eaprgms.EarlyAchieverStatusExternal    AS EarlyAchieverStatusExternal
     , A.Evening_and_Overnight_Care__c        AS Evening_and_Overnight_Care
     , A.Hours_of_Operation__c                AS Hours_of_Operation
     , A.Hours_of_Operation_Mon__c            AS Hours_Monday
     , A.Hours_of_Operation_Tue__c            AS Hours_Tuesday
     , A.Hours_of_Operation_Wed__c            AS Hours_Wednesday
     , A.Hours_of_Operation_Thu__c            AS Hours_Thursday
     , A.Hours_of_Operation_Fri__c            AS Hours_Friday
     , A.Hours_of_Operation_Sat__c            AS Hours_Saturday
     , A.Hours_of_Operation_Sun__c            AS Hours_Sunday
     , A.LastModifiedDate
     , CASE
           WHEN ISNULL (A.Count_Of_Open_Licenses__c, 0) > 0 THEN
               1
           ELSE
               0
       END                                    AS Open_License
FROM WACompass.Detail.SalesforceAccount                     A
    INNER JOIN WACompass.Detail.SalesforceRecordType        RT
        ON A.RecordTypeId = RT.Id
           AND RT.SobjectType = 'Account'
           AND RT.[Name] <> 'Constituent'
           AND RT.CurrentPreviousInd = 'C'
           AND RT.IsDeleted = 0
     --LEFT OUTER JOIN [Detail].[SalesforceProgram] AS sfprgm
     --       ON a.Id = sfprgm.Account__c
     --       AND sfprgm.CurrentPreviousInd = 'C'
     --       AND sfprgm.IsDeleted = 0
     --       AND sfprgm.Program_Type__c = 'Early Achievers'
     --       AND sfprgm.Status__c = 'Active'
    LEFT JOIN WACompass.Detail.SalesforceContactAccountRole CAR
        ON A.Current_Primary_Contact_Rec_ID__c = CAR.Id
           AND CAR.CurrentPreviousInd = 'C'
           AND CAR.IsDeleted = 0
    LEFT JOIN WACompass.Detail.SalesforceContact            C
        ON CAR.Contact__c = C.Id
           AND C.CurrentPreviousInd = 'C'
           AND C.IsDeleted = 0
    LEFT OUTER JOIN (
                SELECT
            Account__c
            ,Early_Achiever_Status_Internal__c AS EarlyAchieverStatusInternal
            ,Early_Achiever_Status_External__c AS EarlyAchieverStatusExternal
            ,RANK() OVER(PARTITION BY Account__c ORDER BY CreatedDate DESC, SystemModstamp DESC) RecordRank
            FROM Detail.SalesforceProgram
            WHERE  CurrentPreviousInd = 'C'
            AND IsDeleted = 0
            AND Program_Type__c = 'Early Achievers'
            AND Status__c = 'Active'
      ) eaprgms 
      ON a.Id = eaprgms.Account__c
      AND eaprgms.RecordRank = 1
    LEFT JOIN
    (
        SELECT Account__c
             , License_Expiration_Date__c
             , License_Capacity__c
             , License_Status__c
             , License_Start_Date__c
             , Emergency_License__c
             , ROW_NUMBER () OVER (PARTITION BY Account__c
                                   ORDER BY CASE
                                                WHEN License_Status__c = 'Open' THEN
                                                    0
                                                ELSE
                                                    1
                                            END ASC
                                          , License_Start_Date__c DESC
                                  ) AS Primacy
        FROM WACompass.Detail.SalesforceProviderLicense
        WHERE CurrentPreviousInd = 'C'
              AND IsDeleted = 0
    )                                                       L
        ON A.Id = L.Account__c
           AND L.Primacy = 1
WHERE A.CurrentPreviousInd = 'C'
      AND A.IsDeleted = 0;
GO
/****** Object:  View [DataMartAttendance].[vwElectronicAttendanceSystemProviders]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [DataMartAttendance].[vwElectronicAttendanceSystemProviders]
AS

SELECT
sfprgm.Id AS ProgramId
,sfprgm.[Name] AS ProgramName
,CONVERT(CHAR(10), sfprgm.Program_Start__c,121) AS ProgramStartDate
,CONVERT(CHAR(10), sfprgm.Program_End__c,121) AS ProgramEndDate
,sfprgm.Program_Type__c AS ProgramType
--,sfprgm.Approved_for_Attendance__c AS ApprovedForAttendance
,sfeas.Validated_for_Attendance__c AS ApprovedForAttendance
,sfeas.[Name] AS ElectronicAttendanceSystemsName
,sfeas.Product_Name__c AS ElectronicAttendanceSystemsProductName 
,sfprgm.Status__c AS ProgramStatus
,sfacct.Id AS ProviderId
,sfacct.[Name] AS ProviderName
--,sfacct.SSPS_Id__c AS SSPSId
,CASE WHEN sfacct.SSPS_Id__c = '0' THEN NULL
	WHEN ISNUMERIC(sfacct.SSPS_Id__c) = 1 THEN CONVERT(INT, sfacct.SSPS_Id__c)
	ELSE NULL
END AS SSPSId
,sfacct.Provider_Type__c AS ProviderType
,sfrcty.[Name] AS ProviderRecordType
,sfacct.Provider_Status__c AS ProviderStatus
--,sfacct.SystemModstamp AS ProviderAccountLastModifiedDate
,sfprgm.LastModifiedDate AS ProgramLastModifiedDate
,sfprgm.SystemModstamp AS ProgramSystemLastModifiedDate
,sfeas.SystemModstamp AS EASLastModifiedDate
,sfprgm.Insertdatetime AS LastUpdatedDate
FROM Detail.SalesforceProgram AS sfprgm

INNER JOIN Detail.SalesforceElectronicAttendanceSystems AS sfeas
	ON sfprgm.Electronic_Attendance_System__c = sfeas.Id
	AND sfeas.CurrentPreviousInd = 'C'
	AND sfeas.IsDeleted = 0

INNER JOIN Detail.SalesforceAccount AS sfacct
	ON sfprgm.Account__c = sfacct.Id
	AND sfacct.CurrentPreviousInd = 'C'
	AND sfacct.IsDeleted = 0

INNER JOIN Detail.SalesforceRecordType AS sfrcty
	ON sfacct.RecordTypeId = sfrcty.Id
	AND sfrcty.CurrentPreviousInd = 'C'
	AND sfrcty.IsDeleted = 0

WHERE LEN(sfprgm.Approved_for_Attendance__c) > 0
	AND sfprgm.CurrentPreviousInd = 'C'
	AND sfprgm.IsDeleted = 0
	AND sfprgm.Status__c = 'Active'

/* Old Code 
SELECT 
[ProgramId]
,[ProgramName]
,[ProgramStartDate]
,[ProgramEndDate]
,[ProgramType]
,[ApprovedForAttendance]
,[ElectronicAttendanceSystemsName]
,[ElectronicAttendanceSystemsProductName]
,[ProgramStatus]
,[ProviderId]
,[ProviderName]
,[SSPSId]
,[ProviderType]
,[ProviderRecordType]
,[ProviderStatus]
,[ProgramLastModifiedDate]
,[EASLastModifiedDate]
,[LastUpdatedDate]
FROM [WACompass].[dbo].[tmpElectronicAttendanceSystemProviders]

*/

GO
/****** Object:  UserDefinedFunction [Utilities].[udfStripSpecialUnicode]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Utilities].[udfStripSpecialUnicode](@s NVARCHAR(255)) RETURNS NVARCHAR(255)
   WITH SCHEMABINDING
BEGIN
   IF @s IS NULL
      RETURN NULL
   DECLARE @s2 VARCHAR(256)
   DECLARE @s3 VARCHAR(256)
   SET @s2 = ''
   DECLARE @l INT
   SET @l = LEN(@s)
   DECLARE @p INT
   SET @p = 1
   WHILE @p <= @l
   BEGIN
      DECLARE @c INT
      SET @c = ASCII(SUBSTRING(@s, @p, 1))
      IF @c BETWEEN 48 AND 57 OR @c BETWEEN 65 AND 90 OR @c BETWEEN 97 AND 122 OR @c = 46 OR @c = 61 OR @c = 32
	  BEGIN
         SET @s2 = @s2 + CHAR(@c)
	  END
		SET @p = @p + 1
   END
   IF LEN(@s2) = 0
      RETURN NULL
   RETURN @s2

   END
GO
/****** Object:  Table [Config].[RelationshipPriority]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[RelationshipPriority](
	[RelationshipId] [smallint] IDENTITY(1,1) NOT NULL,
	[RelationshipTypeId] [tinyint] NOT NULL,
	[RelationshipDescription] [nvarchar](75) NOT NULL,
	[RelationshipPriority] [tinyint] NOT NULL,
	[RelationshipIsActive] [bit] NOT NULL,
	[RelationshipEffectiveDate] [datetime2](4) NOT NULL,
	[RelationshipEndDate] [datetime2](4) NULL,
 CONSTRAINT [PK_RelationshipPriority] PRIMARY KEY CLUSTERED 
(
	[RelationshipId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[SalesforceFields]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[SalesforceFields](
	[FieldRecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[FieldId] [smallint] NULL,
	[FieldName] [varchar](250) NULL,
	[FieldCaseSensitive] [bit] NULL,
	[FieldDefaultValue] [varchar](250) NULL,
	[FieldDescription] [varchar](4000) NULL,
	[FieldExternalId] [bit] NULL,
	[FieldFormula] [varchar](1500) NULL,
	[FieldInlineHelpText] [varchar](1000) NULL,
	[FieldLabel] [varchar](1000) NULL,
	[FieldLength] [int] NULL,
	[FieldReferenceTo] [varchar](100) NULL,
	[FieldReferenceToId] [smallint] NULL,
	[FieldRelationshipLabel] [varchar](100) NULL,
	[FieldRelationshipName] [varchar](100) NULL,
	[FieldRelationshipOrder] [smallint] NULL,
	[FieldReparentableMasterDetail] [bit] NULL,
	[FieldPrecision] [smallint] NULL,
	[FieldRequired] [bit] NULL,
	[FieldScale] [smallint] NULL,
	[FieldTrackHistory] [bit] NULL,
	[FieldType] [varchar](250) NULL,
	[ObjectNameSalesforce] [varchar](250) NULL,
	[ObjectId] [smallint] NULL,
	[FieldIsActive] [bit] NULL,
	[FieldeDateEff] [datetime] NULL,
	[FieldDateExp] [datetime] NULL,
	[FieldLastUpdatedOn] [datetime] NULL,
	[FieldIsReplicated] [bit] NULL,
 CONSTRAINT [PK_ConfigSalesforceFields] PRIMARY KEY CLUSTERED 
(
	[FieldRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[SalesforceObjectMapping]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[SalesforceObjectMapping](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[SalesForceObjectName] [varchar](200) NOT NULL,
	[TableName] [varchar](200) NOT NULL,
	[DataMartTableName] [varchar](200) NULL,
	[LastUpdatedDateTime] [datetime] NOT NULL,
	[InsertDateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[SalesforceObjects]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[SalesforceObjects](
	[ObjecId] [smallint] IDENTITY(1,1) NOT NULL,
	[ObjectName] [varchar](100) NOT NULL,
	[ObjectNameSalesforce] [varchar](100) NULL,
	[ObjectDescription] [varchar](1000) NULL,
	[ObjectEnviromentId] [tinyint] NULL,
	[ObjectIsCustom] [bit] NULL,
	[ObjectIsActive] [bit] NULL,
	[ObjectIsReplicated] [bit] NULL,
	[ObjectDateEff] [datetime] NULL,
	[ObjectDateExp] [datetime] NULL,
	[ObjectLastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkConfigSalesforceObjects_ObjectId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkConfigSalesforceObjects_ObjectId] ON [Config].[SalesforceObjects]
(
	[ObjecId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Config].[Systems]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[Systems](
	[SystemId] [smallint] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](50) NOT NULL,
	[SystemDescription] [nchar](260) NULL,
	[SystemIsActive] [bit] NULL,
	[SystemLastUpDatedOn] [datetime2](7) NULL,
	[SystemInsertDatetime] [datetime2](7) NULL,
 CONSTRAINT [pk_ConfigSystems] PRIMARY KEY CLUSTERED 
(
	[SystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceLead]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceLead](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[MasterRecordId] [nvarchar](18) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Salutation] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Title] [nvarchar](128) NULL,
	[Company] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](80) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](80) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[GeocodeAccuracy] [nvarchar](40) NULL,
	[Phone] [nvarchar](40) NULL,
	[Email] [nvarchar](80) NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[LeadSource] [nvarchar](40) NULL,
	[Status] [nvarchar](40) NULL,
	[Industry] [nvarchar](40) NULL,
	[NumberOfEmployees] [int] NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsConverted] [tinyint] NULL,
	[ConvertedDate] [datetime] NULL,
	[ConvertedAccountId] [nvarchar](18) NULL,
	[ConvertedContactId] [nvarchar](18) NULL,
	[ConvertedOpportunityId] [nvarchar](18) NULL,
	[IsUnreadByOwner] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawContactId] [nvarchar](20) NULL,
	[EmailBouncedReason] [nvarchar](255) NULL,
	[EmailBouncedDate] [datetime] NULL,
	[County__c] [nvarchar](255) NULL,
	[Lead_Owner_Email__c] [nvarchar](1300) NULL,
	[Lead_Validation_Code__c] [nvarchar](128) NULL,
	[Licensing_Office_Library__c] [nvarchar](18) NULL,
	[Licensing_Office__c] [nvarchar](255) NULL,
	[Licensing_Orientation1_Aging__c] [float] NULL,
	[Licensing_Orientation1_Date__c] [datetime] NULL,
	[Licensing_Orientation2_Aging__c] [float] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[Potential_License_Facility_Type__c] [nvarchar](255) NULL,
	[Region__c] [nvarchar](255) NULL,
	[Scheduled_Orientation_Date_1__c] [datetime] NULL,
	[Scheduled_Orientation_Date_2__c] [datetime] NULL,
	[Additional_Children__c] [nvarchar](255) NULL,
	[Birthdate__c] [datetime] NULL,
	[Ethnic_Background_Other__c] [nvarchar](50) NULL,
	[Ethnic_Background__c] [nvarchar](max) NULL,
	[Interpreter_Needed__c] [nvarchar](255) NULL,
	[Languages_Spoken__c] [nvarchar](1300) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Mailing_Address__c] [nvarchar](100) NULL,
	[Mailing_Address_different_than_Street__c] [tinyint] NULL,
	[Mailing_City__c] [nvarchar](80) NULL,
	[Mailing_County__c] [nvarchar](255) NULL,
	[Mailing_State__c] [nvarchar](2) NULL,
	[Mailing_Zip_Code__c] [nvarchar](10) NULL,
	[Middle_Initial__c] [nvarchar](1) NULL,
	[Number_of_Children__c] [nvarchar](255) NULL,
	[Primary_Language__c] [nvarchar](255) NULL,
	[SSN__c] [nvarchar](11) NULL,
	[Secondary_Language__c] [nvarchar](255) NULL,
	[Total_Invalid_SU_App__c] [float] NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](255) NULL,
	[VIP_Form_Template__c] [nvarchar](18) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[Ethnicity_Name__c] [nvarchar](255) NULL,
	[FFN_Exists__c] [tinyint] NULL,
	[Race_Name__c] [nvarchar](255) NULL,
	[Signature_on_Paper_Copy__c] [tinyint] NULL,
	[Updates_Needed_Details__c] [nvarchar](255) NULL,
	[Total_Number_of_Families__c] [float] NULL,
	[Total_Valid_SU_Apps__c] [float] NULL,
	[Zip_Code_Library__c_Licensing_Office_Library__r_External_Source_ID__c] [nvarchar](20) NULL,
	[VIPForm__VIP_Template__c_VIP_Form_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[Website] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [nvarchar](40) NULL,
	[AnnualRevenue] [float] NULL,
	[HasOptedOutOfEmail] [tinyint] NULL,
	[DoNotCall] [tinyint] NULL,
	[HasOptedOutOfFax] [tinyint] NULL,
	[LastTransferDate] [datetime] NULL,
	[Relatiive_to_Child_ren__c] [nvarchar](255) NULL,
	[IsDeleted] [tinyint] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailSalesforceLead_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceLeadAssociate]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceLeadAssociate](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Email__c] [nvarchar](80) NULL,
	[External_Source_ID__c] [nvarchar](64) NULL,
	[First_Name__c] [nvarchar](40) NULL,
	[Last_Name__c] [nvarchar](128) NULL,
	[Lead__c] [nvarchar](18) NULL,
	[Licensing_Orientation_1_Date__c] [datetime] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[Middle_Name__c] [nvarchar](40) NULL,
	[Phone__c] [nvarchar](40) NULL,
	[Physical_City__c] [nvarchar](64) NULL,
	[Physical_State__c] [nvarchar](2) NULL,
	[Physical_Street__c] [nvarchar](255) NULL,
	[Physical_Zipcode__c] [nvarchar](10) NULL,
	[Relationship_Type__c] [nvarchar](255) NULL,
	[Birthdate__c] [datetime] NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Relationship_to_Provider__c] [nvarchar](50) NULL,
	[Parent_Lead_Associate__c] [nvarchar](18) NULL,
	[SU_App__c] [nvarchar](10) NULL,
	[Status__c] [nvarchar](255) NULL,
	[Public_Lead__c] [nvarchar](18) NULL,
	[VIP_Is_Record_Type_Household_Member__c] [tinyint] NULL,
	[VIP_Is_Record_Type_LE_Consumer__c] [tinyint] NULL,
	[Lead_Lead__r_Lead_Validation_Code__c] [nvarchar](128) NULL,
	[Lead_Associate__c_Parent_Lead_Associate__r_External_Source_ID__c] [nvarchar](64) NULL,
	[IsDeleted] [tinyint] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailSalesforceLeadAssociate_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceProviderCase]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceProviderCase](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Account_Latest_License_ID__c] [nvarchar](1300) NULL,
	[Account_Latest_License_Status__c] [nvarchar](1300) NULL,
	[Account_License_Facility_Type_Name__c] [nvarchar](1300) NULL,
	[Account_Name__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address_1__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address_2__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address__c] [nvarchar](1300) NULL,
	[Account__c] [nvarchar](18) NULL,
	[Adverse_Action_Outcome__c] [nvarchar](255) NULL,
	[Age_Range__c] [nvarchar](1300) NULL,
	[Agree_to_correct_issues__c] [tinyint] NULL,
	[Agree_to_correct_issues_frmla__c] [nvarchar](1300) NULL,
	[All_Journey_Action_Completed__c] [tinyint] NULL,
	[Anniversary_Date__c] [nvarchar](1300) NULL,
	[Appeal_End_Date__c] [datetime] NULL,
	[Appeal_Start_Date__c] [datetime] NULL,
	[Approved_By_Supervisor__c] [tinyint] NULL,
	[Background_Checks__c] [tinyint] NULL,
	[COE_Facility_Closed__c] [tinyint] NULL,
	[CPS_Status__c] [nvarchar](255) NULL,
	[Case_Sub_Type__c] [nvarchar](255) NULL,
	[Checklist_Field_Retrieve_End__c] [datetime] NULL,
	[Completed_Date__c] [datetime] NULL,
	[Compliance_Percent_Complete__c] [decimal](18, 4) NULL,
	[Current_Provider_License_SF_ID__c] [nvarchar](1300) NULL,
	[Date_Probation_Revoked__c] [datetime] NULL,
	[Days_Til_Due__c] [decimal](18, 4) NULL,
	[Days_of_Operation__c] [nvarchar](1300) NULL,
	[Declaration_Received_Date__c] [datetime] NULL,
	[Declaration_Received__c] [tinyint] NULL,
	[Description__c] [nvarchar](255) NULL,
	[Documentation_Requested__c] [nvarchar](max) NULL,
	[Doing_Business_As__c] [nvarchar](1300) NULL,
	[Due_Date__c] [datetime] NULL,
	[Expiration_Date__c] [nvarchar](1300) NULL,
	[External_Source_ID__c] [nvarchar](255) NULL,
	[Fees_Paid__c] [tinyint] NULL,
	[Final_Checklist_Type__c] [nvarchar](255) NULL,
	[Finding_Letter_Sent__c] [tinyint] NULL,
	[Fire_Marshal_Visit_Confirmation__c] [datetime] NULL,
	[Fire_Marshal_Visit__c] [datetime] NULL,
	[Hours_of_Operation__c] [nvarchar](1300) NULL,
	[Ignore_Trigger__c] [tinyint] NULL,
	[In_Approval_Proces__c] [tinyint] NULL,
	[Intake_Management_Complaint__c] [tinyint] NULL,
	[Is_Mobilized__c] [tinyint] NULL,
	[JB_Passed_Fire_Inspection__c] [datetime] NULL,
	[JB_Scheduled_First_Initial_License_Visit__c] [datetime] NULL,
	[JB_Scheduled_Second_Initial_Visit__c] [datetime] NULL,
	[Latest_License_Id__c] [nvarchar](1300) NULL,
	[Legal_Text_Type__c] [nvarchar](255) NULL,
	[License_Capacity__c] [nvarchar](1300) NULL,
	[License_Issue_Date__c] [nvarchar](1300) NULL,
	[License_Status__c] [nvarchar](1300) NULL,
	[License_Type__c] [nvarchar](1300) NULL,
	[Licensee_Refused_to_Sign__c] [tinyint] NULL,
	[Licensee_Signature_Date__c] [datetime] NULL,
	[Licensee_Signature__c] [nvarchar](max) NULL,
	[Licensee_Signee_Name__c] [nvarchar](255) NULL,
	[Licensor_Signature_Date__c] [datetime] NULL,
	[Licensor_Signature__c] [nvarchar](max) NULL,
	[Licensor_Signee_Name__c] [nvarchar](255) NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[My_Mobilized_Ind__c] [tinyint] NULL,
	[Not_Citable_Valid_Violation_Count__c] [decimal](18, 4) NULL,
	[Office_Address_1__c] [nvarchar](1300) NULL,
	[Office_Address_2__c] [nvarchar](1300) NULL,
	[Original_Checklist_Type__c] [nvarchar](255) NULL,
	[Owner_Email__c] [nvarchar](1300) NULL,
	[Owner_Name__c] [nvarchar](1300) NULL,
	[Owner_Phone_Number__c] [nvarchar](1300) NULL,
	[Physical_Address_2__c] [nvarchar](1300) NULL,
	[Physical_Address__c] [nvarchar](1300) NULL,
	[Primary_Contact_Email__c] [nvarchar](1300) NULL,
	[Primary_Contact_Name__c] [nvarchar](1300) NULL,
	[Primary_Contact_Phone__c] [nvarchar](1300) NULL,
	[Probation_Meeting_Request__c] [datetime] NULL,
	[Provider_Address1__c] [nvarchar](1300) NULL,
	[Provider_Address2__c] [nvarchar](1300) NULL,
	[Provider_Address3__c] [nvarchar](1300) NULL,
	[Provider_Address4__c] [nvarchar](1300) NULL,
	[Provider_Address__c] [nvarchar](1300) NULL,
	[Provider_ID__c] [nvarchar](1300) NULL,
	[Provider_Name__c] [nvarchar](1300) NULL,
	[Provider_Shipping_Address__c] [nvarchar](1300) NULL,
	[RecordType_Name__c] [nvarchar](50) NULL,
	[Record_Sync_Status__c] [nvarchar](255) NULL,
	[Referral_Status__c] [nvarchar](1300) NULL,
	[Removed_Violation_Count__c] [decimal](18, 4) NULL,
	[Restricted__c] [tinyint] NULL,
	[Result__c] [nvarchar](255) NULL,
	[Scheduled_Fourth_Initial_License_Visit__c] [datetime] NULL,
	[Scheduled_Initial_to_Full_Visit__c] [datetime] NULL,
	[Scheduled_Third_Initial_License_Visit__c] [datetime] NULL,
	[Send_to_Public_Portal__c] [tinyint] NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Submitted__c] [tinyint] NULL,
	[Summary_Observation_Count__c] [decimal](18, 4) NULL,
	[Summary__c] [nvarchar](max) NULL,
	[Supervisor_Approval__c] [nvarchar](255) NULL,
	[Supervisor_Dispute_Ruling__c] [nvarchar](255) NULL,
	[Supervisory_Dispute_Ruling__c] [nvarchar](255) NULL,
	[Supervisory_Reviewer1__c] [nvarchar](18) NULL,
	[Supervisory_Reviewer2__c] [nvarchar](18) NULL,
	[Supervisory_Reviewer3__c] [nvarchar](18) NULL,
	[Technical_Assistance_Help__c] [tinyint] NULL,
	[Technical_Assistance_Help_frmla__c] [nvarchar](1300) NULL,
	[Total_Disputed_Violation_Count__c] [decimal](18, 4) NULL,
	[Total_Not_Valid_Violations__c] [decimal](18, 4) NULL,
	[Total_Violation_Count__c] [decimal](18, 4) NULL,
	[Translation_Services_Requested__c] [tinyint] NULL,
	[Translation_Services_Requested_frmla__c] [nvarchar](1300) NULL,
	[Understand_RCW43215__c] [tinyint] NULL,
	[Valid_Violation_Count__c] [decimal](18, 4) NULL,
	[Visit_Attempt_Number__c] [decimal](18, 4) NULL,
	[Visit_Date__c] [datetime] NULL,
	[Visit_Status__c] [nvarchar](255) NULL,
	[a90_Day_Status__c] [nvarchar](1300) NULL,
	[Abbreviated_Checklist_Calculation__c] [decimal](18, 4) NULL,
	[Abbreviated_Checklist_Complete__c] [decimal](18, 4) NULL,
	[Abbreviated_Checklist_Total_Count__c] [decimal](18, 4) NULL,
	[Full_Checklist_Calculation__c] [decimal](18, 4) NULL,
	[Full_Checklist_Complete__c] [decimal](18, 4) NULL,
	[Full_Checklist_Total_Count__c] [decimal](18, 4) NULL,
	[Provider_Case_Signature_Count__c] [decimal](18, 4) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[User_Supervisory_Reviewer1__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_Supervisory_Reviewer2__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_Supervisory_Reviewer3__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Historical_Assigned_Licensor__c] [nvarchar](255) NULL,
	[Lead__c] [nvarchar](18) NULL,
	[Original_Due_Date__c] [datetime] NULL,
	[Account_Office__c] [nvarchar](1300) NULL,
	[Account_Region__c] [nvarchar](1300) NULL,
	[Appeal_Withdrawl_Date__c] [datetime] NULL,
	[Date_of_Disqualification__c] [datetime] NULL,
	[Date_of_Return_Receipt__c] [datetime] NULL,
	[Days_DLR_CPS_Complaint_Open__c] [nvarchar](1300) NULL,
	[Days_Licensing_Complaint_Open__c] [nvarchar](1300) NULL,
	[Days_Monitoring_Visit_Overdue__c] [nvarchar](1300) NULL,
	[Denial_Letter_Sent_Date__c] [datetime] NULL,
	[Denial_Signed_DPS__c] [datetime] NULL,
	[Hearing_Appeal_End_Date__c] [datetime] NULL,
	[Hearing_Appeal_Start_Date__c] [datetime] NULL,
	[Hearing_Date_of_Decision__c] [datetime] NULL,
	[Hearing_Decision__c] [nvarchar](max) NULL,
	[Latest_License_Certificate_Type__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Authority__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Sub_Type__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Type__c] [nvarchar](1300) NULL,
	[Primary_Licensor__c] [nvarchar](1300) NULL,
	[Rescinded_or_Lifted_Letter_Sent__c] [datetime] NULL,
	[Rescinded_or_Lifted_Return_Receipt__c] [datetime] NULL,
	[Rescinded_or_Lifted_Signed_DPS__c] [datetime] NULL,
	[Review_Judge_Appeal_End_Date__c] [datetime] NULL,
	[Review_Judge_Appeal_Start_Date__c] [datetime] NULL,
	[Review_Judge_Date_of_Decision__c] [datetime] NULL,
	[Review_Judge_Decision__c] [nvarchar](max) NULL,
	[Reviewed_by_AAG_if_applicable__c] [datetime] NULL,
	[Revocation_Letter_Delivered__c] [datetime] NULL,
	[Revocation_Return_Receipt__c] [datetime] NULL,
	[Revocation_Signed_DPS__c] [datetime] NULL,
	[Settlement_Date__c] [datetime] NULL,
	[Summary_Suspension_Rescinded_or_Lifted__c] [datetime] NULL,
	[Summary_Suspension_Signed_DPS__c] [datetime] NULL,
	[Superior_Court_Appeal_End_Date__c] [datetime] NULL,
	[Superior_Court_Appeal_Start_Date__c] [datetime] NULL,
	[Superior_Court_Date_of_Decision__c] [datetime] NULL,
	[Superior_Court_Decision__c] [nvarchar](max) NULL,
	[Suspension_Letter_Delivered__c] [datetime] NULL,
	[Timely_Monitoring_Visit_Attempt__c] [nvarchar](1300) NULL,
	[Supervisor_Review_Request__c] [tinyint] NULL,
	[Supervisory_Review_Text_FRMLA__c] [nvarchar](1300) NULL,
	[Complaint_Date__c] [datetime] NULL,
	[Resolution_Display_Label__c] [nvarchar](1300) NULL,
	[Self_Reported_Count__c] [decimal](18, 4) NULL,
	[Self_Reported_Flag__c] [tinyint] NULL,
	[Valid_Issue_Types__c] [nvarchar](255) NULL,
	[Valid_Regulation_List__c] [nvarchar](255) NULL,
	[Rerate_Release_Date__c] [datetime] NULL,
	[Office_Fax__c] [nvarchar](1300) NULL,
	[Office_Phone__c] [nvarchar](1300) NULL,
	[Office_Phone_and_Fax__c] [nvarchar](1300) NULL,
	[Assessment_End_Time__c] [datetime] NULL,
	[Assessment_Start_Time__c] [datetime] NULL,
	[Assessment_Sub_Type__c] [nvarchar](255) NULL,
	[Assessment_Type_Status__c] [nvarchar](255) NULL,
	[Assessment_Type__c] [nvarchar](255) NULL,
	[CLASS_Score__c] [decimal](18, 4) NULL,
	[Classroom_Session__c] [nvarchar](18) NULL,
	[ERS_Score__c] [decimal](18, 4) NULL,
	[Expected_Lead_Teacher_1_Display_Label__c] [nvarchar](1300) NULL,
	[Overall_EA_Score__c] [decimal](18, 4) NULL,
	[Parent_Provider_Case__c] [nvarchar](18) NULL,
	[Phase_Type__c] [nvarchar](255) NULL,
	[Session__c_Classroom_Session__r_External_Source_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[Cycle_Count__c] [nvarchar](255) NULL,
	[Assessment_Type_Label__c] [nvarchar](1300) NULL,
	[Count_Enrolled__c] [decimal](18, 4) NULL,
	[Count_Dimension_Cycles__c] [decimal](18, 4) NULL,
	[Count_Dimension_Cycle_Matches__c] [decimal](18, 4) NULL,
	[Overall_Reliability__c] [decimal](18, 4) NULL,
	[Data_Collector_Name__c] [nvarchar](255) NULL,
	[Reliability_Collector_Name__c] [nvarchar](255) NULL,
	[Class_Acknowledgement__c] [tinyint] NULL,
	[Physical_Full_Address__c] [nvarchar](1300) NULL,
	[Classroom_Session_Display_Label__c] [nvarchar](1300) NULL,
	[Reliability_Needed__c] [tinyint] NULL,
	[EA_User__c] [nvarchar](18) NULL,
	[Original_Rerate_Case__c] [nvarchar](18) NULL,
	[VIP_Form_Template__c] [nvarchar](18) NULL,
	[VIP_Foreign_Language__c] [nvarchar](255) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[MC_Is_CLASS_Mobilized__c] [tinyint] NULL,
	[Ready_for_Rating__c] [nvarchar](255) NULL,
	[Create_Session_Snapshot__c] [tinyint] NULL,
	[Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Created_By_Proxy_ID__c] [nvarchar](1300) NULL,
	[Assessment_Case__c] [nvarchar](18) NULL,
	[IRRT_Complete__c] [tinyint] NULL,
	[Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Quality_Enrollment_Start_DateTime__c] [datetime] NULL,
	[Provider_Rating_Visible_Date__c] [datetime] NULL,
	[Appealed__c] [tinyint] NULL,
	[Partner_Rating_Visible_Date__c] [datetime] NULL,
	[Quality_Rating_Notice_to_Provider__c] [tinyint] NULL,
	[EA_Enrollment_Date_Time__c] [datetime] NULL,
	[EA_Participation_Approved_Date_Time__c] [datetime] NULL,
	[Quality_Standard_Score__c] [decimal](18, 4) NULL,
	[Score__c] [decimal](18, 4) NULL,
	[Rerate_Type__c] [nvarchar](255) NULL,
	[Case_Creation_Option__c] [nvarchar](1300) NULL,
	[Approved_Date__c] [datetime] NULL,
	[Cohort_Start_Date__c] [datetime] NULL,
	[Cohort_End_Date__c] [datetime] NULL,
	[Rating_Ready_for_WADEL__c] [tinyint] NULL,
	[Rating_Externally_Visible_Date__c] [datetime] NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[VIPForm__VIP_Template__c_VIP_Form_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Assessment_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Provider_Case__c_Assessment_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Assessment_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Assessment_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[User_EA_User__r_Default_Account__c] [nvarchar](18) NULL,
	[Latest_License_Expiration_Date__c] [datetime] NULL,
	[Account_Phone_Number__c] [nvarchar](1300) NULL,
	[Child_Fatality__c] [tinyint] NULL,
	[Child_Near_Fatality__c] [tinyint] NULL,
	[Last_Monitoring_Visit_Date__c] [datetime] NULL,
	[Latest_License_Start_Date__c] [datetime] NULL,
	[Next_Monitoring_Visit_Due_Date__c] [datetime] NULL,
	[Parent_Account__c] [nvarchar](1300) NULL,
	[Provider_Type__c] [nvarchar](1300) NULL,
	[Serious_Injury__c] [nvarchar](max) NULL,
	[ELF_Form_Version__c] [nvarchar](255) NULL,
	[Lead_Lead__r_Lead_Validation_Code__c] [nvarchar](128) NULL,
	[User_EA_User__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Max_Count_Children__c] [decimal](18, 4) NULL,
	[Max_Count_Infants__c] [decimal](18, 4) NULL,
	[Max_Count_Preschoolers__c] [decimal](18, 4) NULL,
	[Max_Count_Teachers__c] [decimal](18, 4) NULL,
	[Max_Count_Toddlers__c] [decimal](18, 4) NULL,
	[Critical_Incident_Report__c] [nvarchar](18) NULL,
	[Appeal_Details__c] [nvarchar](max) NULL,
	[Appeal_Result__c] [nvarchar](255) NULL,
	[Class_Rerate__c] [nvarchar](255) NULL,
	[Cohort_Schedule__c] [nvarchar](18) NULL,
	[Count_Appeals__c] [decimal](18, 4) NULL,
	[Count_Dimension_Cycle_Matches_Reliabil__c] [decimal](18, 4) NULL,
	[EA_Journey_Bar_Label__c] [nvarchar](1300) NULL,
	[EA_Participation_Submission_Date_Time__c] [datetime] NULL,
	[EA_Program__c] [nvarchar](18) NULL,
	[EA_Progress_Label__c] [nvarchar](1300) NULL,
	[ERS_Rerate__c] [nvarchar](255) NULL,
	[My_Form__c] [nvarchar](18) NULL,
	[Overall_Reliability_Reliability_Score__c] [decimal](18, 4) NULL,
	[Points__c] [decimal](18, 4) NULL,
	[QRIS_Scoring_Library__c] [nvarchar](18) NULL,
	[Quality_Rating_Level__c] [nvarchar](255) NULL,
	[Quality_Standards_Rerate__c] [nvarchar](255) NULL,
	[Renewal_Requested__c] [tinyint] NULL,
	[Rerate_Status__c] [nvarchar](255) NULL,
	[Program__c_EA_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[PSS_Self_Reported_Display__c] [nvarchar](1300) NULL,
	[I_am_Ready_to_Submit_My_L2_Application__c] [nvarchar](255) NULL,
	[Full_Streamlined_Rating__c] [nvarchar](255) NULL,
	[L2_Application_Submission_Date__c] [datetime] NULL,
	[Latest_Quality_Rating_Calc_Datetime__c] [datetime] NULL,
	[Program_External_Updated__c] [tinyint] NULL,
	[Records_Review_Case_ID__c] [nvarchar](255) NULL,
	[Early_Achiever_Pathway__c] [nvarchar](255) NULL,
	[QRIS_Scoring_Mode__c] [nvarchar](255) NULL,
	[User_EA_User__r_Branagh_GUID__c] [nvarchar](40) NULL,
	[IsDeleted] [tinyint] NULL,
	[DeletedOn] [datetime] NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[L2_Activities_Due__c] [datetime] NULL,
	[Rating_Due_Date__c] [datetime] NULL,
	[User_EA_User__r_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Records_Review_Acknowledgment__c] [tinyint] NULL,
	[Participation_Agreement__c] [nvarchar](18) NULL,
	[ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Level_2_Rating_Request_Email_Sent__c] [tinyint] NULL,
	[Provider_Case_Owner_Language__c] [nvarchar](1300) NULL,
	[Send_EA_Participation_Approval_Email__c] [tinyint] NULL,
	[Training_Completed__c] [tinyint] NULL,
	[Provider_Case__c_Assessment_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Enrollment_Due__c] [datetime] NULL,
	[Signature_Record_Count__c] [decimal](18, 4) NULL,
	[Days_til_Annual_Compliance_Due__c] [nvarchar](100) NULL,
	[Anniversary_Date_Before_30__c] [datetime] NULL,
	[Anniversary_date_before_90_date__c] [datetime] NULL,
	[Current_Year_Anniversary_Date__c] [nvarchar](100) NULL,
	[Office_Mailing_Address_2__c] [nvarchar](250) NULL,
	[Office_Mailing_Address__c] [nvarchar](250) NULL,
	[EA_Provider_Rating_Release_Email_Sent__c] [tinyint] NULL,
	[Level_2_Activities_Complete__c] [nvarchar](100) NULL,
	[Onsite_Evaluation_Due_Date__c] [datetime] NULL,
	[Quality_Rating_Expiration_Date__c] [datetime] NULL,
	[Rating_Renewal_Reminder_Email_Sent__c] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceProviderCase_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceProviderCase_RecordId] ON [Detail].[SalesforceProviderCase]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SalesforceUser]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SalesforceUser](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](18) NULL,
	[Username] [nvarchar](80) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[CompanyName] [nvarchar](80) NULL,
	[Division] [nvarchar](80) NULL,
	[Department] [nvarchar](80) NULL,
	[Title] [nvarchar](80) NULL,
	[Street] [nvarchar](255) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](80) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](80) NULL,
	[Latitude] [decimal](18, 4) NULL,
	[Longitude] [decimal](18, 4) NULL,
	[GeocodeAccuracy] [nvarchar](40) NULL,
	[Email] [nvarchar](128) NULL,
	[EmailPreferencesAutoBcc] [tinyint] NULL,
	[EmailPreferencesAutoBccStayInTouch] [tinyint] NULL,
	[EmailPreferencesStayInTouchReminder] [tinyint] NULL,
	[SenderEmail] [nvarchar](80) NULL,
	[SenderName] [nvarchar](80) NULL,
	[Signature] [nvarchar](1333) NULL,
	[StayInTouchSubject] [nvarchar](80) NULL,
	[StayInTouchSignature] [nvarchar](512) NULL,
	[StayInTouchNote] [nvarchar](512) NULL,
	[Phone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[Alias] [nvarchar](8) NULL,
	[CommunityNickname] [nvarchar](40) NULL,
	[BadgeText] [nvarchar](80) NULL,
	[IsActive] [tinyint] NULL,
	[TimeZoneSidKey] [nvarchar](40) NULL,
	[UserRoleId] [nvarchar](18) NULL,
	[LocaleSidKey] [nvarchar](40) NULL,
	[ReceivesInfoEmails] [tinyint] NULL,
	[ReceivesAdminInfoEmails] [tinyint] NULL,
	[EmailEncodingKey] [nvarchar](40) NULL,
	[ProfileId] [nvarchar](18) NULL,
	[UserType] [nvarchar](40) NULL,
	[LanguageLocaleKey] [nvarchar](40) NULL,
	[EmployeeNumber] [nvarchar](20) NULL,
	[DelegatedApproverId] [nvarchar](18) NULL,
	[ManagerId] [nvarchar](18) NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangeDate] [datetime] NULL,
	[OfflineTrialExpirationDate] [datetime] NULL,
	[OfflinePdaTrialExpirationDate] [datetime] NULL,
	[UserPermissionsMarketingUser] [tinyint] NULL,
	[UserPermissionsOfflineUser] [tinyint] NULL,
	[UserPermissionsAvantgoUser] [tinyint] NULL,
	[UserPermissionsCallCenterAutoLogin] [tinyint] NULL,
	[UserPermissionsMobileUser] [tinyint] NULL,
	[UserPermissionsSFContentUser] [tinyint] NULL,
	[UserPermissionsKnowledgeUser] [tinyint] NULL,
	[UserPermissionsInteractionUser] [tinyint] NULL,
	[UserPermissionsSupportUser] [tinyint] NULL,
	[UserPermissionsLiveAgentUser] [tinyint] NULL,
	[UserPermissionsChatterAnswersUser] [tinyint] NULL,
	[ForecastEnabled] [tinyint] NULL,
	[UserPreferencesActivityRemindersPopup] [tinyint] NULL,
	[UserPreferencesEventRemindersCheckboxDefault] [tinyint] NULL,
	[UserPreferencesTaskRemindersCheckboxDefault] [tinyint] NULL,
	[UserPreferencesReminderSoundOff] [tinyint] NULL,
	[UserPreferencesDisableAllFeedsEmail] [tinyint] NULL,
	[UserPreferencesDisableFollowersEmail] [tinyint] NULL,
	[UserPreferencesDisableProfilePostEmail] [tinyint] NULL,
	[UserPreferencesDisableChangeCommentEmail] [tinyint] NULL,
	[UserPreferencesDisableLaterCommentEmail] [tinyint] NULL,
	[UserPreferencesDisProfPostCommentEmail] [tinyint] NULL,
	[UserPreferencesContentNoEmail] [tinyint] NULL,
	[UserPreferencesContentEmailAsAndWhen] [tinyint] NULL,
	[UserPreferencesApexPagesDeveloperMode] [tinyint] NULL,
	[UserPreferencesHideCSNGetChatterMobileTask] [tinyint] NULL,
	[UserPreferencesDisableMentionsPostEmail] [tinyint] NULL,
	[UserPreferencesDisMentionsCommentEmail] [tinyint] NULL,
	[UserPreferencesHideCSNDesktopTask] [tinyint] NULL,
	[UserPreferencesHideChatterOnboardingSplash] [tinyint] NULL,
	[UserPreferencesHideSecondChatterOnboardingSplash] [tinyint] NULL,
	[UserPreferencesDisCommentAfterLikeEmail] [tinyint] NULL,
	[UserPreferencesDisableLikeEmail] [tinyint] NULL,
	[UserPreferencesSortFeedByComment] [tinyint] NULL,
	[UserPreferencesDisableMessageEmail] [tinyint] NULL,
	[UserPreferencesDisableBookmarkEmail] [tinyint] NULL,
	[UserPreferencesDisableSharePostEmail] [tinyint] NULL,
	[UserPreferencesEnableAutoSubForFeeds] [tinyint] NULL,
	[UserPreferencesDisableFileShareNotificationsForApi] [tinyint] NULL,
	[UserPreferencesShowTitleToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowManagerToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowEmailToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowWorkPhoneToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowMobilePhoneToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowFaxToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowStreetAddressToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowCityToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowStateToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowPostalCodeToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowCountryToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowProfilePicToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowTitleToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowCityToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowStateToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowPostalCodeToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowCountryToGuestUsers] [tinyint] NULL,
	[UserPreferencesHideS1BrowserUI] [tinyint] NULL,
	[UserPreferencesDisableEndorsementEmail] [tinyint] NULL,
	[UserPreferencesPathAssistantCollapsed] [tinyint] NULL,
	[UserPreferencesCacheDiagnostics] [tinyint] NULL,
	[UserPreferencesShowEmailToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowManagerToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowWorkPhoneToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowMobilePhoneToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowFaxToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowStreetAddressToGuestUsers] [tinyint] NULL,
	[UserPreferencesLightningExperiencePreferred] [tinyint] NULL,
	[UserPreferencesHideEndUserOnboardingAssistantModal] [tinyint] NULL,
	[UserPreferencesHideLightningMigrationModal] [tinyint] NULL,
	[UserPreferencesHideSfxWelcomeMat] [tinyint] NULL,
	[UserPreferencesHideBiggerPhotoCallout] [tinyint] NULL,
	[UserPreferencesGlobalNavBarWTShown] [tinyint] NULL,
	[UserPreferencesGlobalNavGridMenuWTShown] [tinyint] NULL,
	[UserPreferencesCreateLEXAppsWTShown] [tinyint] NULL,
	[UserPreferencesFavoritesWTShown] [tinyint] NULL,
	[ContactId] [nvarchar](18) NULL,
	[AccountId] [nvarchar](18) NULL,
	[CallCenterId] [nvarchar](18) NULL,
	[Extension] [nvarchar](40) NULL,
	[PortalRole] [nvarchar](40) NULL,
	[IsPortalEnabled] [tinyint] NULL,
	[FederationIdentifier] [nvarchar](512) NULL,
	[AboutMe] [nvarchar](1000) NULL,
	[FullPhotoUrl] [nvarchar](1024) NULL,
	[SmallPhotoUrl] [nvarchar](1024) NULL,
	[MediumPhotoUrl] [nvarchar](1024) NULL,
	[DigestFrequency] [nvarchar](40) NULL,
	[DefaultGroupNotificationFrequency] [nvarchar](40) NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[BannerPhotoUrl] [nvarchar](1024) NULL,
	[SmallBannerPhotoUrl] [nvarchar](1024) NULL,
	[MediumBannerPhotoUrl] [nvarchar](1024) NULL,
	[IsProfilePhotoActive] [tinyint] NULL,
	[mobilecaddy1__MobileCaddy_Configuration__c] [tinyint] NULL,
	[User_Detail_Display_Label__c] [nvarchar](1300) NULL,
	[Contact_Contact_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact_External_Source_ID__c] [nvarchar](12) NULL,
	[External_Source_ID__c] [nvarchar](128) NULL,
	[User_Manager_External_Source_ID__c] [nvarchar](128) NULL,
	[Default_Account__c] [nvarchar](18) NULL,
	[Default_Account_Link__c] [nvarchar](1300) NULL,
	[Unique_Proxy_ID__c] [nvarchar](30) NULL,
	[User_Manager_Default_Account__c] [nvarchar](18) NULL,
	[Contact_Contact_Stars_Id__c] [nvarchar](16) NULL,
	[Coaching_Agency_Id__c] [nvarchar](18) NULL,
	[Coaching_Type__c] [nvarchar](500) NULL,
	[Office__c] [nvarchar](255) NULL,
	[Profile_Name__c] [nvarchar](1300) NULL,
	[Branagh_GUID__c] [nvarchar](40) NULL,
	[User_Manager_Branagh_GUID__c] [nvarchar](40) NULL,
	[WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[User_Manager_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedOn] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailSalesforceUser_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailSalesforceUser_RecordId] ON [Detail].[SalesforceUser]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [ETLConfig].[PackageLogType]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLConfig].[PackageLogType](
	[LogTypeID] [smallint] IDENTITY(1,1) NOT NULL,
	[LogType] [varchar](15) NOT NULL,
	[TypeDescription] [varchar](1000) NULL,
	[IsError] [bit] NOT NULL,
	[IsWarning] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [pkConfig_PackageLogType] PRIMARY KEY CLUSTERED 
(
	[LogTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Account]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Account](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[MasterRecordId] [nvarchar](18) NULL,
	[Name] [nvarchar](255) NULL,
	[Type] [nvarchar](40) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[ParentId] [nvarchar](18) NULL,
	[BillingStreet] [nvarchar](255) NULL,
	[BillingCity] [nvarchar](40) NULL,
	[BillingState] [nvarchar](80) NULL,
	[BillingPostalCode] [nvarchar](20) NULL,
	[BillingCountry] [nvarchar](80) NULL,
	[BillingLatitude] [float] NULL,
	[BillingLongitude] [float] NULL,
	[BillingGeocodeAccuracy] [nvarchar](40) NULL,
	[ShippingStreet] [nvarchar](255) NULL,
	[ShippingCity] [nvarchar](40) NULL,
	[ShippingState] [nvarchar](80) NULL,
	[ShippingPostalCode] [nvarchar](20) NULL,
	[ShippingCountry] [nvarchar](80) NULL,
	[ShippingLatitude] [float] NULL,
	[ShippingLongitude] [float] NULL,
	[ShippingGeocodeAccuracy] [nvarchar](40) NULL,
	[Phone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[AccountNumber] [nvarchar](40) NULL,
	[Website] [nvarchar](255) NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Sic] [nvarchar](20) NULL,
	[Industry] [nvarchar](40) NULL,
	[AnnualRevenue] [float] NULL,
	[NumberOfEmployees] [int] NULL,
	[Ownership] [nvarchar](40) NULL,
	[TickerSymbol] [nvarchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [nvarchar](40) NULL,
	[Site] [nvarchar](80) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[IsCustomerPortal] [tinyint] NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawCompanyId] [nvarchar](20) NULL,
	[AccountSource] [nvarchar](40) NULL,
	[SicDesc] [nvarchar](80) NULL,
	[Contractor_Name__c] [nvarchar](80) NULL,
	[County__c] [nvarchar](80) NULL,
	[Date_Data_last_Pulled_From_Fam_Link__c] [datetime] NULL,
	[Doing_Business_As__c] [nvarchar](128) NULL,
	[Early_Achiever_Status_Internal__c] [nvarchar](255) NULL,
	[AIAN_Early_Head_Start_Center_Based__c] [float] NULL,
	[External_Source_Id__c] [nvarchar](255) NULL,
	[FamLink_Id__c] [nvarchar](255) NULL,
	[In_ECEAP__c] [tinyint] NULL,
	[In_Esit__c] [tinyint] NULL,
	[In_Head_Start__c] [tinyint] NULL,
	[Inconclusive_Complaint_Count__c] [float] NULL,
	[Initial_License_Date__c] [datetime] NULL,
	[License_Facility_Type_Name__c] [nvarchar](255) NULL,
	[Primary_Contact_Date_of_Birth__c] [datetime] NULL,
	[Referral_Type__c] [nvarchar](20) NULL,
	[SSPS_Id__c] [nvarchar](64) NULL,
	[Source_Site_Name__c] [nvarchar](1080) NULL,
	[State_Wide_Vendor_Number_Suffix__c] [nvarchar](10) NULL,
	[State_Wide_Vendor_Number__c] [nvarchar](32) NULL,
	[Subcontractor_Name__c] [nvarchar](255) NULL,
	[Valid_Complaint_Count__c] [float] NULL,
	[Site_Structure__c] [nvarchar](255) NULL,
	[Temp_Unique_ID__c] [nvarchar](255) NULL,
	[Days_of_Operation__c] [nvarchar](max) NULL,
	[Email__c] [nvarchar](80) NULL,
	[Hours_of_Operation__c] [nvarchar](64) NULL,
	[Inactive_End_Date__c] [datetime] NULL,
	[Inactive_Start_Date__c] [datetime] NULL,
	[Is_Military__c] [tinyint] NULL,
	[Is_OSPI__c] [tinyint] NULL,
	[AIAN_Early_Head_Start_Home_Based__c] [float] NULL,
	[AIAN_Head_Start__c] [float] NULL,
	[No_Referral_Status__c] [tinyint] NULL,
	[Office__c] [nvarchar](255) NULL,
	[Operating_Status_Detail__c] [nvarchar](255) NULL,
	[Operating_Status_Reason__c] [nvarchar](255) NULL,
	[Operating_Status__c] [nvarchar](255) NULL,
	[Physical_City__c] [nvarchar](150) NULL,
	[Physical_State__c] [nvarchar](255) NULL,
	[Physical_Street__c] [nvarchar](255) NULL,
	[Physical_Zip__c] [nvarchar](10) NULL,
	[Provider_Type__c] [nvarchar](255) NULL,
	[Region__c] [nvarchar](255) NULL,
	[School_District__c] [nvarchar](255) NULL,
	[Tribal_Affiliation__c] [nvarchar](255) NULL,
	[AKA_Names__c] [nvarchar](max) NULL,
	[Ages_Served__c] [nvarchar](1300) NULL,
	[Anniversary_Date__c] [nvarchar](6) NULL,
	[Certificate_of_Occupancy__c] [datetime] NULL,
	[Count_Of_Open_Licenses__c] [float] NULL,
	[CountyId__c] [nvarchar](80) NULL,
	[Current_EA_Program_Rec_ID__c] [nvarchar](18) NULL,
	[Current_License_Status__c] [nvarchar](255) NULL,
	[Current_Primary_Contact_Display_Label__c] [nvarchar](1300) NULL,
	[Current_Primary_Contact_Email__c] [nvarchar](1300) NULL,
	[Current_Primary_Contact_Phone__c] [nvarchar](1300) NULL,
	[Current_Primary_Contact_Rec_ID__c] [nvarchar](18) NULL,
	[DEL_Licensor_Email__c] [nvarchar](225) NULL,
	[DEL_Licensor_Name__c] [nvarchar](255) NULL,
	[DEL_Licensor_Phone__c] [nvarchar](40) NULL,
	[ECEAP_Slots_Display_Label__c] [nvarchar](1300) NULL,
	[EIN_Tax_ID__c] [nvarchar](11) NULL,
	[Educational_Service_District__c] [nvarchar](255) NULL,
	[Elementary_School_Lookup__c] [nvarchar](18) NULL,
	[Ending_Age_Served_Formula__c] [nvarchar](1300) NULL,
	[Famlink_Last_Updated_By__c] [nvarchar](255) NULL,
	[Fire_Marhshal_Visit_Date__c] [datetime] NULL,
	[Has_License_Formula__c] [tinyint] NULL,
	[Health_Procedures_Reviewed_Date__c] [datetime] NULL,
	[Health_Procedures_Reviewed_Name__c] [nvarchar](255) NULL,
	[High_School_Lookup__c] [nvarchar](18) NULL,
	[Is_Elementary_School__c] [tinyint] NULL,
	[Is_High_School__c] [tinyint] NULL,
	[Is_Middle_School__c] [tinyint] NULL,
	[Latest_License_Age_Group_Served__c] [nvarchar](1300) NULL,
	[Latest_License_Capacity__c] [float] NULL,
	[Latest_License_End_Reason__c] [nvarchar](1300) NULL,
	[Latest_License_Expiration_Date__c] [datetime] NULL,
	[Latest_License_Facility_Type_Name__c] [nvarchar](1300) NULL,
	[Latest_License_ID__c] [nvarchar](1300) NULL,
	[Latest_License_Rec_ID__c] [nvarchar](18) NULL,
	[Latest_License_Start_Date__c] [datetime] NULL,
	[Latest_License_Status__c] [nvarchar](1300) NULL,
	[Latest_License_Type__c] [nvarchar](1300) NULL,
	[License_Exempt__c] [tinyint] NULL,
	[License_Facility_Type_Label__c] [nvarchar](1300) NULL,
	[Licensed_Capacity__c] [float] NULL,
	[Local_Planning_Office_Notified__c] [datetime] NULL,
	[MC_Is_Mobilized_Account__c] [tinyint] NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[Middle_School_Lookup__c] [nvarchar](18) NULL,
	[Mobilized_Provider_Case_Count__c] [float] NULL,
	[No_Referral_Begin_Date__c] [datetime] NULL,
	[No_Referral_Notes__c] [nvarchar](255) NULL,
	[No_Referral_Type__c] [nvarchar](255) NULL,
	[Office_Address_1__c] [nvarchar](1300) NULL,
	[Office_Address_2__c] [nvarchar](1300) NULL,
	[On_Tribal_Land__c] [tinyint] NULL,
	[Primary_Contact_Full_Name__c] [nvarchar](1300) NULL,
	[Primary_Contact_Phone__c] [nvarchar](1300) NULL,
	[Primary_Language__c] [nvarchar](255) NULL,
	[Provider_Details_Display_Label__c] [nvarchar](1300) NULL,
	[Provider_Location_Label__c] [nvarchar](1300) NULL,
	[Provider_Status__c] [nvarchar](255) NULL,
	[Restricted__c] [tinyint] NULL,
	[Starting_Age_Served_Formula__c] [nvarchar](1300) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[Active_Primary_Contact_Count__c] [float] NULL,
	[Total_ECEAP_Extended_Day_Slots__c] [float] NULL,
	[Total_ECEAP_Full_Day_Slots__c] [float] NULL,
	[Total_ECEAP_Part_Day_Slots__c] [float] NULL,
	[Total_HeadStart_Slots__c] [float] NULL,
	[Account_Parent_External_Source_Id__c] [nvarchar](255) NULL,
	[Program__c_Current_EA_Program_Rec_ID__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Contact_Account_Role__c_Current_Primary_Contact_Rec_ID__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Account_Elementary_School_Lookup__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Account_High_School_Lookup__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Provider_License__c_Latest_License_Rec_ID__r_External_Source_ID__c] [nvarchar](20) NULL,
	[Account_Middle_School_Lookup__r_External_Source_Id__c] [nvarchar](255) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[User_Owner_External_Source_ID__c] [nvarchar](128) NULL,
	[Opt_In_Map_View__c] [tinyint] NULL,
	[Opt_In_Physical_Street_Address__c] [tinyint] NULL,
	[Opt_in_to_Public_Search__c] [tinyint] NULL,
	[Accepted_Payment_Types__c] [nvarchar](max) NULL,
	[Accepting_New_Children__c] [nvarchar](255) NULL,
	[Account_Name_Display_Label__c] [nvarchar](1300) NULL,
	[Age_From_Normalized__c] [float] NULL,
	[Age_To_Normalized__c] [float] NULL,
	[Current_Primary_Contact_Detail_Label__c] [nvarchar](1300) NULL,
	[Current_Primary_DEL_Licensor__c] [nvarchar](18) NULL,
	[Display_on_Map_View__c] [tinyint] NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[Early_Achiever_Status_External__c] [nvarchar](1300) NULL,
	[Early_Achievers_Contact_Email__c] [nvarchar](80) NULL,
	[Early_Achievers_Contact_Name__c] [nvarchar](255) NULL,
	[Early_Achievers_Contact_Phone__c] [nvarchar](40) NULL,
	[End_Time_Fri__c] [nvarchar](255) NULL,
	[End_Time_Mon__c] [nvarchar](255) NULL,
	[End_Time_Sat__c] [nvarchar](255) NULL,
	[End_Time_Sun__c] [nvarchar](255) NULL,
	[End_Time_Thu__c] [nvarchar](255) NULL,
	[End_Time_Tue__c] [nvarchar](255) NULL,
	[End_Time_Wed__c] [nvarchar](255) NULL,
	[Hours_of_Operation_Fri__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Mon__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Sat__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Sun__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Thu__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Tue__c] [nvarchar](1300) NULL,
	[Hours_of_Operation_Wed__c] [nvarchar](1300) NULL,
	[Is_Funded_ECEAP__c] [nvarchar](1300) NULL,
	[Is_Funded_EHS__c] [nvarchar](1300) NULL,
	[Is_Funded_HS__c] [nvarchar](1300) NULL,
	[Languages_Spoken__c] [nvarchar](max) NULL,
	[Latest_License_Sub_Type__c] [nvarchar](1300) NULL,
	[Low_Income_Children_Served__c] [tinyint] NULL,
	[PS_Provider_ContactUs_Label__c] [nvarchar](1300) NULL,
	[Phone_Normalized__c] [nvarchar](1300) NULL,
	[Physical_County__c] [nvarchar](255) NULL,
	[Physical_Geolocation__Latitude__s] [float] NULL,
	[Physical_Geolocation__Longitude__s] [float] NULL,
	[Physical_Street_Display_Label__c] [nvarchar](1300) NULL,
	[Physical_Street_Intersection_Label__c] [nvarchar](255) NULL,
	[Provider_Logo__c] [nvarchar](max) NULL,
	[Provider_Name_Display_Label__c] [nvarchar](1300) NULL,
	[Provider_Self_Description__c] [nvarchar](2056) NULL,
	[Provider_Stage__c] [nvarchar](255) NULL,
	[Schedules_Of_Operation__c] [nvarchar](max) NULL,
	[Start_Time_Fri__c] [nvarchar](255) NULL,
	[Start_Time_Mon__c] [nvarchar](255) NULL,
	[Start_Time_Sat__c] [nvarchar](255) NULL,
	[Start_Time_Sun__c] [nvarchar](255) NULL,
	[Start_Time_Thu__c] [nvarchar](255) NULL,
	[Start_Time_Tue__c] [nvarchar](255) NULL,
	[Start_Time_Wed__c] [nvarchar](255) NULL,
	[Tier1_Food_Program__c] [tinyint] NULL,
	[Total_Classroom_Count__c] [float] NULL,
	[Total_ECEAP_Extended_Day_SlotsOld__c] [float] NULL,
	[Total_ECEAP_Full_Day_Slotsold__c] [float] NULL,
	[Total_ECEAP_Full_Slots__c] [float] NULL,
	[Total_ECEAP_Part_Day_Slotsold__c] [float] NULL,
	[Total_ECEAP_Part_Slots__c] [float] NULL,
	[Total_Early_Head_Start_Program_Slots__c] [float] NULL,
	[Total_HeadStart_Slotsold__c] [float] NULL,
	[Total_Head_Start_Slots__c] [float] NULL,
	[Custom_Account_Team__c_Current_Primary_DEL_Licensor__r_External_Source_ID__c] [nvarchar](40) NULL,
	[Latest_License_Certificate_Type__c] [nvarchar](1300) NULL,
	[Latest_License_Created_Date__c] [nvarchar](1300) NULL,
	[Owner_Id__c] [nvarchar](1300) NULL,
	[Office_Fax__c] [nvarchar](1300) NULL,
	[Office_Phone__c] [nvarchar](1300) NULL,
	[latest_license_external_source_id__c] [nvarchar](1300) NULL,
	[Latest_License_End_Category__c] [nvarchar](1300) NULL,
	[Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Parent_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Elementary_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_High_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Middle_School_Lookup__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Early_Achiever_Pathway__c] [nvarchar](255) NULL,
	[Early_Achievers_Areas_Of_Specialization__c] [nvarchar](1300) NULL,
	[School_Year_End_date__c] [datetime] NULL,
	[School_Year_Start_Date__c] [datetime] NULL,
	[Office_Mailing_Address_2__c] [nvarchar](1300) NULL,
	[Office_Mailing_Address__c] [nvarchar](1300) NULL,
	[Accepts_Full_Time_Students__c] [tinyint] NULL,
	[Accepts_Part_Time_Students__c] [tinyint] NULL,
	[Account_Id__c] [nvarchar](1300) NULL,
	[VIP_Template__c] [nvarchar](18) NULL,
	[Branagh_GUID__c] [nvarchar](64) NULL,
	[Coaching_Agency__c] [nvarchar](18) NULL,
	[Count_QIP__c] [float] NULL,
	[Current_Early_Achievers_Enroll_Date__c] [datetime] NULL,
	[Evening_and_Overnight_Care__c] [tinyint] NULL,
	[HS_ECEAP_Org_ID__c] [nvarchar](255) NULL,
	[Is_NBG_Eligible__c] [tinyint] NULL,
	[Is_NBG_New_App_Eligible__c] [tinyint] NULL,
	[Is_Tribal_Provider__c] [tinyint] NULL,
	[Licensing_Orientation_1_Date__c] [datetime] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[Licensing_Orientation_Status__c] [nvarchar](1300) NULL,
	[MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[NBG_In_Progress_Application_Count__c] [float] NULL,
	[NBG_Override_Paid_Restriction__c] [tinyint] NULL,
	[Open_Year_Round__c] [tinyint] NULL,
	[PP_Total_Login_Count__c] [float] NULL,
	[PP_Total_Unique_Login_Count__c] [float] NULL,
	[PP_Unique_Contact_Count__c] [float] NULL,
	[Provider_Logo_Approved__c] [tinyint] NULL,
	[Provider_Logo_Needs_Approval__c] [tinyint] NULL,
	[Provider_Logo_Pending__c] [nvarchar](max) NULL,
	[Provider_Portal_Physical_Address_Label__c] [nvarchar](1300) NULL,
	[Provider_Self_Description_Approved__c] [tinyint] NULL,
	[Provider_Self_Description_Needs_Review__c] [tinyint] NULL,
	[Provider_Self_Description_Pending__c] [nvarchar](2056) NULL,
	[Quality_Rating__c] [float] NULL,
	[Referral_Status__c] [nvarchar](255) NULL,
	[Same_Mon_to_Fri__c] [tinyint] NULL,
	[School_District_Lkp__c] [nvarchar](18) NULL,
	[School_Year_Days_Closed__c] [float] NULL,
	[State_Wide_Vendor_Number_Label__c] [nvarchar](1300) NULL,
	[Subsidy_Indicator_Status__c] [nvarchar](15) NULL,
	[Subsidy_Initial_Date__c] [datetime] NULL,
	[Subsidy_Last_Date__c] [datetime] NULL,
	[Total_NBG_Amount__c] [float] NULL,
	[Initial_Early_Achievers_Enroll_Date__c] [datetime] NULL,
	[Latest_Lic_Orientation1_CAR__c] [datetime] NULL,
	[Latest_Lic_Orientation2_CAR__c] [datetime] NULL,
	[Latest_Licensing_Orientation_1__c] [datetime] NULL,
	[Latest_Licensing_Orientation_2__c] [datetime] NULL,
	[PP_CAR_Login_Count__c] [float] NULL,
	[PP_Emp_Login_Count__c] [float] NULL,
	[Total_ECEAP_Extended_Slots__c] [float] NULL,
	[Account_Parent_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Parent_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[User_Owner_Branagh_GUID__c] [nvarchar](40) NULL,
	[User_Owner_Default_Account__c] [nvarchar](18) NULL,
	[User_Owner_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Account_Elementary_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Elementary_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Account_High_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_High_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Account_Middle_School_Lookup__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Middle_School_Lookup__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[Account_Coaching_Agency__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Account_Coaching_Agency__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Account_Coaching_Agency__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Coaching_Agency__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[School_District_Library__c_School_District_Lkp__r_External_Source_ID__c] [nvarchar](64) NULL,
	[Languages_of_Instruction__c] [nvarchar](max) NULL,
	[Provider_Status_External__c] [nvarchar](1300) NULL,
	[EA_Disqual_Case_Exists__c] [tinyint] NULL,
	[Early_Achiever_Status_Search__c] [nvarchar](1300) NULL,
	[Early_Achievers_Tab_Visible__c] [tinyint] NULL,
	[Program_Participant__c] [nvarchar](250) NULL,
	[Provider_Logo_Approved_Email_Sent__c] [tinyint] NULL,
	[Provider_Schedule_Approved_Email_Sent__c] [tinyint] NULL,
	[Provider_Self_Description_Approved_Email__c] [tinyint] NULL,
	[School_Year__c] [tinyint] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[Covid_19_Closure__c] [bit] NULL,
	[Total_Available_Slots__c] [decimal](18, 0) NULL,
	[Provider_Slot_Availability__c] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Contact]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Contact](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[MasterRecordId] [nvarchar](18) NULL,
	[AccountId] [nvarchar](18) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Salutation] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[OtherStreet] [nvarchar](255) NULL,
	[OtherCity] [nvarchar](40) NULL,
	[OtherState] [nvarchar](80) NULL,
	[OtherPostalCode] [nvarchar](20) NULL,
	[OtherCountry] [nvarchar](80) NULL,
	[OtherLatitude] [float] NULL,
	[OtherLongitude] [float] NULL,
	[OtherGeocodeAccuracy] [nvarchar](40) NULL,
	[MailingStreet] [nvarchar](255) NULL,
	[MailingCity] [nvarchar](40) NULL,
	[MailingState] [nvarchar](80) NULL,
	[MailingPostalCode] [nvarchar](20) NULL,
	[MailingCountry] [nvarchar](80) NULL,
	[MailingLatitude] [float] NULL,
	[MailingLongitude] [float] NULL,
	[MailingGeocodeAccuracy] [nvarchar](40) NULL,
	[Phone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[HomePhone] [nvarchar](40) NULL,
	[OtherPhone] [nvarchar](40) NULL,
	[AssistantPhone] [nvarchar](40) NULL,
	[ReportsToId] [nvarchar](18) NULL,
	[Email] [nvarchar](80) NULL,
	[Title] [nvarchar](128) NULL,
	[Department] [nvarchar](80) NULL,
	[AssistantName] [nvarchar](40) NULL,
	[LeadSource] [nvarchar](40) NULL,
	[Birthdate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[HasOptedOutOfEmail] [tinyint] NULL,
	[HasOptedOutOfFax] [tinyint] NULL,
	[DoNotCall] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastCURequestDate] [datetime] NULL,
	[LastCUUpdateDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[EmailBouncedReason] [nvarchar](255) NULL,
	[EmailBouncedDate] [datetime] NULL,
	[IsEmailBounced] [tinyint] NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawContactId] [nvarchar](20) NULL,
	[Active_Flag__c] [tinyint] NULL,
	[Alias_First_Name__c] [nvarchar](80) NULL,
	[Alias_Last_Name__c] [nvarchar](80) NULL,
	[Alias_Middle_Name__c] [nvarchar](80) NULL,
	[Alias_Verified__c] [tinyint] NULL,
	[Alternate_Email__c] [nvarchar](128) NULL,
	[Birth_Month_Day__c] [nvarchar](32) NULL,
	[Current_PBC_Expiration_Date__c] [datetime] NULL,
	[Current_PBC_Status_Date__c] [datetime] NULL,
	[Current_PBC_Status__c] [nvarchar](255) NULL,
	[Ethnicity_Name__c] [nvarchar](255) NULL,
	[Gender__c] [nvarchar](6) NULL,
	[Last_Submitted_PBC_Date__c] [datetime] NULL,
	[Last_WebAuth_Login_DT__c] [datetime] NULL,
	[Maiden_Name__c] [nvarchar](25) NULL,
	[Mailing_County__c] [nvarchar](128) NULL,
	[Middle_Name__c] [nvarchar](80) NULL,
	[Preferred_Communication_Channel__c] [nvarchar](255) NULL,
	[Preferred_Language__c] [nvarchar](255) NULL,
	[Primary_Language__c] [nvarchar](128) NULL,
	[Race_Name__c] [nvarchar](255) NULL,
	[Secondary_Language__c] [nvarchar](128) NULL,
	[Stars_Id__c] [nvarchar](16) NULL,
	[State_Wide_Vendor_Nbr_Suffix__c] [nvarchar](2) NULL,
	[State_Wide_Vendor_Number__c] [nvarchar](32) NULL,
	[WebAuth_Account_Activation_Flag__c] [tinyint] NULL,
	[WebAuth_Adult_Signature_Date__c] [datetime] NULL,
	[WebAuth_Adult_Signature__c] [nvarchar](255) NULL,
	[WebAuth_Create_Date__c] [datetime] NULL,
	[WebAuth_DEL_Staff_Flag__c] [tinyint] NULL,
	[WebAuth_Locked_Flag__c] [tinyint] NULL,
	[WebAuth_Modified_Date__c] [datetime] NULL,
	[WebAuth_Must_Chg_Pwd_Flag__c] [tinyint] NULL,
	[WebAuth_Offline_User_Flag__c] [tinyint] NULL,
	[WebAuth_User_Id__c] [nvarchar](255) NULL,
	[WebAuth_Username__c] [nvarchar](128) NULL,
	[MERIT_Unique_User_ID__c] [nvarchar](255) NULL,
	[Last_Submitted_PBC_Status__c] [nvarchar](255) NULL,
	[External_Source_ID__c] [nvarchar](12) NULL,
	[Employee_Violation_Count__c] [float] NULL,
	[PBC_Expiration_Date__c] [datetime] NULL,
	[PBC_Status__c] [nvarchar](255) NULL,
	[BBP_AIDS_Training_Completion_Date__c] [datetime] NULL,
	[BBP_AIDS_Training_Expiration_Date__c] [datetime] NULL,
	[BBP_AIDS_Training_Status__c] [nvarchar](255) NULL,
	[CPR_Certification_Expiration_Date__c] [datetime] NULL,
	[CPR_Certification_Status__c] [nvarchar](255) NULL,
	[CPR_Child_Adult_Cert_Completion_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Comp_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Expr_Date__c] [datetime] NULL,
	[CPR_Infant_Child_Adult_Cert_Status__c] [nvarchar](255) NULL,
	[Contact_Display_Label__c] [nvarchar](1300) NULL,
	[First_Aid_Expiration_Date__c] [datetime] NULL,
	[Food_Handler_Permit_Expiration_Date__c] [datetime] NULL,
	[Food_Handlers_Permit_Completion_Date__c] [datetime] NULL,
	[Food_Handlers_Permit_Expiration_Date__c] [datetime] NULL,
	[Food_Worker_Card_Expiration_Date__c] [datetime] NULL,
	[Health_and_Safety_Violation_Count__c] [float] NULL,
	[Licensing_Orientation_Date__c] [datetime] NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[Mailing_Street_2__c] [nvarchar](120) NULL,
	[Restricted__c] [tinyint] NULL,
	[Safe_Sleep_Completion_Date__c] [datetime] NULL,
	[Safe_Sleep_Expiration_Date__c] [datetime] NULL,
	[Social_Security_Number__c] [nvarchar](11) NULL,
	[TB_Completion_Date__c] [datetime] NULL,
	[TB_Expiration_Date__c] [datetime] NULL,
	[TB_Status__c] [nvarchar](255) NULL,
	[Account_Account_External_Source_Id__c] [nvarchar](255) NULL,
	[Contact_ReportsTo_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_ReportsTo_External_Source_ID__c] [nvarchar](12) NULL,
	[User_Owner_External_Source_ID__c] [nvarchar](128) NULL,
	[Account_Account_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Contact_ReportsTo_Stars_Id__c] [nvarchar](16) NULL,
	[Degree__c] [nvarchar](255) NULL,
	[Count_of_Training_Completed__c] [float] NULL,
	[Highest_ECE_Education__c] [nvarchar](18) NULL,
	[PBC_Expired__c] [tinyint] NULL,
	[PD_Points__c] [float] NULL,
	[PP_Display_Label__c] [nvarchar](1300) NULL,
	[PP_Total_Login_Count__c] [float] NULL,
	[PP_Total_Unique_Login_Count__c] [float] NULL,
	[PP_Unique_Provider_Count__c] [float] NULL,
	[Latest_Licensing_Orientation_1__c] [datetime] NULL,
	[Latest_Licensing_Orientation_2__c] [datetime] NULL,
	[PP_CAR_Login_Count__c] [float] NULL,
	[PP_Emp_Login_Count__c] [float] NULL,
	[Account_Account_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Account_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[User_Owner_Branagh_GUID__c] [nvarchar](40) NULL,
	[User_Owner_Default_Account__c] [nvarchar](18) NULL,
	[User_Owner_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Education__c_Highest_ECE_Education__r_External_Source_ID__c] [nvarchar](64) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Contact_Account_Role__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Contact_Account_Role__c](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Account__c] [nvarchar](18) NULL,
	[Contact__c] [nvarchar](18) NULL,
	[Affiliation_Type__c] [nvarchar](255) NULL,
	[External_Source_Id__c] [nvarchar](255) NULL,
	[Date_Last_Modified_at_Source__c] [datetime] NULL,
	[Program__c] [nvarchar](18) NULL,
	[Contact_Birthday__c] [datetime] NULL,
	[Contact_Email__c] [nvarchar](1300) NULL,
	[Contact_Name__c] [nvarchar](1300) NULL,
	[Contact_Phone__c] [nvarchar](1300) NULL,
	[Contact_Title__c] [nvarchar](1300) NULL,
	[End_Date__c] [datetime] NULL,
	[MC_Account_OwnerID__c] [nvarchar](1300) NULL,
	[MC_Is_Mobilized_Account__c] [tinyint] NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_External_Source_ID__c] [nvarchar](12) NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Contact_Contact__r_Stars_Id__c] [nvarchar](16) NULL,
	[Display_On_Public_Search__c] [tinyint] NULL,
	[Account_DBA__c] [nvarchar](1300) NULL,
	[Account_ECEAP_Extended_Slots__c] [float] NULL,
	[Account_ECEAP_Full_Slots__c] [float] NULL,
	[Account_ECEAP_Part_Slots__c] [float] NULL,
	[Account_Name__c] [nvarchar](1300) NULL,
	[Account_Record_ID__c] [nvarchar](1300) NULL,
	[Account_URL__c] [nvarchar](1300) NULL,
	[Coaching_Participant_Search_Label__c] [nvarchar](1300) NULL,
	[Contact_Name_With_Stars_ID_Label__c] [nvarchar](1300) NULL,
	[Latest_Licensing_Orientation1__c] [datetime] NULL,
	[Latest_Licensing_Orientation2__c] [datetime] NULL,
	[MC_CLASS_Account_OwnerID__c] [nvarchar](1300) NULL,
	[MC_Is_CLASS_Mobilized_Account__c] [tinyint] NULL,
	[PP_Login_Is_Visible__c] [tinyint] NULL,
	[PP_Login_Status__c] [nvarchar](255) NULL,
	[PP_Show_on_Contact_List__c] [tinyint] NULL,
	[STARS_ID__c] [nvarchar](1300) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Contact_Preferred_Language__c] [nvarchar](1300) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Electronic_Attendance_Systems__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Electronic_Attendance_Systems__c](
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Address_1__c] [nvarchar](100) NULL,
	[Address_2__c] [nvarchar](100) NULL,
	[City__c] [nvarchar](50) NULL,
	[Company_URL__c] [nvarchar](255) NULL,
	[Contact_Email__c] [nvarchar](80) NULL,
	[Contact_Name__c] [nvarchar](50) NULL,
	[Contact_Phone__c] [nvarchar](40) NULL,
	[Product_Description__c] [nvarchar](255) NULL,
	[Product_Name__c] [nvarchar](100) NULL,
	[Product_URL__c] [nvarchar](255) NULL,
	[State__c] [nvarchar](50) NULL,
	[Validated_for_Attendance__c] [nvarchar](255) NULL,
	[Zip__c] [nvarchar](5) NULL,
	[Product_Comments__c] [nvarchar](max) NULL,
	[Validation_Status__c] [nvarchar](max) NULL,
	[Contact_Comments__c] [nvarchar](max) NULL,
	[Interface_Comments__c] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Lead]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Lead](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[MasterRecordId] [nvarchar](18) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Salutation] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Title] [nvarchar](128) NULL,
	[Company] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](80) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](80) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[GeocodeAccuracy] [nvarchar](40) NULL,
	[Phone] [nvarchar](40) NULL,
	[Email] [nvarchar](80) NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[LeadSource] [nvarchar](40) NULL,
	[Status] [nvarchar](40) NULL,
	[Industry] [nvarchar](40) NULL,
	[NumberOfEmployees] [int] NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsConverted] [tinyint] NULL,
	[ConvertedDate] [datetime] NULL,
	[ConvertedAccountId] [nvarchar](18) NULL,
	[ConvertedContactId] [nvarchar](18) NULL,
	[ConvertedOpportunityId] [nvarchar](18) NULL,
	[IsUnreadByOwner] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Jigsaw] [nvarchar](20) NULL,
	[JigsawContactId] [nvarchar](20) NULL,
	[EmailBouncedReason] [nvarchar](255) NULL,
	[EmailBouncedDate] [datetime] NULL,
	[County__c] [nvarchar](255) NULL,
	[Lead_Owner_Email__c] [nvarchar](1300) NULL,
	[Lead_Validation_Code__c] [nvarchar](128) NULL,
	[Licensing_Office_Library__c] [nvarchar](18) NULL,
	[Licensing_Office__c] [nvarchar](255) NULL,
	[Licensing_Orientation1_Aging__c] [float] NULL,
	[Licensing_Orientation1_Date__c] [datetime] NULL,
	[Licensing_Orientation2_Aging__c] [float] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[Potential_License_Facility_Type__c] [nvarchar](255) NULL,
	[Region__c] [nvarchar](255) NULL,
	[Scheduled_Orientation_Date_1__c] [datetime] NULL,
	[Scheduled_Orientation_Date_2__c] [datetime] NULL,
	[Additional_Children__c] [nvarchar](255) NULL,
	[Birthdate__c] [datetime] NULL,
	[Ethnic_Background_Other__c] [nvarchar](50) NULL,
	[Ethnic_Background__c] [nvarchar](max) NULL,
	[Interpreter_Needed__c] [nvarchar](255) NULL,
	[Languages_Spoken__c] [nvarchar](1300) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Mailing_Address__c] [nvarchar](100) NULL,
	[Mailing_Address_different_than_Street__c] [tinyint] NULL,
	[Mailing_City__c] [nvarchar](80) NULL,
	[Mailing_County__c] [nvarchar](255) NULL,
	[Mailing_State__c] [nvarchar](2) NULL,
	[Mailing_Zip_Code__c] [nvarchar](10) NULL,
	[Middle_Initial__c] [nvarchar](1) NULL,
	[Number_of_Children__c] [nvarchar](255) NULL,
	[Primary_Language__c] [nvarchar](255) NULL,
	[SSN__c] [nvarchar](11) NULL,
	[Secondary_Language__c] [nvarchar](255) NULL,
	[Total_Invalid_SU_App__c] [float] NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](255) NULL,
	[VIP_Form_Template__c] [nvarchar](18) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[Ethnicity_Name__c] [nvarchar](255) NULL,
	[FFN_Exists__c] [tinyint] NULL,
	[Race_Name__c] [nvarchar](255) NULL,
	[Signature_on_Paper_Copy__c] [tinyint] NULL,
	[Updates_Needed_Details__c] [nvarchar](255) NULL,
	[Total_Number_of_Families__c] [float] NULL,
	[Total_Valid_SU_Apps__c] [float] NULL,
	[Zip_Code_Library__c_Licensing_Office_Library__r_External_Source_ID__c] [nvarchar](20) NULL,
	[VIPForm__VIP_Template__c_VIP_Form_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[Website] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [nvarchar](40) NULL,
	[AnnualRevenue] [float] NULL,
	[HasOptedOutOfEmail] [tinyint] NULL,
	[DoNotCall] [tinyint] NULL,
	[HasOptedOutOfFax] [tinyint] NULL,
	[LastTransferDate] [datetime] NULL,
	[Relatiive_to_Child_ren__c] [nvarchar](255) NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Lead_Associate__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Lead_Associate__c](
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Email__c] [nvarchar](80) NULL,
	[External_Source_ID__c] [nvarchar](64) NULL,
	[First_Name__c] [nvarchar](40) NULL,
	[Last_Name__c] [nvarchar](128) NULL,
	[Lead__c] [nvarchar](18) NULL,
	[Licensing_Orientation_1_Date__c] [datetime] NULL,
	[Licensing_Orientation_2_Date__c] [datetime] NULL,
	[Middle_Name__c] [nvarchar](40) NULL,
	[Phone__c] [nvarchar](40) NULL,
	[Physical_City__c] [nvarchar](64) NULL,
	[Physical_State__c] [nvarchar](2) NULL,
	[Physical_Street__c] [nvarchar](255) NULL,
	[Physical_Zipcode__c] [nvarchar](10) NULL,
	[Relationship_Type__c] [nvarchar](255) NULL,
	[Birthdate__c] [datetime] NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Relationship_to_Provider__c] [nvarchar](50) NULL,
	[Parent_Lead_Associate__c] [nvarchar](18) NULL,
	[SU_App__c] [nvarchar](10) NULL,
	[Status__c] [nvarchar](255) NULL,
	[Public_Lead__c] [nvarchar](18) NULL,
	[VIP_Is_Record_Type_Household_Member__c] [tinyint] NULL,
	[VIP_Is_Record_Type_LE_Consumer__c] [tinyint] NULL,
	[Lead_Lead__r_Lead_Validation_Code__c] [nvarchar](128) NULL,
	[Lead_Associate__c_Parent_Lead_Associate__r_External_Source_ID__c] [nvarchar](64) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Program__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Program__c](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Account__c] [nvarchar](18) NULL,
	[AIAN_Early_Head_Start_Center_Based__c] [float] NULL,
	[AIAN_Early_Head_Start_Home_Based__c] [float] NULL,
	[AIAN_Head_Start__c] [float] NULL,
	[ECEAP_Enrollment_Email__c] [nvarchar](255) NULL,
	[ECEAP_Enrollment_Phone__c] [nvarchar](64) NULL,
	[ECEAP_Id__c] [nvarchar](50) NULL,
	[ECEAP_Program_Year__c] [nvarchar](128) NULL,
	[Early_Head_Start_Center_Based__c] [float] NULL,
	[Early_Head_Start_Home_Based__c] [float] NULL,
	[Early_Head_Start_Program_Slots__c] [float] NULL,
	[External_Source_ID__c] [nvarchar](128) NULL,
	[Head_Start_Id__c] [nvarchar](50) NULL,
	[Head_Start__c] [float] NULL,
	[Migrant_Seasonal_Head_Start__c] [float] NULL,
	[Program_Year_Start__c] [datetime] NULL,
	[Program_Year_End__c] [datetime] NULL,
	[AIAN_Early_Head_Start_Center_Based_Slots__c] [float] NULL,
	[AIAN_Early_Head_Start_Home_Based_Slots__c] [float] NULL,
	[AIAN_Head_Start_Slots__c] [float] NULL,
	[ECEAP_Extended_Day_Slots__c] [float] NULL,
	[ECEAP_Full_Day_Slots__c] [float] NULL,
	[ECEAP_Part_Day_Slots__c] [float] NULL,
	[EHS_CC_Partnership_Slots__c] [float] NULL,
	[Early_Achiever_Status_External__c] [nvarchar](255) NULL,
	[Early_Achiever_Status_Internal__c] [nvarchar](255) NULL,
	[Early_Achievers_Areas_Of_Specialization__c] [nvarchar](max) NULL,
	[Early_Achievers_Opt_Out__c] [tinyint] NULL,
	[Early_Achievers_Program_Description__c] [nvarchar](2056) NULL,
	[Early_Head_Start_Center_Based_Slots__c] [float] NULL,
	[Early_Head_Start_Home_Based_Slots__c] [float] NULL,
	[Effective_Datetime__c] [datetime] NULL,
	[Head_Start_Slots__c] [float] NULL,
	[Migrant_Seasonal_Early_Head_Start_Slots__c] [float] NULL,
	[Migrant_Seasonal_Head_Start_Slots__c] [float] NULL,
	[Program_ID__c] [nvarchar](1300) NULL,
	[Program_Type__c] [nvarchar](255) NULL,
	[Total_Funded_Slots_DisplayLabel__c] [float] NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Approved_for_Attendance__c] [nvarchar](1300) NULL,
	[Program_End__c] [datetime] NULL,
	[Program_Start__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Electronic_Attendance_System__c] [nvarchar](18) NULL,
	[EA_Latest_Enrollment_Date__c] [datetime] NULL,
	[EA_Progress_Label__c] [nvarchar](1300) NULL,
	[EA_Withdraw_Date__c] [datetime] NULL,
	[ECEAP_no_Early_Achievers_Sent__c] [tinyint] NULL,
	[Quality_Rating_In_Progress_Count__c] [float] NULL,
	[Record_Type_Label__c] [nvarchar](1300) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Days_of_EA_enrollment__c] [float] NULL,
	[EA_Areas_of_Specialization_Label__c] [nvarchar](255) NULL,
	[EA_Level_2_Completion_Email_Sent__c] [tinyint] NULL,
	[EA_Withdrawl_Email_Sent__c] [tinyint] NULL,
	[EA_enrolled_15_months_not_Level_2_Email__c] [tinyint] NULL,
	[EA_enrolled_9_months_not_Level_2_Email__c] [tinyint] NULL,
	[Enrolled_in_EA_6_months_not_L2_email__c] [tinyint] NULL,
	[Latest_Quality_Rating_Expiration_Date__c] [datetime] NULL,
	[TR_30_Month_Reminder_Email_Sent__c] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[EAS_ETR_Approval_End_Date__c] [datetime] NULL,
	[EAS_ETR_Approval_Start_Date__c] [datetime] NULL,
	[EAS_ETR_Approval_Type__c] [nvarchar](255) NULL,
	[EAS_ETR_Approved_Date__c] [datetime] NULL,
	[EAS_ETR_Denied_Date__c] [datetime] NULL,
	[EAS_ETR_Received_Date__c] [datetime] NULL,
	[EAS_ETR_Status__c] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Provider_Case__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Provider_Case__c](
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[Account_Latest_License_ID__c] [nvarchar](1300) NULL,
	[Account_Latest_License_Status__c] [nvarchar](1300) NULL,
	[Account_License_Facility_Type_Name__c] [nvarchar](1300) NULL,
	[Account_Name__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address_1__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address_2__c] [nvarchar](1300) NULL,
	[Account_Shipping_Address__c] [nvarchar](1300) NULL,
	[Account__c] [nvarchar](18) NULL,
	[Adverse_Action_Outcome__c] [nvarchar](255) NULL,
	[Age_Range__c] [nvarchar](1300) NULL,
	[Agree_to_correct_issues__c] [tinyint] NULL,
	[Agree_to_correct_issues_frmla__c] [nvarchar](1300) NULL,
	[All_Journey_Action_Completed__c] [tinyint] NULL,
	[Anniversary_Date__c] [nvarchar](1300) NULL,
	[Appeal_End_Date__c] [datetime] NULL,
	[Appeal_Start_Date__c] [datetime] NULL,
	[Approved_By_Supervisor__c] [tinyint] NULL,
	[Background_Checks__c] [tinyint] NULL,
	[COE_Facility_Closed__c] [tinyint] NULL,
	[CPS_Status__c] [nvarchar](255) NULL,
	[Case_Sub_Type__c] [nvarchar](255) NULL,
	[Checklist_Field_Retrieve_End__c] [datetime] NULL,
	[Completed_Date__c] [datetime] NULL,
	[Compliance_Percent_Complete__c] [float] NULL,
	[Current_Provider_License_SF_ID__c] [nvarchar](1300) NULL,
	[Date_Probation_Revoked__c] [datetime] NULL,
	[Days_Til_Due__c] [float] NULL,
	[Days_of_Operation__c] [nvarchar](1300) NULL,
	[Declaration_Received_Date__c] [datetime] NULL,
	[Declaration_Received__c] [tinyint] NULL,
	[Description__c] [nvarchar](255) NULL,
	[Documentation_Requested__c] [nvarchar](max) NULL,
	[Doing_Business_As__c] [nvarchar](1300) NULL,
	[Due_Date__c] [datetime] NULL,
	[Expiration_Date__c] [nvarchar](1300) NULL,
	[External_Source_ID__c] [nvarchar](255) NULL,
	[Fees_Paid__c] [tinyint] NULL,
	[Final_Checklist_Type__c] [nvarchar](255) NULL,
	[Finding_Letter_Sent__c] [tinyint] NULL,
	[Fire_Marshal_Visit_Confirmation__c] [datetime] NULL,
	[Fire_Marshal_Visit__c] [datetime] NULL,
	[Hours_of_Operation__c] [nvarchar](1300) NULL,
	[Ignore_Trigger__c] [tinyint] NULL,
	[In_Approval_Proces__c] [tinyint] NULL,
	[Intake_Management_Complaint__c] [tinyint] NULL,
	[Is_Mobilized__c] [tinyint] NULL,
	[JB_Passed_Fire_Inspection__c] [datetime] NULL,
	[JB_Scheduled_First_Initial_License_Visit__c] [datetime] NULL,
	[JB_Scheduled_Second_Initial_Visit__c] [datetime] NULL,
	[Latest_License_Id__c] [nvarchar](1300) NULL,
	[Legal_Text_Type__c] [nvarchar](255) NULL,
	[License_Capacity__c] [nvarchar](1300) NULL,
	[License_Issue_Date__c] [nvarchar](1300) NULL,
	[License_Status__c] [nvarchar](1300) NULL,
	[License_Type__c] [nvarchar](1300) NULL,
	[Licensee_Refused_to_Sign__c] [tinyint] NULL,
	[Licensee_Signature_Date__c] [datetime] NULL,
	[Licensee_Signature__c] [nvarchar](max) NULL,
	[Licensee_Signee_Name__c] [nvarchar](255) NULL,
	[Licensor_Signature_Date__c] [datetime] NULL,
	[Licensor_Signature__c] [nvarchar](max) NULL,
	[Licensor_Signee_Name__c] [nvarchar](45) NULL,
	[MC_Proxy_ID__c] [nvarchar](255) NULL,
	[My_Mobilized_Ind__c] [tinyint] NULL,
	[Not_Citable_Valid_Violation_Count__c] [float] NULL,
	[Office_Address_1__c] [nvarchar](1300) NULL,
	[Office_Address_2__c] [nvarchar](1300) NULL,
	[Original_Checklist_Type__c] [nvarchar](255) NULL,
	[Owner_Email__c] [nvarchar](1300) NULL,
	[Owner_Name__c] [nvarchar](1300) NULL,
	[Owner_Phone_Number__c] [nvarchar](1300) NULL,
	[Physical_Address_2__c] [nvarchar](1300) NULL,
	[Physical_Address__c] [nvarchar](1300) NULL,
	[Primary_Contact_Email__c] [nvarchar](1300) NULL,
	[Primary_Contact_Name__c] [nvarchar](1300) NULL,
	[Primary_Contact_Phone__c] [nvarchar](1300) NULL,
	[Probation_Meeting_Request__c] [datetime] NULL,
	[Provider_Address1__c] [nvarchar](1300) NULL,
	[Provider_Address2__c] [nvarchar](1300) NULL,
	[Provider_Address3__c] [nvarchar](1300) NULL,
	[Provider_Address4__c] [nvarchar](1300) NULL,
	[Provider_Address__c] [nvarchar](1300) NULL,
	[Provider_ID__c] [nvarchar](1300) NULL,
	[Provider_Name__c] [nvarchar](1300) NULL,
	[Provider_Shipping_Address__c] [nvarchar](1300) NULL,
	[RecordType_Name__c] [nvarchar](1300) NULL,
	[Record_Sync_Status__c] [nvarchar](255) NULL,
	[Referral_Status__c] [nvarchar](1300) NULL,
	[Removed_Violation_Count__c] [float] NULL,
	[Restricted__c] [tinyint] NULL,
	[Result__c] [nvarchar](255) NULL,
	[Scheduled_Fourth_Initial_License_Visit__c] [datetime] NULL,
	[Scheduled_Initial_to_Full_Visit__c] [datetime] NULL,
	[Scheduled_Third_Initial_License_Visit__c] [datetime] NULL,
	[Send_to_Public_Portal__c] [tinyint] NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Submitted__c] [tinyint] NULL,
	[Summary_Observation_Count__c] [float] NULL,
	[Summary__c] [nvarchar](max) NULL,
	[Supervisor_Approval__c] [nvarchar](255) NULL,
	[Supervisor_Dispute_Ruling__c] [nvarchar](255) NULL,
	[Supervisory_Dispute_Ruling__c] [nvarchar](255) NULL,
	[Supervisory_Reviewer1__c] [nvarchar](18) NULL,
	[Supervisory_Reviewer2__c] [nvarchar](18) NULL,
	[Supervisory_Reviewer3__c] [nvarchar](18) NULL,
	[Technical_Assistance_Help__c] [tinyint] NULL,
	[Technical_Assistance_Help_frmla__c] [nvarchar](1300) NULL,
	[Total_Disputed_Violation_Count__c] [float] NULL,
	[Total_Not_Valid_Violations__c] [float] NULL,
	[Total_Violation_Count__c] [float] NULL,
	[Translation_Services_Requested__c] [tinyint] NULL,
	[Translation_Services_Requested_frmla__c] [nvarchar](1300) NULL,
	[Understand_RCW43215__c] [tinyint] NULL,
	[Valid_Violation_Count__c] [float] NULL,
	[Visit_Attempt_Number__c] [float] NULL,
	[Visit_Date__c] [datetime] NULL,
	[Visit_Status__c] [nvarchar](255) NULL,
	[a90_Day_Status__c] [nvarchar](1300) NULL,
	[Abbreviated_Checklist_Calculation__c] [float] NULL,
	[Abbreviated_Checklist_Complete__c] [float] NULL,
	[Abbreviated_Checklist_Total_Count__c] [float] NULL,
	[Full_Checklist_Calculation__c] [float] NULL,
	[Full_Checklist_Complete__c] [float] NULL,
	[Full_Checklist_Total_Count__c] [float] NULL,
	[Provider_Case_Signature_Count__c] [float] NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[User_Supervisory_Reviewer1__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_Supervisory_Reviewer2__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_Supervisory_Reviewer3__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Historical_Assigned_Licensor__c] [nvarchar](255) NULL,
	[Original_Due_Date__c] [datetime] NULL,
	[Supervisor_Review_Request__c] [tinyint] NULL,
	[Supervisory_Review_Text_FRMLA__c] [nvarchar](1300) NULL,
	[Account_Office__c] [nvarchar](1300) NULL,
	[Appeal_Withdrawl_Date__c] [datetime] NULL,
	[Date_of_Disqualification__c] [datetime] NULL,
	[Date_of_Return_Receipt__c] [datetime] NULL,
	[Denial_Letter_Sent_Date__c] [datetime] NULL,
	[Denial_Signed_DPS__c] [datetime] NULL,
	[Hearing_Appeal_End_Date__c] [datetime] NULL,
	[Latest_License_Certificate_Type__c] [nvarchar](1300) NULL,
	[Account_Region__c] [nvarchar](1300) NULL,
	[Days_DLR_CPS_Complaint_Open__c] [nvarchar](1300) NULL,
	[Days_Licensing_Complaint_Open__c] [nvarchar](1300) NULL,
	[Days_Monitoring_Visit_Overdue__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Authority__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Sub_Type__c] [nvarchar](1300) NULL,
	[Latest_Provider_License_Type__c] [nvarchar](1300) NULL,
	[Primary_Licensor__c] [nvarchar](1300) NULL,
	[Timely_Monitoring_Visit_Attempt__c] [nvarchar](1300) NULL,
	[Office_Fax__c] [nvarchar](1300) NULL,
	[Office_Phone__c] [nvarchar](1300) NULL,
	[Office_Phone_and_Fax__c] [nvarchar](1300) NULL,
	[ELF_Form_Version__c] [nvarchar](255) NULL,
	[Critical_Incident_Report__c] [nvarchar](18) NULL,
	[Account_Phone_Number__c] [nvarchar](1300) NULL,
	[Self_Reported_Count__c] [float] NULL,
	[Self_Reported_Flag__c] [tinyint] NULL,
	[PSS_Self_Reported_Display__c] [nvarchar](1300) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Lead__c] [nvarchar](18) NULL,
	[Complaint_Date__c] [datetime] NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[Hearing_Appeal_Start_Date__c] [datetime] NULL,
	[Hearing_Date_of_Decision__c] [datetime] NULL,
	[Hearing_Decision__c] [nvarchar](max) NULL,
	[Rescinded_or_Lifted_Letter_Sent__c] [datetime] NULL,
	[Rescinded_or_Lifted_Return_Receipt__c] [datetime] NULL,
	[Rescinded_or_Lifted_Signed_DPS__c] [datetime] NULL,
	[Resolution_Display_Label__c] [nvarchar](1300) NULL,
	[Review_Judge_Appeal_End_Date__c] [datetime] NULL,
	[Review_Judge_Appeal_Start_Date__c] [datetime] NULL,
	[Review_Judge_Date_of_Decision__c] [datetime] NULL,
	[Review_Judge_Decision__c] [nvarchar](max) NULL,
	[Reviewed_by_AAG_if_applicable__c] [datetime] NULL,
	[Revocation_Letter_Delivered__c] [datetime] NULL,
	[Revocation_Return_Receipt__c] [datetime] NULL,
	[Revocation_Signed_DPS__c] [datetime] NULL,
	[Settlement_Date__c] [datetime] NULL,
	[Summary_Suspension_Rescinded_or_Lifted__c] [datetime] NULL,
	[Summary_Suspension_Signed_DPS__c] [datetime] NULL,
	[Superior_Court_Appeal_End_Date__c] [datetime] NULL,
	[Superior_Court_Appeal_Start_Date__c] [datetime] NULL,
	[Superior_Court_Date_of_Decision__c] [datetime] NULL,
	[Superior_Court_Decision__c] [nvarchar](max) NULL,
	[Suspension_Letter_Delivered__c] [datetime] NULL,
	[Valid_Issue_Types__c] [nvarchar](255) NULL,
	[Valid_Regulation_List__c] [nvarchar](255) NULL,
	[Rerate_Release_Date__c] [datetime] NULL,
	[Latest_License_Expiration_Date__c] [datetime] NULL,
	[Child_Fatality__c] [tinyint] NULL,
	[Child_Near_Fatality__c] [tinyint] NULL,
	[Last_Monitoring_Visit_Date__c] [datetime] NULL,
	[Latest_License_Start_Date__c] [datetime] NULL,
	[Next_Monitoring_Visit_Due_Date__c] [datetime] NULL,
	[Parent_Account__c] [nvarchar](1300) NULL,
	[Provider_Type__c] [nvarchar](1300) NULL,
	[Serious_Injury__c] [nvarchar](max) NULL,
	[Appeal_Details__c] [nvarchar](max) NULL,
	[Appeal_Result__c] [nvarchar](255) NULL,
	[Appealed__c] [tinyint] NULL,
	[Approved_Date__c] [datetime] NULL,
	[Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Assessment_Case__c] [nvarchar](18) NULL,
	[Assessment_End_Time__c] [datetime] NULL,
	[Assessment_Start_Time__c] [datetime] NULL,
	[Assessment_Sub_Type__c] [nvarchar](255) NULL,
	[Assessment_Type_Label__c] [nvarchar](1300) NULL,
	[Assessment_Type_Status__c] [nvarchar](255) NULL,
	[Assessment_Type__c] [nvarchar](255) NULL,
	[CLASS_Score__c] [float] NULL,
	[Case_Creation_Option__c] [nvarchar](1300) NULL,
	[Class_Acknowledgement__c] [tinyint] NULL,
	[Class_Rerate__c] [nvarchar](255) NULL,
	[Classroom_Session_Display_Label__c] [nvarchar](1300) NULL,
	[Classroom_Session__c] [nvarchar](18) NULL,
	[Cohort_End_Date__c] [datetime] NULL,
	[Cohort_Schedule__c] [nvarchar](18) NULL,
	[Cohort_Start_Date__c] [datetime] NULL,
	[Count_Appeals__c] [float] NULL,
	[Count_Dimension_Cycle_Matches_Reliabil__c] [float] NULL,
	[Count_Dimension_Cycle_Matches__c] [float] NULL,
	[Count_Dimension_Cycles__c] [float] NULL,
	[Count_Enrolled__c] [float] NULL,
	[Create_Session_Snapshot__c] [tinyint] NULL,
	[Created_By_Proxy_ID__c] [nvarchar](1300) NULL,
	[Cycle_Count__c] [nvarchar](255) NULL,
	[Data_Collector_Name__c] [nvarchar](255) NULL,
	[EA_Enrollment_Date_Time__c] [datetime] NULL,
	[EA_Journey_Bar_Label__c] [nvarchar](1300) NULL,
	[EA_Participation_Approved_Date_Time__c] [datetime] NULL,
	[EA_Participation_Submission_Date_Time__c] [datetime] NULL,
	[EA_Program__c] [nvarchar](18) NULL,
	[EA_Progress_Label__c] [nvarchar](1300) NULL,
	[EA_User__c] [nvarchar](18) NULL,
	[ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[ERS_Rerate__c] [nvarchar](255) NULL,
	[ERS_Score__c] [float] NULL,
	[Early_Achiever_Pathway__c] [nvarchar](255) NULL,
	[Enrollment_Due__c] [datetime] NULL,
	[Expected_Lead_Teacher_1_Display_Label__c] [nvarchar](1300) NULL,
	[Full_Streamlined_Rating__c] [nvarchar](255) NULL,
	[IRRT_Complete__c] [tinyint] NULL,
	[I_am_Ready_to_Submit_My_L2_Application__c] [nvarchar](255) NULL,
	[L2_Activities_Due__c] [datetime] NULL,
	[L2_Application_Submission_Date__c] [datetime] NULL,
	[Latest_Quality_Rating_Calc_Datetime__c] [datetime] NULL,
	[Level_2_Rating_Request_Email_Sent__c] [tinyint] NULL,
	[MC_Is_CLASS_Mobilized__c] [tinyint] NULL,
	[Max_Count_Children__c] [float] NULL,
	[Max_Count_Infants__c] [float] NULL,
	[Max_Count_Preschoolers__c] [float] NULL,
	[Max_Count_Teachers__c] [float] NULL,
	[Max_Count_Toddlers__c] [float] NULL,
	[My_Form__c] [nvarchar](18) NULL,
	[Original_Rerate_Case__c] [nvarchar](18) NULL,
	[Overall_EA_Score__c] [float] NULL,
	[Overall_Reliability_Reliability_Score__c] [float] NULL,
	[Overall_Reliability__c] [float] NULL,
	[Parent_Provider_Case__c] [nvarchar](18) NULL,
	[Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Participation_Agreement__c] [nvarchar](18) NULL,
	[Partner_Rating_Visible_Date__c] [datetime] NULL,
	[Phase_Type__c] [nvarchar](255) NULL,
	[Physical_Full_Address__c] [nvarchar](1300) NULL,
	[Points__c] [float] NULL,
	[Program_External_Updated__c] [tinyint] NULL,
	[Provider_Case_Owner_Language__c] [nvarchar](1300) NULL,
	[Provider_Rating_Visible_Date__c] [datetime] NULL,
	[QRIS_Scoring_Library__c] [nvarchar](18) NULL,
	[QRIS_Scoring_Mode__c] [nvarchar](255) NULL,
	[Quality_Enrollment_Start_DateTime__c] [datetime] NULL,
	[Quality_Rating_Level__c] [nvarchar](255) NULL,
	[Quality_Rating_Notice_to_Provider__c] [tinyint] NULL,
	[Quality_Standard_Score__c] [float] NULL,
	[Quality_Standards_Rerate__c] [nvarchar](255) NULL,
	[Rating_Due_Date__c] [datetime] NULL,
	[Rating_Externally_Visible_Date__c] [datetime] NULL,
	[Rating_Ready_for_WADEL__c] [tinyint] NULL,
	[Ready_for_Rating__c] [nvarchar](255) NULL,
	[Records_Review_Acknowledgment__c] [tinyint] NULL,
	[Records_Review_Case_ID__c] [nvarchar](255) NULL,
	[Reliability_Collector_Name__c] [nvarchar](255) NULL,
	[Reliability_Needed__c] [tinyint] NULL,
	[Renewal_Requested__c] [tinyint] NULL,
	[Rerate_Status__c] [nvarchar](255) NULL,
	[Rerate_Type__c] [nvarchar](255) NULL,
	[Score__c] [float] NULL,
	[Send_EA_Participation_Approval_Email__c] [tinyint] NULL,
	[Training_Completed__c] [tinyint] NULL,
	[Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](255) NULL,
	[VIP_Form_Template__c] [nvarchar](18) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[Lead_Lead__r_Lead_Validation_Code__c] [nvarchar](128) NULL,
	[Provider_Case__c_Assessment_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Provider_Case__c_Assessment_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Assessment_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Provider_Case__c_Assessment_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Assessment_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Session__c_Classroom_Session__r_External_Source_ID__c] [nvarchar](64) NULL,
	[Program__c_EA_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_EA_User__r_External_Source_ID__c] [nvarchar](128) NULL,
	[User_EA_User__r_Branagh_GUID__c] [nvarchar](40) NULL,
	[User_EA_User__r_Default_Account__c] [nvarchar](18) NULL,
	[User_EA_User__r_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Original_Rerate_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_External_Source_ID__c] [nvarchar](255) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Assessment_Case_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_ERS_ObservationIRCode__c] [nvarchar](40) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Parent_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[Provider_Case__c_Parent_Provider_Case__r_Unique_Proxy_ID__c] [nvarchar](64) NULL,
	[VIPForm__VIP_Template__c_VIP_Form_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[Signature_Record_Count__c] [float] NULL,
	[Days_til_Annual_Compliance_Due__c] [nvarchar](1300) NULL,
	[Anniversary_Date_Before_30__c] [datetime] NULL,
	[Anniversary_date_before_90_date__c] [datetime] NULL,
	[Current_Year_Anniversary_Date__c] [nvarchar](1300) NULL,
	[Office_Mailing_Address_2__c] [nvarchar](1300) NULL,
	[Office_Mailing_Address__c] [nvarchar](1300) NULL,
	[EA_Provider_Rating_Release_Email_Sent__c] [tinyint] NULL,
	[Level_2_Activities_Complete__c] [nvarchar](1300) NULL,
	[Onsite_Evaluation_Due_Date__c] [datetime] NULL,
	[Quality_Rating_Expiration_Date__c] [datetime] NULL,
	[Rating_Renewal_Reminder_Email_Sent__c] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Provider_License__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Provider_License__c](
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[Account_Field_Office_Address_1__c] [nvarchar](1300) NULL,
	[Account_Field_Office_Address_2__c] [nvarchar](1300) NULL,
	[Account_Field_Office_Address__c] [nvarchar](18) NULL,
	[Account__c] [nvarchar](18) NULL,
	[Age_From__c] [nvarchar](255) NULL,
	[Age_Group_Served__c] [nvarchar](max) NULL,
	[Age_Groups_Served__c] [nvarchar](max) NULL,
	[Age_Range_Display_Label__c] [nvarchar](1300) NULL,
	[Age_To__c] [nvarchar](255) NULL,
	[Authority__c] [nvarchar](255) NULL,
	[Certificate_of_Occupancy__c] [datetime] NULL,
	[County__c] [nvarchar](1300) NULL,
	[Current_User_Role_Name__c] [nvarchar](1300) NULL,
	[Delivery_Method__c] [nvarchar](255) NULL,
	[Expiration_Date__c] [datetime] NULL,
	[External_Source_ID__c] [nvarchar](20) NULL,
	[Famlink_ID__c] [nvarchar](1300) NULL,
	[Famlink_Last_Updated_By__c] [nvarchar](255) NULL,
	[Fire_Marshal_Visit_Date__c] [datetime] NULL,
	[License_Anniversary_Date_MMDD__c] [nvarchar](20) NULL,
	[License_Capacity__c] [float] NULL,
	[License_Certificate_Type__c] [nvarchar](255) NULL,
	[License_End_Category__c] [nvarchar](255) NULL,
	[License_End_Date__c] [datetime] NULL,
	[License_End_Description__c] [nvarchar](max) NULL,
	[License_Expiration_Date__c] [datetime] NULL,
	[License_Expires__c] [nvarchar](64) NULL,
	[License_Facility_Type_Name__c] [nvarchar](255) NULL,
	[License_Start_Date__c] [datetime] NULL,
	[License_Status__c] [nvarchar](255) NULL,
	[License_Sub_Type__c] [nvarchar](255) NULL,
	[License_Type__c] [nvarchar](255) NULL,
	[Licensing_Supervisor__c] [nvarchar](18) NULL,
	[Licensor_City__c] [nvarchar](1300) NULL,
	[Limitations__c] [nvarchar](255) NULL,
	[Occupancy__c] [float] NULL,
	[Primary_Contact_Full_Name__c] [nvarchar](1300) NULL,
	[Provider_City__c] [nvarchar](1300) NULL,
	[Provider_DBA__c] [nvarchar](1300) NULL,
	[Provider_License_Capacity__c] [float] NULL,
	[Provider_Shipping_Address_1__c] [nvarchar](1300) NULL,
	[Provider_Shipping_Address_2__c] [nvarchar](1300) NULL,
	[Provider_Zip_Code__c] [nvarchar](1300) NULL,
	[Restricted__c] [tinyint] NULL,
	[SSPS_ID__c] [nvarchar](1300) NULL,
	[Tracking_Number__c] [nvarchar](60) NULL,
	[Update_Approved__c] [tinyint] NULL,
	[WAC_Section_Number__c] [nvarchar](1300) NULL,
	[Total_Classroom_Capacities__c] [float] NULL,
	[Account_Account_Field_Office_Address__r_External_Source_Id__c] [nvarchar](255) NULL,
	[Account_Account__r_External_Source_Id__c] [nvarchar](255) NULL,
	[User_Licensing_Supervisor__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Account_Office__c] [nvarchar](1300) NULL,
	[Days_til_license_expiration_date__c] [float] NULL,
	[Primary_Licensor__c] [nvarchar](1300) NULL,
	[License_Last_Amended_On_Date__c] [datetime] NULL,
	[License_Certificate_Display_Name__c] [nvarchar](100) NULL,
	[Office_Fax_Number__c] [nvarchar](1300) NULL,
	[Office_Phone_Number__c] [nvarchar](1300) NULL,
	[Account_Office_Physical_Address_2__c] [nvarchar](1300) NULL,
	[Account_Office_Physical_Address__c] [nvarchar](1300) NULL,
	[Account_Account__r_Account_Unique_ID__c] [nvarchar](30) NULL,
	[Display_on_Public_Search__c] [tinyint] NULL,
	[Provider_Type__c] [nvarchar](1300) NULL,
	[Evening_and_Overnight_Care__c] [tinyint] NULL,
	[Licensed_for_Off_Hours__c] [tinyint] NULL,
	[Account_Account__r_Branagh_GUID__c] [nvarchar](64) NULL,
	[Account_Account__r_MERIT_Facility_ID__c] [nvarchar](40) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[Emergency_License__c] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[RecordType]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[RecordType](
	[Id] [nvarchar](18) NULL,
	[Name] [nvarchar](80) NULL,
	[DeveloperName] [nvarchar](80) NULL,
	[NamespacePrefix] [nvarchar](15) NULL,
	[Description] [nvarchar](255) NULL,
	[BusinessProcessId] [nvarchar](18) NULL,
	[SobjectType] [nvarchar](49) NULL,
	[IsActive] [tinyint] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[SystemModstamp] [datetime] NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordChangeType] [nchar](1) NULL,
	[RecordHash] [char](66) NOT NULL,
	[InsertDatetime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SalesforceTableErrors]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SalesforceTableErrors](
	[PackageId] [smallint] NULL,
	[PackageName] [varchar](500) NULL,
	[PackageTaskName] [varchar](500) NULL,
	[ErrorCode] [varchar](100) NULL,
	[ErrorColumn] [varchar](100) NULL,
	[ErrorColumnName] [varchar](500) NULL,
	[ErrorDescription] [varchar](max) NULL,
	[InsertDatetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SalesForceXML]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SalesForceXML](
	[fields_Id] [numeric](20, 0) NULL,
	[fullName] [varchar](255) NULL,
	[caseSensitive] [bit] NULL,
	[defaultValue] [varchar](255) NULL,
	[description] [varchar](max) NULL,
	[externalId] [bit] NULL,
	[formula] [varchar](max) NULL,
	[inlineHelpText] [varchar](255) NULL,
	[label] [varchar](max) NULL,
	[length] [varchar](100) NULL,
	[referenceTo] [varchar](255) NULL,
	[relationshipLabel] [varchar](255) NULL,
	[relationshipName] [varchar](255) NULL,
	[relationshipOrder] [tinyint] NULL,
	[reparentableMasterDetail] [bit] NULL,
	[precision] [tinyint] NULL,
	[required] [bit] NULL,
	[scale] [tinyint] NULL,
	[trackHistory] [bit] NULL,
	[type] [varchar](255) NULL,
	[SaleforceTableName] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SchemaXMLFiles]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SchemaXMLFiles](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](150) NULL,
	[InsertDateTime] [datetime] NULL,
	[FileHasBeenProcessed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SSISTableErrors]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SSISTableErrors](
	[PackageName] [nvarchar](500) NULL,
	[PackageTaskName] [nvarchar](500) NULL,
	[ErrorCodeSSIS] [nvarchar](500) NULL,
	[ErrorColumnSSIS] [nvarchar](500) NULL,
	[ErrorColumnName] [nvarchar](500) NULL,
	[ErrorDescription] [nvarchar](4000) NULL,
	[PackageId] [smallint] NULL,
	[InsertDatetime] [datetime] NULL,
	[SourceUniqueId] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Subsidy_Authorization__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Subsidy_Authorization__c](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Program__c] [nvarchar](18) NULL,
	[Auth_Id__c] [nvarchar](15) NULL,
	[Auth_Num__c] [nvarchar](15) NULL,
	[Auth_Submit_Date__c] [datetime] NULL,
	[Barcode_Created_Date__c] [datetime] NULL,
	[Care_Address__c] [nvarchar](255) NULL,
	[Care_Location_Flag__c] [nvarchar](255) NULL,
	[Care_Type__c] [nvarchar](max) NULL,
	[End_Date__c] [datetime] NULL,
	[External_Source_Id__c] [nvarchar](18) NULL,
	[Parent_Disabled__c] [nvarchar](255) NULL,
	[Relationship_to_Child__c] [nvarchar](255) NULL,
	[Relationship_to_Parent__c] [nvarchar](255) NULL,
	[SU_App_Active__c] [tinyint] NULL,
	[SU_App__c] [nvarchar](50) NULL,
	[Service_Codes__c] [nvarchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](50) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[VIP_Template__c] [nvarchar](18) NULL,
	[Active_Authorization_Line_Items__c] [float] NULL,
	[Head_of_Household_Last_Name__c] [nvarchar](25) NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[FFN_Most_Restrictive_Care__c] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Subsidy_Line_Item__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Subsidy_Line_Item__c](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Subsidy_Authorization__c] [nvarchar](18) NULL,
	[Auth_Suffix__c] [nvarchar](2) NULL,
	[Begin_Date__c] [datetime] NULL,
	[CL_Num__c] [float] NULL,
	[End_Date__c] [datetime] NULL,
	[External_Source_Id__c] [nvarchar](17) NULL,
	[Line_Num__c] [float] NULL,
	[Location_of_Care_Address__c] [nvarchar](255) NULL,
	[Location_of_Care_Type__c] [nvarchar](max) NULL,
	[Process_Date__c] [datetime] NULL,
	[Service_Code__c] [nvarchar](5) NULL,
	[Start_Date__c] [datetime] NULL,
	[Status__c] [nvarchar](255) NULL,
	[Unique_Child_Id__c] [nvarchar](18) NULL,
	[Birthdate__c] [datetime] NULL,
	[Child_First_Name__c] [nvarchar](15) NULL,
	[Termination_Code__c] [nvarchar](50) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Subsidy_Authorization__c_Subsidy_Authorization__r_External_Source_Id__c] [nvarchar](18) NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Subsidy_Request__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Subsidy_Request__c](
	[Id] [nvarchar](18) NULL,
	[OwnerId] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[RecordTypeId] [nvarchar](18) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Birthdate__c] [datetime] NULL,
	[Child_First_Name__c] [nvarchar](50) NULL,
	[Hourly_Rate_per_Child__c] [float] NULL,
	[Head_of_Household_Last_Name__c] [nvarchar](25) NULL,
	[Live_at_Child_s_Home__c] [nvarchar](255) NULL,
	[Location_of_Care__c] [nvarchar](255) NULL,
	[Number_of_Children_Served__c] [float] NULL,
	[Parent_Subsidy_Request__c] [nvarchar](18) NULL,
	[Parents_Disabled__c] [nvarchar](255) NULL,
	[Program__c] [nvarchar](18) NULL,
	[Relationship_Type__c] [nvarchar](255) NULL,
	[SU_App__c] [nvarchar](12) NULL,
	[Service_Codes__c] [nvarchar](255) NULL,
	[Subsidy_Authorization__c] [nvarchar](18) NULL,
	[Subsidy_Line_Item__c] [nvarchar](18) NULL,
	[Change_Request_Reason__c] [nvarchar](255) NULL,
	[Explanation_of_Changes__c] [nvarchar](255) NULL,
	[Last_Name__c] [nvarchar](80) NULL,
	[Status__c] [nvarchar](255) NULL,
	[VIP_Date_Time_Submitted__c] [datetime] NULL,
	[VIP_Foreign_Language__c] [nvarchar](50) NULL,
	[VIP_Template_Status__c] [nvarchar](max) NULL,
	[VIP_Template__c] [nvarchar](18) NULL,
	[Auth_Suffix__c] [nvarchar](1300) NULL,
	[Effective_Date__c] [datetime] NULL,
	[Immediate_Closure__c] [nvarchar](255) NULL,
	[Number_of_Active_Children__c] [float] NULL,
	[Provider_Requested_Closure__c] [nvarchar](255) NULL,
	[Request_Detail__c] [nvarchar](255) NULL,
	[Requested_Closure_Date__c] [datetime] NULL,
	[SSPS_ID__c] [nvarchar](1300) NULL,
	[Sent_to_Barcode_Datetime__c] [datetime] NULL,
	[Program__c_Program__r_External_Source_ID__c] [nvarchar](128) NULL,
	[Subsidy_Authorization__c_Subsidy_Authorization__r_External_Source_Id__c] [nvarchar](18) NULL,
	[Subsidy_Line_Item__c_Subsidy_Line_Item__r_External_Source_Id__c] [nvarchar](17) NULL,
	[VIPForm__VIP_Template__c_VIP_Template__r_VIPForm__External_Id__c] [nvarchar](20) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[Validated_SU_App__c] [nvarchar](10) NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[FFN_Most_Restrictive_Care__c] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[Training__c]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[Training__c](
	[Id] [nvarchar](18) NULL,
	[IsDeleted] [tinyint] NULL,
	[Name] [nvarchar](80) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[Contact__c] [nvarchar](18) NULL,
	[Completed_Date__c] [datetime] NULL,
	[External_Source_ID__c] [nvarchar](64) NULL,
	[Training_Type__c] [nvarchar](255) NULL,
	[Contact_Contact__r_Stars_Id__c] [nvarchar](16) NULL,
	[Contact_Contact__r_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact__r_External_Source_ID__c] [nvarchar](20) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[User]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[User](
	[Id] [nvarchar](18) NULL,
	[Username] [nvarchar](80) NULL,
	[LastName] [nvarchar](80) NULL,
	[FirstName] [nvarchar](40) NULL,
	[Name] [nvarchar](121) NULL,
	[CompanyName] [nvarchar](80) NULL,
	[Division] [nvarchar](80) NULL,
	[Department] [nvarchar](80) NULL,
	[Title] [nvarchar](80) NULL,
	[Street] [nvarchar](255) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](80) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](80) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[GeocodeAccuracy] [nvarchar](40) NULL,
	[Email] [nvarchar](128) NULL,
	[EmailPreferencesAutoBcc] [tinyint] NULL,
	[EmailPreferencesAutoBccStayInTouch] [tinyint] NULL,
	[EmailPreferencesStayInTouchReminder] [tinyint] NULL,
	[SenderEmail] [nvarchar](80) NULL,
	[SenderName] [nvarchar](80) NULL,
	[Signature] [nvarchar](1333) NULL,
	[StayInTouchSubject] [nvarchar](80) NULL,
	[StayInTouchSignature] [nvarchar](512) NULL,
	[StayInTouchNote] [nvarchar](512) NULL,
	[Phone] [nvarchar](40) NULL,
	[Fax] [nvarchar](40) NULL,
	[MobilePhone] [nvarchar](40) NULL,
	[Alias] [nvarchar](8) NULL,
	[CommunityNickname] [nvarchar](40) NULL,
	[BadgeText] [nvarchar](80) NULL,
	[IsActive] [tinyint] NULL,
	[TimeZoneSidKey] [nvarchar](40) NULL,
	[UserRoleId] [nvarchar](18) NULL,
	[LocaleSidKey] [nvarchar](40) NULL,
	[ReceivesInfoEmails] [tinyint] NULL,
	[ReceivesAdminInfoEmails] [tinyint] NULL,
	[EmailEncodingKey] [nvarchar](40) NULL,
	[ProfileId] [nvarchar](18) NULL,
	[UserType] [nvarchar](40) NULL,
	[LanguageLocaleKey] [nvarchar](40) NULL,
	[EmployeeNumber] [nvarchar](20) NULL,
	[DelegatedApproverId] [nvarchar](18) NULL,
	[ManagerId] [nvarchar](18) NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangeDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [nvarchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [nvarchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[OfflineTrialExpirationDate] [datetime] NULL,
	[OfflinePdaTrialExpirationDate] [datetime] NULL,
	[UserPermissionsMarketingUser] [tinyint] NULL,
	[UserPermissionsOfflineUser] [tinyint] NULL,
	[UserPermissionsAvantgoUser] [tinyint] NULL,
	[UserPermissionsCallCenterAutoLogin] [tinyint] NULL,
	[UserPermissionsMobileUser] [tinyint] NULL,
	[UserPermissionsSFContentUser] [tinyint] NULL,
	[UserPermissionsKnowledgeUser] [tinyint] NULL,
	[UserPermissionsInteractionUser] [tinyint] NULL,
	[UserPermissionsSupportUser] [tinyint] NULL,
	[UserPermissionsLiveAgentUser] [tinyint] NULL,
	[UserPermissionsChatterAnswersUser] [tinyint] NULL,
	[ForecastEnabled] [tinyint] NULL,
	[UserPreferencesActivityRemindersPopup] [tinyint] NULL,
	[UserPreferencesEventRemindersCheckboxDefault] [tinyint] NULL,
	[UserPreferencesTaskRemindersCheckboxDefault] [tinyint] NULL,
	[UserPreferencesReminderSoundOff] [tinyint] NULL,
	[UserPreferencesDisableAllFeedsEmail] [tinyint] NULL,
	[UserPreferencesDisableFollowersEmail] [tinyint] NULL,
	[UserPreferencesDisableProfilePostEmail] [tinyint] NULL,
	[UserPreferencesDisableChangeCommentEmail] [tinyint] NULL,
	[UserPreferencesDisableLaterCommentEmail] [tinyint] NULL,
	[UserPreferencesDisProfPostCommentEmail] [tinyint] NULL,
	[UserPreferencesContentNoEmail] [tinyint] NULL,
	[UserPreferencesContentEmailAsAndWhen] [tinyint] NULL,
	[UserPreferencesApexPagesDeveloperMode] [tinyint] NULL,
	[UserPreferencesHideCSNGetChatterMobileTask] [tinyint] NULL,
	[UserPreferencesDisableMentionsPostEmail] [tinyint] NULL,
	[UserPreferencesDisMentionsCommentEmail] [tinyint] NULL,
	[UserPreferencesHideCSNDesktopTask] [tinyint] NULL,
	[UserPreferencesHideChatterOnboardingSplash] [tinyint] NULL,
	[UserPreferencesHideSecondChatterOnboardingSplash] [tinyint] NULL,
	[UserPreferencesDisCommentAfterLikeEmail] [tinyint] NULL,
	[UserPreferencesDisableLikeEmail] [tinyint] NULL,
	[UserPreferencesSortFeedByComment] [tinyint] NULL,
	[UserPreferencesDisableMessageEmail] [tinyint] NULL,
	[UserPreferencesDisableBookmarkEmail] [tinyint] NULL,
	[UserPreferencesDisableSharePostEmail] [tinyint] NULL,
	[UserPreferencesEnableAutoSubForFeeds] [tinyint] NULL,
	[UserPreferencesDisableFileShareNotificationsForApi] [tinyint] NULL,
	[UserPreferencesShowTitleToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowManagerToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowEmailToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowWorkPhoneToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowMobilePhoneToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowFaxToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowStreetAddressToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowCityToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowStateToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowPostalCodeToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowCountryToExternalUsers] [tinyint] NULL,
	[UserPreferencesShowProfilePicToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowTitleToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowCityToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowStateToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowPostalCodeToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowCountryToGuestUsers] [tinyint] NULL,
	[UserPreferencesHideS1BrowserUI] [tinyint] NULL,
	[UserPreferencesDisableEndorsementEmail] [tinyint] NULL,
	[UserPreferencesPathAssistantCollapsed] [tinyint] NULL,
	[UserPreferencesCacheDiagnostics] [tinyint] NULL,
	[UserPreferencesShowEmailToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowManagerToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowWorkPhoneToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowMobilePhoneToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowFaxToGuestUsers] [tinyint] NULL,
	[UserPreferencesShowStreetAddressToGuestUsers] [tinyint] NULL,
	[UserPreferencesLightningExperiencePreferred] [tinyint] NULL,
	[UserPreferencesHideEndUserOnboardingAssistantModal] [tinyint] NULL,
	[UserPreferencesHideLightningMigrationModal] [tinyint] NULL,
	[UserPreferencesHideSfxWelcomeMat] [tinyint] NULL,
	[UserPreferencesHideBiggerPhotoCallout] [tinyint] NULL,
	[UserPreferencesGlobalNavBarWTShown] [tinyint] NULL,
	[UserPreferencesGlobalNavGridMenuWTShown] [tinyint] NULL,
	[UserPreferencesCreateLEXAppsWTShown] [tinyint] NULL,
	[UserPreferencesFavoritesWTShown] [tinyint] NULL,
	[ContactId] [nvarchar](18) NULL,
	[AccountId] [nvarchar](18) NULL,
	[CallCenterId] [nvarchar](18) NULL,
	[Extension] [nvarchar](40) NULL,
	[PortalRole] [nvarchar](40) NULL,
	[IsPortalEnabled] [tinyint] NULL,
	[FederationIdentifier] [nvarchar](512) NULL,
	[AboutMe] [nvarchar](1000) NULL,
	[FullPhotoUrl] [nvarchar](1024) NULL,
	[SmallPhotoUrl] [nvarchar](1024) NULL,
	[MediumPhotoUrl] [nvarchar](1024) NULL,
	[DigestFrequency] [nvarchar](40) NULL,
	[DefaultGroupNotificationFrequency] [nvarchar](40) NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[BannerPhotoUrl] [nvarchar](1024) NULL,
	[SmallBannerPhotoUrl] [nvarchar](1024) NULL,
	[MediumBannerPhotoUrl] [nvarchar](1024) NULL,
	[IsProfilePhotoActive] [tinyint] NULL,
	[mobilecaddy1__MobileCaddy_Configuration__c] [tinyint] NULL,
	[User_Detail_Display_Label__c] [nvarchar](1300) NULL,
	[Contact_Contact_WebAuth_User_Id__c] [nvarchar](255) NULL,
	[Contact_Contact_External_Source_ID__c] [nvarchar](12) NULL,
	[External_Source_ID__c] [nvarchar](128) NULL,
	[User_Manager_External_Source_ID__c] [nvarchar](128) NULL,
	[Contact_Contact_Stars_Id__c] [nvarchar](16) NULL,
	[Branagh_GUID__c] [nvarchar](40) NULL,
	[Coaching_Agency_Id__c] [nvarchar](18) NULL,
	[Coaching_Type__c] [nvarchar](max) NULL,
	[Default_Account_Link__c] [nvarchar](1300) NULL,
	[Default_Account__c] [nvarchar](18) NULL,
	[Office__c] [nvarchar](255) NULL,
	[Profile_Name__c] [nvarchar](1300) NULL,
	[Unique_Proxy_ID__c] [nvarchar](30) NULL,
	[WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[User_Manager_Branagh_GUID__c] [nvarchar](40) NULL,
	[User_Manager_Default_Account__c] [nvarchar](18) NULL,
	[User_Manager_WELS_AgencyStaffId__c] [nvarchar](20) NULL,
	[SCRIBE_ID] [bigint] NOT NULL,
	[SCRIBE_CREATEDON] [datetime] NOT NULL,
	[SCRIBE_MODIFIEDON] [datetime] NOT NULL,
	[SCRIBE_DELETEDON] [datetime] NULL,
	[RecordHash] [char](66) NOT NULL,
	[RecordChangeType] [nchar](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImportLog].[MessageLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImportLog].[MessageLog](
	[PackageLogID] [int] NOT NULL,
	[PackageID] [smallint] NOT NULL,
	[TableValidationID] [int] NOT NULL,
	[TaskName] [varchar](255) NOT NULL,
	[LogDate] [smalldatetime] NULL,
	[LogDateTime] [datetime] NOT NULL,
	[LogTypeID] [smallint] NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[RowID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_MessageLog] PRIMARY KEY CLUSTERED 
(
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLImportLog].[PackageLogging]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImportLog].[PackageLogging](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[PackageId] [smallint] NULL,
	[PackageStartTime] [datetime] NULL,
	[PackageEndTime] [datetime] NULL,
	[PrecedentSatisfied] [smallint] NULL,
	[MachineName] [varchar](50) NULL,
	[DataImportDate] [datetime] NULL,
	[ImportedRecords] [int] NULL,
	[InsertedRecords] [int] NULL,
	[UpdatedRecords] [int] NULL,
	[DeletedRecords] [int] NULL,
	[ErrorRecords] [int] NULL,
	[PackageLogNotes] [varchar](4000) NULL,
	[CompletedSuccessfully] [smallint] NULL,
	[InsertDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkETLImportPackageLogging_RecordId]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkETLImportPackageLogging_RecordId] ON [ETLImportLog].[PackageLogging]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [ETLImportLog].[PackageTaskLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImportLog].[PackageTaskLog](
	[PackageLogID] [int] NOT NULL,
	[PackageID] [smallint] NOT NULL,
	[TaskName] [varchar](255) NOT NULL,
	[LogDate] [smalldatetime] NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[ErrorCount] [smallint] NOT NULL,
	[WarningCount] [smallint] NOT NULL,
	[Message] [varchar](max) NULL,
 CONSTRAINT [pk_PackageTaskLog] PRIMARY KEY CLUSTERED 
(
	[PackageLogID] ASC,
	[PackageID] ASC,
	[TaskName] ASC,
	[StartTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_CurrentPreviousInd_IsDeleted_Id]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE NONCLUSTERED INDEX [ix_CurrentPreviousInd_IsDeleted_Id] ON [Detail].[SalesforceAccount]
(
	[IsDeleted] ASC,
	[CurrentPreviousInd] ASC,
	[Id] ASC
)
INCLUDE([RecordTypeId],[SSPS_Id__c]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ixCurrentPreviousInd_IsDelete_Id_INC]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE NONCLUSTERED INDEX [ixCurrentPreviousInd_IsDelete_Id_INC] ON [Detail].[SalesforceContact]
(
	[CurrentPreviousInd] ASC,
	[IsDeleted] ASC,
	[Id] ASC
)
INCLUDE([Email],[HomePhone],[MobilePhone],[Name],[OtherPhone],[Phone]) 
WHERE ([CurrentPreviousInd]='C' AND [IsDeleted]=(0))
WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_CurrentPreviousInd_IsDeleted_Status__c]    Script Date: 9/7/2021 2:21:18 PM ******/
CREATE NONCLUSTERED INDEX [ix_CurrentPreviousInd_IsDeleted_Status__c] ON [Detail].[SalesforceProgram]
(
	[Status__c] ASC,
	[IsDeleted] ASC,
	[CurrentPreviousInd] ASC
)
INCLUDE([Account__c],[Approved_for_Attendance__c],[EAS_ETR_Approval_End_Date__c],[EAS_ETR_Approval_Start_Date__c],[EAS_ETR_Approval_Type__c],[EAS_ETR_Approved_Date__c],[EAS_ETR_Denied_Date__c],[EAS_ETR_Received_Date__c],[EAS_ETR_Status__c],[Electronic_Attendance_System__c]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Config].[RelationshipPriority] ADD  CONSTRAINT [DF_ConfigRelationshipPriority_RelationshipTypeId]  DEFAULT ((1)) FOR [RelationshipTypeId]
GO
ALTER TABLE [Config].[RelationshipPriority] ADD  CONSTRAINT [DF_ConfigRelationshipPriority_RelationshipIsActive]  DEFAULT ((1)) FOR [RelationshipIsActive]
GO
ALTER TABLE [Config].[RelationshipPriority] ADD  CONSTRAINT [DF_ConfigRelationshipPriority_RelationshipEffectiveDate]  DEFAULT (sysdatetime()) FOR [RelationshipEffectiveDate]
GO
ALTER TABLE [Config].[RelationshipPriority] ADD  CONSTRAINT [DF_ConfigRelationshipPriority_RelationshipEndDate]  DEFAULT ('2099-12-31') FOR [RelationshipEndDate]
GO
ALTER TABLE [Config].[SalesforceFields] ADD  CONSTRAINT [DF_SalesforceFields_FieldIsActive]  DEFAULT ((1)) FOR [FieldIsActive]
GO
ALTER TABLE [Config].[SalesforceFields] ADD  CONSTRAINT [DF_SalesforceFields_FieldeDateEff]  DEFAULT (sysdatetime()) FOR [FieldeDateEff]
GO
ALTER TABLE [Config].[SalesforceFields] ADD  CONSTRAINT [DF_SalesforceFields_FieldDateExp]  DEFAULT (CONVERT([datetime],'2099-12-31',(0))) FOR [FieldDateExp]
GO
ALTER TABLE [Config].[SalesforceFields] ADD  CONSTRAINT [DF_SalesforceFields_FieldLastUpdatedOn]  DEFAULT (sysdatetime()) FOR [FieldLastUpdatedOn]
GO
ALTER TABLE [Config].[SalesforceFields] ADD  CONSTRAINT [DF_SalesForceFields_FieldIsReplicated]  DEFAULT ((0)) FOR [FieldIsReplicated]
GO
ALTER TABLE [Config].[SalesforceObjectMapping] ADD  CONSTRAINT [DF_SalesforceObjectMapping_LastUpdatedDateTime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDateTime]
GO
ALTER TABLE [Config].[SalesforceObjectMapping] ADD  CONSTRAINT [DF_SalesforceObjectMapping_InsertDateTIme]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_SalesforceCustomObject]  DEFAULT ((1)) FOR [ObjectIsCustom]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_TableIsActive]  DEFAULT ((1)) FOR [ObjectIsActive]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_IsReplicated]  DEFAULT ((0)) FOR [ObjectIsReplicated]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_TableDateEff]  DEFAULT (sysdatetime()) FOR [ObjectDateEff]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_TableDateExp]  DEFAULT (CONVERT([datetime],'2099-12-31',(0))) FOR [ObjectDateExp]
GO
ALTER TABLE [Config].[SalesforceObjects] ADD  CONSTRAINT [DF_SalesforceObjects_TableLastUpdatedOn]  DEFAULT (sysdatetime()) FOR [ObjectLastUpdatedOn]
GO
ALTER TABLE [Config].[Systems] ADD  CONSTRAINT [DF_ConfigSystems_SystemIsActive]  DEFAULT ((1)) FOR [SystemIsActive]
GO
ALTER TABLE [Config].[Systems] ADD  CONSTRAINT [DF_ConfigSystems_SystemLastUpDatedOn]  DEFAULT (sysdatetime()) FOR [SystemLastUpDatedOn]
GO
ALTER TABLE [Config].[Systems] ADD  CONSTRAINT [DF_ConfigSystems_SystemInsertDatetime]  DEFAULT (sysdatetime()) FOR [SystemInsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceAccount] ADD  CONSTRAINT [DF_DetailSalesforceAccount_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceAccount] ADD  CONSTRAINT [DF_DetailSalesforceAccount_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceAccount] ADD  CONSTRAINT [DF_DetailSalesforceAccount_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceAccount] ADD  CONSTRAINT [DF_DetailSalesforceAccount_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceAccount] ADD  CONSTRAINT [DF_DetailSalesforceAccount_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceContact] ADD  CONSTRAINT [DF_DetailSalesforceContact_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceContact] ADD  CONSTRAINT [DF_DetailSalesforceContact_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceContact] ADD  CONSTRAINT [DF_DetailSalesforceContact_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceContact] ADD  CONSTRAINT [DF_DetailSalesforceContact_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceContact] ADD  CONSTRAINT [DF_DetailSalesforceContact_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceContactAccountRole] ADD  CONSTRAINT [DF_DetailSalesforceContactAccountRole_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceContactAccountRole] ADD  CONSTRAINT [DF_DetailSalesforceContactAccountRole_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceContactAccountRole] ADD  CONSTRAINT [DF_DetailSalesforceContactAccountRole_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceContactAccountRole] ADD  CONSTRAINT [DF_DetailSalesforceContactAccountRole_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceContactAccountRole] ADD  CONSTRAINT [DF_DetailSalesforceContactAccountRole_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceElectronicAttendanceSystems] ADD  CONSTRAINT [DF_DetailSalesforceElectronicAttendanceSystems_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceElectronicAttendanceSystems] ADD  CONSTRAINT [DF_DetailSalesforceElectronicAttendanceSystems_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceElectronicAttendanceSystems] ADD  CONSTRAINT [DF_DetailSalesforceElectronicAttendanceSystems_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceElectronicAttendanceSystems] ADD  CONSTRAINT [DF_DetailSalesforceElectronicAttendanceSystems_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceElectronicAttendanceSystems] ADD  CONSTRAINT [DF_DetailSalesforceElectronicAttendanceSystems_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceLead] ADD  CONSTRAINT [DF_DetailSalesforceLead_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceLead] ADD  CONSTRAINT [DF_DetailSalesforceLead_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceLead] ADD  CONSTRAINT [DF_DetailSalesforceLead_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceLead] ADD  CONSTRAINT [DF_DetailSalesforceLead_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceLead] ADD  CONSTRAINT [DF_DetailSalesforceLead_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceLeadAssociate] ADD  CONSTRAINT [DF_DetailSalesforceLeadAssociate_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceLeadAssociate] ADD  CONSTRAINT [DF_DetailSalesforceLeadAssociate_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceLeadAssociate] ADD  CONSTRAINT [DF_DetailSalesforceLeadAssociate_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceLeadAssociate] ADD  CONSTRAINT [DF_DetailSalesforceLeadAssociate_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceLeadAssociate] ADD  CONSTRAINT [DF_DetailSalesforceLeadAssociate_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceProgram] ADD  CONSTRAINT [DF_DetailSalesforceProgram_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[SalesforceProgram] ADD  CONSTRAINT [DF_DetailSalesforceProgram_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceProgram] ADD  CONSTRAINT [DF_DetailSalesforceProgram_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceProgram] ADD  CONSTRAINT [DF_DetailSalesforceProgram_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceProgram] ADD  CONSTRAINT [DF_DetailSalesforceProgram_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceProviderCase] ADD  CONSTRAINT [DF_DetailSalesforceProviderCase_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceProviderCase] ADD  CONSTRAINT [DF_DetailSalesforceProviderCase_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceProviderCase] ADD  CONSTRAINT [DF_DetailSalesforceProviderCase_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceProviderCase] ADD  CONSTRAINT [DF_DetailSalesforceProviderCase_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceProviderCase] ADD  CONSTRAINT [DF_DetailSalesforceProviderCase_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceProviderLicense] ADD  CONSTRAINT [DF_DetailSalesforceProviderLicense_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceProviderLicense] ADD  CONSTRAINT [DF_DetailSalesforceProviderLicense_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceProviderLicense] ADD  CONSTRAINT [DF_DetailSalesforceProviderLicense_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceProviderLicense] ADD  CONSTRAINT [DF_DetailSalesforceProviderLicense_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceProviderLicense] ADD  CONSTRAINT [DF_DetailSalesforceProviderLicense_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceRecordType] ADD  CONSTRAINT [DF_DetailSalesforceRecordType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceRecordType] ADD  CONSTRAINT [DF_DetailSalesforceRecordType_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceRecordType] ADD  CONSTRAINT [DF_DetailSalesforceRecordType_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceRecordType] ADD  CONSTRAINT [DF_SalesforceRecordType_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceRecordType] ADD  CONSTRAINT [DF_DetailSalesforceRecordType_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceSubsidyAuthorization] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyAuthorization_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceSubsidyAuthorization] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyAuthorization_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceSubsidyAuthorization] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyAuthorization_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceSubsidyAuthorization] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyAuthorization_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceSubsidyAuthorization] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyAuthorization_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceSubsidyLineItem] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyLineItem_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceSubsidyLineItem] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyLineItem_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceSubsidyLineItem] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyLineItem_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceSubsidyLineItem] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyLineItem_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceSubsidyLineItem] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyLineItem_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceSubsidyRequest] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyRequest_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceSubsidyRequest] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyRequest_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceSubsidyRequest] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyRequest_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceSubsidyRequest] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyRequest_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceSubsidyRequest] ADD  CONSTRAINT [DF_DetailSalesforceSubsidyRequest_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceTraining] ADD  CONSTRAINT [DF_DetailSalesforceTraining_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceTraining] ADD  CONSTRAINT [DF_DetailSalesforceTraining_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceTraining] ADD  CONSTRAINT [DF_DetailSalesforceTraining_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceTraining] ADD  CONSTRAINT [DF_DetailSalesforceTrainingn_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceTraining] ADD  CONSTRAINT [DF_DetailSalesforceTraining_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SalesforceUser] ADD  CONSTRAINT [DF_DetailSalesforceUser_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Detail].[SalesforceUser] ADD  CONSTRAINT [DF_DetailSalesforceUser_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SalesforceUser] ADD  CONSTRAINT [DF_DetailSalesforceUser_RecordChangeType]  DEFAULT ('N') FOR [RecordChangeType]
GO
ALTER TABLE [Detail].[SalesforceUser] ADD  CONSTRAINT [DF_DetailSalesforceUser_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SalesforceUser] ADD  CONSTRAINT [DF_DetailSalesforceUser_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLConfig].[PackageInfo] ADD  CONSTRAINT [DF_PackageInfo_BypassPackagePrecedence]  DEFAULT ((0)) FOR [BypassPackagePrecedence]
GO
ALTER TABLE [ETLConfig].[PackageLogType] ADD  CONSTRAINT [DF_ETLPackageLogTypee_IsError]  DEFAULT ((0)) FOR [IsError]
GO
ALTER TABLE [ETLConfig].[PackageLogType] ADD  CONSTRAINT [DF_ETLPackageLogType_IsWarning]  DEFAULT ((0)) FOR [IsWarning]
GO
ALTER TABLE [ETLConfig].[PackageLogType] ADD  CONSTRAINT [DF_ETLPackageLogType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ETLConfig].[PackagePrecedence] ADD  CONSTRAINT [DF_PackagePrecedence_PrecedenceActive]  DEFAULT ((1)) FOR [PrecedenceActive]
GO
ALTER TABLE [ETLConfig].[PackagePrecedence] ADD  CONSTRAINT [DF_PackagePrecedence_PrecedenceLastUpdatedOn]  DEFAULT (sysdatetime()) FOR [PrecedenceLastUpdatedOn]
GO
ALTER TABLE [ETLConfig].[PackagePrecedence] ADD  CONSTRAINT [DF_PackagePrecedence_PrecedenceCreatedOn]  DEFAULT (sysdatetime()) FOR [PrecedenceCreatedOn]
GO
ALTER TABLE [ETLImport].[Account] ADD  CONSTRAINT [DF_ETLImportAccount_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Contact] ADD  CONSTRAINT [DF_ETLImportContact_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Contact_Account_Role__c] ADD  CONSTRAINT [DF_ETLImportContactAccountRole_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Electronic_Attendance_Systems__c] ADD  CONSTRAINT [DF_ETLImportElectronicAttendanceSystems_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Lead] ADD  CONSTRAINT [DF_ETLImportLead_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Lead_Associate__c] ADD  CONSTRAINT [DF_ETLImportLeadAssociate_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Program__c] ADD  CONSTRAINT [DF_ETLImportProgram_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Provider_Case__c] ADD  CONSTRAINT [DF_ETLImportProviderCase_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Provider_License__c] ADD  CONSTRAINT [DF_ETLImportProviderLicense_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[RecordType] ADD  CONSTRAINT [DF_ETLImportRecordType_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[SalesforceTableErrors] ADD  CONSTRAINT [DF_ETLSalesforceTableErrors_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[SchemaXMLFiles] ADD  CONSTRAINT [DF_SchemaXMLFiles_InsertDateTime]  DEFAULT (getdate()) FOR [InsertDateTime]
GO
ALTER TABLE [ETLImport].[SchemaXMLFiles] ADD  CONSTRAINT [DF_SchemaXMLFiles_FileHasBeenProcessed]  DEFAULT ((0)) FOR [FileHasBeenProcessed]
GO
ALTER TABLE [ETLImport].[SSISTableErrors] ADD  CONSTRAINT [DF_ETLSSISTableErrors_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Subsidy_Authorization__c] ADD  CONSTRAINT [DF_ETLImportSubsidyAuthorization_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Subsidy_Line_Item__c] ADD  CONSTRAINT [DF_ETLImportSubsidyLineItem_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Subsidy_Request__c] ADD  CONSTRAINT [DF_ETLImportSubsidyRequest_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[Training__c] ADD  CONSTRAINT [DF_ETLImportTraining_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[User] ADD  CONSTRAINT [DF_ETLImportUser_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImportLog].[MessageLog] ADD  CONSTRAINT [DF_ETLMessageLog_LogDateTime]  DEFAULT (sysdatetime()) FOR [LogDateTime]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_PackageStartTime]  DEFAULT (sysdatetime()) FOR [PackageStartTime]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_ImportedRecords]  DEFAULT ((0)) FOR [ImportedRecords]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_InsertedRecords]  DEFAULT ((0)) FOR [InsertedRecords]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_Updated]  DEFAULT ((0)) FOR [UpdatedRecords]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_DeletedRecords]  DEFAULT ((0)) FOR [DeletedRecords]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_ErrorRecords]  DEFAULT ((0)) FOR [ErrorRecords]
GO
ALTER TABLE [ETLImportLog].[PackageLogging] ADD  CONSTRAINT [DF_ETLPackageLogging_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [ETLImportLog].[PackageTaskLog] ADD  CONSTRAINT [DF_ETLPackageTaskLog_PackageID]  DEFAULT ((-1)) FOR [PackageID]
GO
ALTER TABLE [ETLImportLog].[PackageTaskLog] ADD  CONSTRAINT [DF_ETLPackageTaskLog_StartTime]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [ETLImportLog].[PackageTaskLog] ADD  CONSTRAINT [DF_ETLPackageTaskLog_ErrorCount]  DEFAULT ((0)) FOR [ErrorCount]
GO
ALTER TABLE [ETLImportLog].[PackageTaskLog] ADD  CONSTRAINT [DF_ETLPackageTaskLog_WarningCount]  DEFAULT ((0)) FOR [WarningCount]
GO
/****** Object:  StoredProcedure [Config].[spSalesforceExtendedProperty_Update]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Config].[spSalesforceExtendedProperty_Update]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Add/Removes extended properties for the columns with in the database based on the xml data
from saleforce.

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2017-12-22: Created by William Benson (DEL) 

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [Config].[spSalesforceExtendedProperty_Update]
@IsDataMart = 0 --When procedure gets run on ETL Server
,@Debug = 1
;
EXEC [Config].[spSalesforceExtendedProperty_Update]
@IsDataMart = 1 --When procedure gets run on DataMart Server
,@Debug = 1
;

**************************************************************************************************/
CREATE PROCEDURE [Config].[spSalesforceExtendedProperty_Update]
	@IsDataMart AS BIT = 0
	,@Debug AS BIT = 0

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE @DatabaseName VARCHAR(250)
	,@SchemaName VARCHAR(250)
	,@TableName VARCHAR(250)
	,@ColumnName VARCHAR(250)
	,@DescritionValue VARCHAR(1000)
	,@CurrentRecordId SMALLINT
	,@UpdatesExtendedProperty SMALLINT
	,@UpdateStartPoint SMALLINT = 1
	,@RunUpdate BIT = 0
	,@M_ErrorMessage AS VARCHAR(4000)
	,@DebugMsg VARCHAR(MAX)
	;

	DECLARE @tblTablesColumns TABLE (DatabaseName VARCHAR(250), SchemaName VARCHAR(250), TableName VARCHAR(250), ColumnName VARCHAR(250));
	DECLARE @tblSalesforceTablesColumns TABLE (TableName VARCHAR(250), ColumnName VARCHAR(250), ColumnDescription VARCHAR(1000));
	DECLARE @TableColumnsNeedUpdate TABLE (RecordId INT IDENTITY(1,1), TableName VARCHAR(250), ColumnName VARCHAR(250), ColumnDescription VARCHAR(1000), SchemaName VARCHAR(250), DatabaseName VARCHAR(250), RecordProcessed BIT DEFAULT (0));

	--SELECT @UpdateStartPoint = 0;

	INSERT INTO @tblTablesColumns(DatabaseName,SchemaName, TableName, ColumnName)
	SELECT
	DB_NAME() AS DatabaseName
	,SCHEMA_NAME(systbls.[schema_id]) AS sch_name
	,systbls.[name] AS tbl_name
	,sysclmns.[name] AS colmn_Name
	FROM sys.tables AS systbls
	INNER JOIN sys.columns AS sysclmns
		ON systbls.[object_id] = sysclmns.[object_id]
	WHERE systbls.[type] = 'U'
		AND SCHEMA_NAME(systbls.[schema_id]) = 'Detail'
	ORDER BY systbls.[name], sysclmns.column_id;

	IF @Debug = 1
	BEGIN
	SELECT @DebugMsg ='@tblTablesColumns Completed!'
	RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
	END

	IF @IsDataMart = 1
	BEGIN
		INSERT INTO @tblSalesforceTablesColumns(TableName, ColumnName, ColumnDescription)
		SELECT
		sfom.DataMartTableName
		, FieldName
		,REPLACE(REPLACE(FieldDescription, char(13), ''), char(10), '') AS FieldDescription
		FROM Config.SalesforceFields AS sff
		INNER JOIN Config.SalesforceObjectMapping AS sfom
		ON sff.ObjectNameSalesforce = sfom.SalesForceObjectName;

		IF @Debug = 1
		BEGIN
		SELECT @DebugMsg ='@tblSalesforceTablesColumns DataMart Completed!'
		RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
		END

	END
	ELSE
	BEGIN
		INSERT INTO @tblSalesforceTablesColumns(TableName, ColumnName, ColumnDescription)
		SELECT
		sfom.[TableName]
		, FieldName
		,REPLACE(REPLACE(FieldDescription, char(13), ''), char(10), '') AS FieldDescription
		FROM Config.SalesforceFields AS sff
		INNER JOIN [Config].[SalesforceObjectMapping] AS sfom
		ON sff.ObjectNameSalesforce = sfom.[SalesForceObjectName];

		IF @Debug = 1
		BEGIN
		SELECT @DebugMsg ='@tblSalesforceTablesColumns Completed!'
		RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
		END

	END

	INSERT INTO @TableColumnsNeedUpdate(TableName, ColumnName, ColumnDescription, SchemaName, DatabaseName)
		SELECT
		sftc.TableName
		,sftc.ColumnName
		,sftc.ColumnDescription
		,systc.SchemaName
		,systc.DatabaseName
		FROM @tblSalesforceTablesColumns AS sftc
		INNER JOIN @tblTablesColumns AS systc
		ON sftc.TableName = systc.TableName
		AND sftc.ColumnName = systc.ColumnName
		WHERE sftc.ColumnDescription IS NOT NULL;

	SELECT @UpdatesExtendedProperty = @@ROWCOUNT;

	IF @Debug = 1
	BEGIN
	SELECT @DebugMsg ='@TableColumnsNeedUpdate Completed!' + ' Table Row Count: ' + CAST(@UpdatesExtendedProperty AS VARCHAR(10)) 
	RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
	END

	/* select for testing 
	SELECT
	RecordId
	,DatabaseName
	,SchemaName
	,TableName
	,ColumnName
	,ColumnDescription
	,RecordProcessed
	FROM @TableColumnsNeedUpdate */


	IF @UpdatesExtendedProperty > 0
	BEGIN
		SELECT @RunUpdate = 1
	END

	IF @RunUpdate = 1
	BEGIN TRY
		BEGIN

			WHILE @UpdateStartPoint <= @UpdatesExtendedProperty
			BEGIN

				/* select record to add and or remove the extended property */
				SELECT TOP 1
				@DatabaseName = DatabaseName
				,@SchemaName = SchemaName
				,@TableName = TableName
				,@ColumnName = ColumnName
				,@DescritionValue = ColumnDescription
				,@CurrentRecordId = RecordId
				FROM @TableColumnsNeedUpdate
				WHERE RecordProcessed = 0;

				IF @Debug = 1
				BEGIN
				SELECT @DebugMsg = @SchemaName + '.' + @TableName + '.' + @ColumnName + ' Started!'
				RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
				END
		

				IF EXISTS (SELECT NULL FROM SYS.EXTENDED_PROPERTIES WHERE [major_id] = OBJECT_ID(@SchemaName + '.' + @TableName) AND [name] = N'MS_Description' AND [minor_id] = (
					SELECT [column_id] FROM SYS.COLUMNS WHERE [name] = @ColumnName AND [object_id] = OBJECT_ID(@SchemaName + '.' + @TableName)))
				BEGIN
					/* remove column extended property */	
					EXEC sp_dropextendedproperty @name = N'MS_Description'  
					,@level0type = N'SCHEMA'   
					,@level0name = @SchemaName  
					,@level1type = N'TABLE'  
					,@level1name = @TableName  
					,@level2type = N'COLUMN'
					,@level2name = @ColumnName;

					IF @Debug = 1
					BEGIN
					SELECT @DebugMsg = @SchemaName + '.' + @TableName + '.' + @ColumnName + ' Removed Extended Property!'
					RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
					END

				END

				/* add column extended property */
				EXEC sys.sp_addextendedproperty @name=N'MS_Description'
				,@level0type = N'SCHEMA'
				,@level0name = @SchemaName
				,@level1type = N'TABLE'
				,@level1name = @TableName
				,@level2type = N'COLUMN'
				,@level2name = @ColumnName
				,@value = @DescritionValue;

				IF @Debug = 1
				BEGIN
				SELECT @DebugMsg = @SchemaName + '.' + @TableName + '.' + @ColumnName + ' Added Extended Property!'
				RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
				END


				/* updated the temp table for the column we just updated */
				UPDATE @TableColumnsNeedUpdate
				SET RecordProcessed = 1
				WHERE RecordId = @CurrentRecordId;

				/* increment our loop counter by 1 */
				SELECT @UpdateStartPoint = @UpdateStartPoint + 1

				IF @Debug = 1
				BEGIN
				SELECT @DebugMsg = @SchemaName + '.' + @TableName + '.' + @ColumnName + ' Updated!'
				RAISERROR (@DebugMsg, 0, 1) WITH NOWAIT
				END


				END
			END
	END TRY
	BEGIN CATCH
	    
		/** Raise an error with the details of the exception **/
		DECLARE @ErrMsg NVARCHAR(4000)
		, @ErrorMessage NVARCHAR(4000)
		, @ErrorSeverity SMALLINT
		, @E_DatabaseName VARCHAR(100)
		, @E_SchemaName VARCHAR(100)
		, @E_ProcedureName VARCHAR(255) ;        
            
		/** Grab specific information about the error/object **/
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) ;                   
                
		SET @ErrMsg = @ErrorMessage + ' (Severity ' + CAST(@ErrorSeverity AS varchar) + ')';   
                                                                                                                                                     
		/** Raise the error message **/
		RAISERROR (@ErrMsg, 18, 1) ;
            
	END CATCH

END
GO
/****** Object:  StoredProcedure [Config].[spSalesforceMetaDataUpdate]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Config].[spSalesforceMetaDataUpdate]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Merges the table information from the XML files to the config tables.

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2017-11-09: Created by William Benson (DEL) 

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [Config].[spSalesforceMetaDataUpdate]
@Debug = 1


**************************************************************************************************/
CREATE PROCEDURE [Config].[spSalesforceMetaDataUpdate]

	@Debug AS BIT = 0 /** Flag to debug the code for testing **/

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE @ErrMsg NVARCHAR(4000)
		, @ErrorMessage NVARCHAR(4000)
		, @ErrorSeverity SMALLINT
		, @E_DatabaseName VARCHAR(100)
		, @E_SchemaName VARCHAR(100)
		, @E_ProcedureName VARCHAR(255)
		, @M_ErrorMessage AS VARCHAR(4000)
		, @E_ErrorLineNumber AS SMALLINT
	; 

	BEGIN TRY
	;

		/* Merge new object inforamtion with current object information */
		WITH cte_xmltablename  AS
		(
		SELECT
		CASE WHEN CHARINDEX('__',[FileName]) > 0 THEN SUBSTRING([FileName], 1,CHARINDEX('__',[FileName]) - 1)
			WHEN CHARINDEX('__',[FileName]) = 0 AND CHARINDEX('.',[FileName]) > 0 THEN SUBSTRING([FileName], 1,CHARINDEX('.',[FileName]) - 1)
			ELSE [FileName]
		END AS TableName
		, CASE WHEN CHARINDEX('.',[FileName]) > 0 THEN SUBSTRING([FileName], 1,CHARINDEX('.',[FileName]) - 1)
			ELSE [FileName]
		END AS [SalesforceTableName]
		,CASE WHEN CHARINDEX('__c',[FileName]) > 0 THEN 1
			ELSE 0
		END AS [SalesforceCustomObject]
		FROM [ETLImport].[SchemaXMLFiles]
		)
		MERGE [Config].[SalesforceObjects] AS trgtbl
		USING cte_xmltablename AS srctbl
			ON (trgtbl.[ObjectNameSalesforce] = srctbl.[SalesforceTableName])
			WHEN MATCHED THEN
				UPDATE SET[ObjectLastUpdatedOn] = SYSDATETIME()
			WHEN NOT MATCHED THEN
				INSERT([ObjectName],[ObjectNameSalesforce],[ObjectIsCustom])
				VALUES(srctbl.TableName, srctbl.SalesforceTableName,srctbl.SalesforceCustomObject);

		/* Merge new field information with current field information */
		MERGE [Config].[SalesForceFields] AS trgtbl
		USING [ETLImport].[SalesForceXML] AS srctbl
			ON trgtbl.[FieldId] = srctbl.[fields_Id]
			AND trgtbl.[FieldName] = srctbl.[fullName]
			AND trgtbl.[ObjectNameSalesforce] = srctbl.[SaleforceTableName]
			WHEN MATCHED THEN
				UPDATE SET
				trgtbl.[FieldCaseSensitive] = srctbl.[caseSensitive]
				,trgtbl.[FieldDefaultValue] = srctbl.[defaultValue]
				,trgtbl.[FieldDescription] = srctbl.[description]
				,trgtbl.[FieldExternalId] = srctbl.[externalId]
				,trgtbl.[FieldFormula] = srctbl.[formula]
				,trgtbl.[FieldInlineHelpText] = srctbl.[inlineHelpText]
				,trgtbl.[FieldLabel] = srctbl.[label]
				,trgtbl.[FieldLength] = srctbl.[length]
				,trgtbl.[FieldReferenceTo] = srctbl.[referenceTo]
				,trgtbl.[FieldRelationshipLabel] = srctbl.[relationshipLabel]
				,trgtbl.[FieldRelationshipName] = srctbl.[relationshipName]
				,trgtbl.[FieldRelationshipOrder] = srctbl.[relationshipOrder]
				,trgtbl.[FieldReparentableMasterDetail] = srctbl.[reparentableMasterDetail]
				,trgtbl.[FieldPrecision] = srctbl.[precision]
				,trgtbl.[FieldRequired] = srctbl.[required]
				,trgtbl.[FieldScale] = srctbl.[scale]
				,trgtbl.[FieldTrackHistory] = srctbl.[trackHistory]
				,trgtbl.[FieldType] = srctbl.[type]
				,trgtbl.[FieldLastUpdatedOn] = SYSDATETIME()
			WHEN NOT MATCHED THEN
				INSERT (
				[FieldId]
				,[FieldName]
				,[FieldCaseSensitive]
				,[FieldDefaultValue]
				,[FieldDescription]
				,[FieldExternalId]
				,[FieldFormula]
				,[FieldInlineHelpText]
				,[FieldLabel]
				,[FieldLength]
				,[FieldReferenceTo]
				,[FieldRelationshipLabel]
				,[FieldRelationshipName]
				,[FieldRelationshipOrder]
				,[FieldReparentableMasterDetail]
				,[FieldPrecision]
				,[FieldRequired]
				,[FieldScale]
				,[FieldTrackHistory]
				,[FieldType]
				,[ObjectNameSalesforce])
				VALUES (
				srctbl.[fields_Id]
				,srctbl.[fullName]
				,srctbl.[caseSensitive]
				,srctbl.[defaultValue]
				,srctbl.[description]
				,srctbl.[externalId]
				,srctbl.[formula]
				,srctbl.[inlineHelpText]
				,srctbl.[label]
				,CASE WHEN ISNUMERIC(srctbl.[length]) = 1 THEN CONVERT(INT,srctbl.[length]) ELSE NULL END
				,srctbl.[referenceTo]
				,srctbl.[relationshipLabel]
				,srctbl.[relationshipName]
				,srctbl.[relationshipOrder]
				,srctbl.[ReparentableMasterDetail]
				,srctbl.[precision]
				,srctbl.[required]
				,srctbl.[scale]
				,srctbl.[trackHistory]
				,srctbl.[type]
				,srctbl.[SaleforceTableName]);

		/* Update the objectId field with the object number from SalesforceObjects*/
		UPDATE trgt
		SET trgt.ObjectId = obj.ObjecId
		FROM [Config].[SalesforceFields] AS trgt
		INNER JOIN [Config].[SalesforceObjects] AS obj
		ON trgt.ObjectNameSalesforce = obj.ObjectNameSalesforce
		WHERE trgt.ObjectId IS NULL;

		/* Update the FieldReferenceToId field with the object number from SalesforceObjects*/
		UPDATE trgt
		SET trgt.FieldReferenceToId = obj.ObjecId
		FROM [Config].[SalesforceFields] AS trgt
		INNER JOIN [Config].[SalesforceObjects] AS obj
		ON trgt.FieldReferenceTo = obj.ObjectNameSalesforce
		WHERE trgt.FieldReferenceToId IS NULL;

	/* Check if we are currently replicating the item to the server 

	--	/* Update the ObjectIsReplicated column for the new data and remove any that were already flaged */
	--	UPDATE scrtbl
	--	SET [ObjectIsReplicated] = CASE WHEN sfrep.TableName IS NOT NULL THEN 1 ELSE 0 END
	--	FROM [Config].[tblSalesforceObjects] scrtbl
	--	LEFT OUTER JOIN (SELECT [name] AS TableName FROM SalesForceReplication.sys.tables AS systbls WHERE systbls.[type] = 'U') AS sfrep
	--		ON scrtbl.ObjectNameSalesforce = sfrep.TableName;
	*/

	END TRY
	BEGIN CATCH
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID)
		, @E_ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ') ';   
                                                                                                                                                     
		RAISERROR (@ErrMsg, 18, 1);

	END CATCH

END
GO
/****** Object:  StoredProcedure [ETLImport].[spCheckPackagePrecedence]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[spCheckPackagePrecedence]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-29: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
[ETLImport].[spCheckPackagePrecedence]
	@PackageId = 8
**************************************************************************************************/

CREATE PROC [ETLImport].[spCheckPackagePrecedence]
	@PackageId AS SMALLINT
	,@Debug AS BIT = 0
AS

BEGIN
	SET NOCOUNT ON;

	DECLARE @PrecedenceTable TABLE(ParentPackageId SMALLINT);
	DECLARE @PackageTable TABLE(PackageId SMALLINT, RecordId BIGINT);
	DECLARE @PrecedenceCount SMALLINT
	, @PrecedenceIsBypassed BIT
	;

	SELECT @PrecedenceIsBypassed = [BypassPackagePrecedence] FROM [ETLConfig].[PackageInfo] WHERE PackageId = @PackageId;

	INSERT INTO @PrecedenceTable(ParentPackageId)
	SELECT
	ParentPackageId
	FROM  ETLConfig.PackagePrecedence
	WHERE ChildPackageId = @PackageId
		AND PrecedenceActive = 1

	SELECT @PrecedenceCount = @@ROWCOUNT;

	IF @PrecedenceCount > 0 AND @PrecedenceIsBypassed  = 0
	BEGIN

		INSERT INTO @PackageTable(PackageId,RecordId)
		SELECT 
		[PackageId] 
		, MAX(RecordId) AS MaxRecordId
		FROM [ETLImportLog].[PackageLogging] AS pkglog
		INNER JOIN @PrecedenceTable AS pred
		ON pkglog.PackageId = pred.ParentPackageId
		GROUP BY [PackageId]

		SELECT
		CASE WHEN PrecedenceCount = CompletedCount THEN 1 ELSE 0 END AS PassedTableCheck
		, CASE WHEN PrecedenceCount = CompletedCount THEN 'Precedence Successful' ELSE 'Precedence Failed' END AS PrecedentMessage
		FROM (
		SELECT
		@PrecedenceCount AS PrecedenceCount
		, SUM(CASE WHEN pkglog.CompletedSuccessfully = 1 THEN 1 ELSE 0 END) AS CompletedCount
		FROM @PackageTable AS pkgp
		LEFT OUTER JOIN [ETLImportLog].[PackageLogging] AS pkglog
		ON pkgp.[PackageId] = pkglog.[PackageId]
		AND pkgp.[RecordId] = pkglog.[RecordId]
		) tblCheckPrecedence

	END
	ELSE
	BEGIN

		SELECT 1 AS PassedTableCheck
		, CASE WHEN @PrecedenceIsBypassed = 1 THEN 'Precedence Bypassed'
			ELSE 'Precedence Successful'
		END AS PrecedentMessage

	END

END
GO
/****** Object:  StoredProcedure [ETLImport].[spCleanUpColumnDataByLength]    Script Date: 9/7/2021 2:21:18 PM ******/
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
	SELECT @SQLStatementEnd = 'FROM [' + @SchemaName + '].[' + @TableName + '] AS trgt';

	INSERT INTO @tblColumnList(ColumnName)
	SELECT
	COLUMN_NAME
	FROM information_schema.columns
	WHERE TABLE_CATALOG = @DatabaseName
	AND TABLE_SCHEMA = @SchemaName
	AND TABLE_NAME = @TableName
	AND CHARACTER_MAXIMUM_LENGTH IS NOT NULL
	ORDER BY COLUMN_NAME;

	SELECT @TableColumnCount = @@ROWCOUNT;

	IF @Debug = 1
	BEGIN
		PRINT @TableColumnCount;
	END

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

		IF @Debug = 1
		BEGIN
			PRINT @ColumnName;
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
/****** Object:  StoredProcedure [ETLImport].[spGetMinDatetimePackageSuccessful]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[spGetMinDatetimePackageSuccessful]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2020-05-03: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
[ETLImport].[spGetMinDatetimePackageSuccessful]
	@PackageId = 56
    ,@DaysBackToCheck = 2
    --,@DefaultStartDatetime = '2018-01-01'
	--,@Debug = 0
**************************************************************************************************/

CREATE PROC [ETLImport].[spGetMinDatetimePackageSuccessful]
@PackageId AS SMALLINT
    ,@DaysBackToCheck TINYINT = 2
    ,@DefaultStartDatetime datetime2(3) = '2018-01-01'
	,@Debug AS BIT = 0
AS

BEGIN
	SET NOCOUNT ON;

    DECLARE @StartDate datetime2(3) = CONVERT(CHAR(10), DATEADD(DAY, -@DaysBackToCheck, SYSDATETIME()), 121)
    , @MinStartDatetimeForRecords datetime2(3)
    , @StartDatetimeForRecords datetime2(3)

    IF @Debug = 1
    BEGIN
        PRINT @StartDate
    END

    SELECT 
    @MinStartDatetimeForRecords = MIN([PackageStartTime])
    FROM [WACompass].[ETLImportLog].[PackageLogging]
    WHERE PackageId = @PackageId
    AND PackageStartTime >= @StartDate
    AND CompletedSuccessfully = 1

    IF @MinStartDatetimeForRecords IS NULL
    BEGIN
        SELECT @MinStartDatetimeForRecords = @DefaultStartDatetime
    END

    SELECT @StartDatetimeForRecords = CONVERT(CHAR(10), @MinStartDatetimeForRecords, 121)
    
    SELECT @StartDatetimeForRecords AS StartDatetimeForRecords

END
GO
/****** Object:  StoredProcedure [ETLImport].[spGetPackageReport]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[dbNatlSalesOps].ImportLogging.spGetPackageReport

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Inserts a new Log Message from Import Package (SSIS)

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
04/30/2015: Created by wbenson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************


**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE [dbNatlSalesOps]
GO

EXEC [ETLImport].spGetPackageReport
 @StartDate = 

**************************************************************************************************/
CREATE PROCEDURE [ETLImport].[spGetPackageReport] @StartDate DATETIME = NULL
AS
BEGIN

    SET NOCOUNT ON;

    DECLARE @MSG VARCHAR(4000)
           ,@SUB VARCHAR(400)
           ,@Address VARCHAR(400)
           ,@SendEmail BIT
           ,@LastJobSessionId SMALLINT
           ,@RecordCount SMALLINT
           ,@DateForReport DATETIME;

    DECLARE @tblLastPackageRun TABLE
    (
        [PackageId] SMALLINT
       ,LastPackageRunId INT
    );
    DECLARE @tblPackageDetail TABLE
    (
        [PackageName] VARCHAR(150)
       ,[PackageId] SMALLINT
       ,[LastPackageRunId] INT
       ,[PackageStartTime] DATETIME
       ,[PackageEndTime] DATETIME
       ,[PackageRunTime] VARCHAR(25)
       ,[PrecedentSatisfied] VARCHAR(25)
       ,[DataImportDate] DATETIME
       ,[ImportedRecords] INT
       ,[InsertedRecords] INT
	   ,[UpdatedRecords] INT
	   ,[DeletedRecords] INT
	   ,[ErrorRecords] INT
       ,[CompletedSuccessfully] VARCHAR(25)
	   ,[PackageLogNotes] VARCHAR(4000)
	   ,[JobId] UNIQUEIDENTIFIER
       ,[InsertDateTime] DATETIME
       ,[run_requested_date] DATETIME
       ,[job_history_id] INT
       ,[stop_execution_date] DATETIME
       ,[IsRunning] VARCHAR(10)
       ,[next_scheduled_run_date] DATETIME
    );
	DECLARE @SSISPackageJobId TABLE
	(JobId UNIQUEIDENTIFIER
	, SSISPackageName VARCHAR(250)
	)

    IF @StartDate IS NULL
       OR ISDATE(@StartDate) = 0
    BEGIN
        SELECT @StartDate = CONVERT(CHAR(10), GETDATE()-10, 121);
    END;

    SELECT @SendEmail = 0;

    SELECT @LastJobSessionId = MAX(session_id)
    FROM msdb.dbo.sysjobactivity;

	INSERT INTO @SSISPackageJobId
	(JobId
	,SSISPackageName
	)
	SELECT
	[job_id]
	,REPLACE(REVERSE(SUBSTRING(REVERSE(command),CHARINDEX('xstd.',REVERSE(command)),CHARINDEX('\',REVERSE(command),CHARINDEX('xstd.',REVERSE(command))) - CHARINDEX('xstd.',REVERSE(command)))), '.dtsx', '') AS SSISPackageName
	FROM [msdb].[dbo].[sysjobsteps]
	WHERE subsystem = 'SSIS'
		AND CHARINDEX('xstd.',REVERSE(command)) > 0
	;


    INSERT INTO @tblLastPackageRun
    (
        [PackageId]
       ,LastPackageRunId
    )
    SELECT [PackageId]
    ,MAX([RecordId]) LastPackageRun
    FROM [ETLImportLog].[PackageLogging]
    WHERE PackageStartTime >= @StartDate
    GROUP BY [PackageId];

    INSERT INTO @tblPackageDetail
    (
        [PackageName]
       ,[PackageId]
       ,LastPackageRunId
       ,[PackageStartTime]
       ,[PackageEndTime]
       ,[PackageRunTime]
       ,[PrecedentSatisfied]
       ,[DataImportDate]
       ,[ImportedRecords]
	   ,[InsertedRecords]
	   ,[UpdatedRecords]
	   ,[DeletedRecords]
	   ,[ErrorRecords]
       ,[CompletedSuccessfully]
	   ,[PackageLogNotes]
	   ,[JobId]
       ,[InsertDateTime]
       ,[run_requested_date]
       ,[job_history_id]
       ,[stop_execution_date]
       ,[IsRunning]
       ,[next_scheduled_run_date]
    )
    SELECT tblpkg.[PackageName]
          ,tblpkg.[PackageId]
          ,tbllstr.[LastPackageRunId]
          ,tblpkgl.[PackageStartTime]
          ,tblpkgl.[PackageEndTime]
          ,Utilities.udfFormatTime(DATEDIFF(S, [PackageStartTime], [PackageEndTime]), 'S', '%M% Min %S% Sec') AS [PackageRunTime]
          ,CASE
               WHEN tblpkgl.[PrecedentSatisfied] = 1 THEN
                   'Yes'
               WHEN tblpkgl.[PrecedentSatisfied] = 0 THEN
                   'No'
           END AS [PrecedentSatisfied]
          ,tblpkgl.[DataImportDate] AS [DataImportDate]
          ,ISNULL(tblpkgl.[ImportedRecords], 0) AS [ImportedRecords]
          ,ISNULL(tblpkgl.[InsertedRecords], 0) AS [InsertedRecords]
		  ,ISNULL(tblpkgl.[UpdatedRecords], 0) AS [UpdatedRecords]
		  ,ISNULL(tblpkgl.[DeletedRecords], 0) AS [DeletedRecords]
		  ,ISNULL(tblpkgl.[ErrorRecords], 0) AS [ErrorRecords]
          ,CASE
               WHEN tblpkgl.[CompletedSuccessfully] = 1 THEN
                   'Yes'
               WHEN tblpkgl.[CompletedSuccessfully] = 0 THEN
                   'No'
           END AS [CompletedSuccessfully]
		  ,tblpkgl.[PackageLogNotes]
		  ,tblssisjb.JobId
          ,tblpkgl.[InsertDateTime]
          ,sysja.[run_requested_date]
          ,sysja.[job_history_id]
          ,sysja.[stop_execution_date]
          ,CASE
               WHEN sysja.[stop_execution_date] IS NULL
                    AND sysja.[run_requested_date] IS NOT NULL THEN
                   'Yes'
               ELSE
                   'No'
           END AS [IsRunning]
          ,sysja.[next_scheduled_run_date]
    FROM [ETLConfig].[PackageInfo] tblpkg

        LEFT OUTER JOIN @tblLastPackageRun tbllstr
            ON tblpkg.PackageId = tbllstr.PackageId

        LEFT OUTER JOIN [ETLImportLog].[PackageLogging] tblpkgl
            ON tbllstr.PackageId = tblpkgl.PackageId
               AND tbllstr.LastPackageRunId = tblpkgl.RecordId

        LEFT OUTER JOIN @SSISPackageJobId AS tblssisjb
			ON tblpkg.[PackageName] = tblssisjb.SSISPackageName

		LEFT OUTER JOIN msdb.dbo.sysjobs sysjb
	        ON tblssisjb.JobId = sysjb.job_id

        LEFT OUTER JOIN msdb.dbo.sysjobactivity sysja
            ON sysjb.job_id = sysja.job_id
               AND sysja.session_id = @LastJobSessionId
    WHERE tblpkg.IsActive = 1;

    SELECT @RecordCount = @@ROWCOUNT;


    SELECT [PackageName]
          ,[PackageId]
          ,[LastPackageRunId]
		  ,[CompletedSuccessfully]
		  ,[PackageLogNotes]
          ,[PackageStartTime]
          ,[PackageEndTime]
          ,[PackageRunTime]
          ,[PrecedentSatisfied]
          ,[DataImportDate]
		  ,[DataImportDate]
          ,[ImportedRecords]
          ,[InsertedRecords]
		  ,[UpdatedRecords]
		  ,[DeletedRecords]
		  ,[ErrorRecords]
		  ,[InsertDateTime]
          ,[run_requested_date]
          ,[job_history_id]
          ,[stop_execution_date]
          ,[IsRunning]
          ,[next_scheduled_run_date]
		  ,[JobId]
    FROM @tblPackageDetail
    ORDER BY [PackageStartTime] DESC;

    /**

IF @RecordCount > 0
BEGIN
	SELECT @SendEmail = 1
END

	SET @Address = 'Bill.Benson1@verizonwireless.com;'

	SET @SUB = 'National Distrobution Package Status'; --Add Date

	SET @MSG = '<html><head><title></title></head><body>'
		+ '<div style="font: 12pt/16pt Calibri">Currnet Status of Import based on Packages</div>'

	SET @MSG = @MSG + '<div style="font: 12pt/16pt Calibri; margin-top:10px">The data below is a status of all active pacakges</div>' +
		N'<table border="1" Bordercolor=black Cellspacing="0" Cellpadding="2" style="font:12px Arial">' +
		N'<tr style="color:white">' +
		N'<th BGCOLOR="black">Package Name</th>' +
		N'<th BGCOLOR="black">Package Start Time</th>' +
		N'<th BGCOLOR="black">Package End Time</th>' +
		N'<th BGCOLOR="black">Package Run Time</th>' +
		N'<th BGCOLOR="black">Is Running</th>' +
		N'<th BGCOLOR="black">Precedent Satisfied</th>' +
		N'<th BGCOLOR="black">Completed Successfully</th>' +
		N'<th BGCOLOR="black">Imported Records</th>' +
		N'<th BGCOLOR="black">Deleted Records</th>' +
		N'<th BGCOLOR="black">Inserted Records</th>' +		
		N'<th BGCOLOR="black">Last Job Start Date</th>' +
		N'<th BGCOLOR="black">Last Job Stop Date</th>' +
		N'<th BGCOLOR="black">[Next Job Start Date</th></tr>' +		
		CAST ((SELECT
			td = tblpkl.[PackageName], '',
			td = CONVERT(VARCHAR(19), tblpkl.[PackageStartTime], 121), '',
			td = CONVERT(VARCHAR(19), tblpkl.[PackageEndTime], 121), '',
			td = Utilities.udfFormatTime(DATEDIFF(S, tblpkl.[PackageStartTime], tblpkl.[PackageEndTime]), 'S', '%M% Min %S% Sec') , '',
			td = tblpkl.[IsRunning], '',
			td = tblpkl.[PrecedentSatisfied], '',
			td = tblpkl.[CompletedSuccessfully], '',
			td = tblpkl.[ImportedRecords], '',
			td = tblpkl.[DeletedRecords], '',
			td = tblpkl.[InsertedRecords], '',
			td = ISNULL(CONVERT(VARCHAR(19), tblpkl.[run_requested_date], 121), 'N/A'), '',
			td = ISNULL(CONVERT(VARCHAR(19), tblpkl.[stop_execution_date], 121), 'N/A'), '',
			td = ISNULL(CONVERT(VARCHAR(19), tblpkl.[next_scheduled_run_date], 121), 'N/A'), ''			
			FROM @tblPackageDetail AS tblpkl
			ORDER BY tblpkl.[PackageName] DESC
			FOR XML PATH('tr'), TYPE 
	) AS NVARCHAR(MAX)) +
	N'</table></!div></div>';

	--PRINT @MSG

	IF @SendEmail = 1
	BEGIN
		EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Natl_Distribution_Communications'
			, @recipients = @Address
			, @body = @MSG
			, @subject = @SUB
			, @body_format = 'HTML' 
			, @importance = 'High'
		;
	END
**/
    SET NOCOUNT OFF;

END;
GO
/****** Object:  StoredProcedure [ETLImport].[spRemovePrevSalesforceTableErrors]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[spRemovePrevSalesforceTableErrors]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Removed logged errors from the salesforce import.

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
01/08/2018: Created by william.benson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImport].[spRemovePrevSalesforceTableErrors]
 @@PriorDateToRemove = '2017-12-08'

**************************************************************************************************/
CREATE PROCEDURE [ETLImport].[spRemovePrevSalesforceTableErrors]
	 @PriorDateToRemove datetime = NULL

AS

BEGIN
	
	SET NOCOUNT ON;

	IF @PriorDateToRemove IS NULL
	BEGIN
		SELECT @PriorDateToRemove = CONVERT(CHAR(10), DATEADD(DAY, -30, SYSDATETIME()), 121);
	END

	BEGIN TRY
		DELETE FROM [ETLImport].[SalesforceTableErrors]
		WHERE [InsertDatetime] <= @PriorDateToRemove;
	END TRY

	BEGIN CATCH
			/** Raise an error with the details of the exception **/
			DECLARE @ErrMsg NVARCHAR(4000)
			, @ErrorMessage NVARCHAR(4000)
			, @ErrorSeverity SMALLINT
			, @E_DatabaseName VARCHAR(100)
			, @E_SchemaName VARCHAR(100)
			, @E_ProcedureName VARCHAR(255) ;        
            
			/** Grab specific information about the error/object **/
			SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) ;                   
                
			SET @ErrMsg = @ErrorMessage + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')';   
                                                                                                                                                     
			/** Raise the error message **/
			RAISERROR (@ErrMsg, 18, 1) ;


	END CATCH

END
GO
/****** Object:  StoredProcedure [ETLImport].[spSelectCurrentPackageStatus]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[spSelectCurrentPackageStatus]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-29: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImport].[spSelectCurrentPackageStatus]
	@PackageName = 'WaCompassAccountImport'
**************************************************************************************************/

CREATE PROC [ETLImport].[spSelectCurrentPackageStatus]
	@PackageName AS VARCHAR(150)
	--,@PackageUniqueIdentifier AS UNIQUEIDENTIFIER = NULL

AS

BEGIN
	SET NOCOUNT ON;
	
	DECLARE @RecordCount AS TINYINT
	,@SSISDBPackageId AS INT
	,@M_ErrorMessage AS VARCHAR(4000)
	;
	
	SELECT @RecordCount = COUNT(1) FROM [ETLConfig].[PackageInfo] WHERE [PackageName] =	@PackageName
	;
	
	IF @RecordCount = 0
		BEGIN
			SET @M_ErrorMessage = 'No package information for package name: ' + @PackageName + '.' ;
			RAISERROR (@M_ErrorMessage, 18, 1) ;
		END
	
	--SELECT
	--@SSISDBPackageId = catpkg.package_id
	--FROM SSISDB.Catalog.packages AS catpkg
	--WHERE catpkg.package_guid = @PackageUniqueIdentifier;

	SELECT 
	[PackageId]
	--,[SourceServerName] --No Longer used
	--,[DestinationServerName] --No Longer used
	--,[ETLServerName] --No Longer used
	--, [SourceDatabase] --No Longer used
	, CASE WHEN [ReadyToRun] = 1 AND ClearToRun = 0 THEN 0 
		WHEN [ReadyToRun] = 0 AND ClearToRun = 0 THEN 0
		WHEN ManualOverride = 1 THEN 1
		WHEN RunsMultipleTimes = 1 THEN 1
		WHEN [ReadyToRun] = 1 THEN 1
		ELSE 0
	END AS [ReadyToRun]
	--,@SSISDBPackageId AS SSISDBPackageId
	FROM [ETLConfig].[PackageInfo]
	WHERE [PackageName] = @PackageName
	;


	
END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spErrorLogTableDetailEmail]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spErrorLogTableDetailEmail]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
This procedure pulls the list of error rows that were insert based on the package name and the 
date the package was run
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-05-07: Created by william benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].[spErrorLogTableDetailEmail]
@PackageName = 'BranaghFacilityImport'
, @BeginDate = '2018-05-08'

**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spErrorLogTableDetailEmail]
@PackageName NVARCHAR(500)
,@BeginDate DATETIME
,@ServerName NVARCHAR(500) = NULL
,@Debug BIT = 0

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE @ColumErrorCount AS INT = 0
	,@Message AS VARCHAR(4000) --Mesage body of the email
	;


	IF @ServerName IS NULL
	BEGIN
		SELECT @ServerName = @@SERVERNAME
	END

	SELECT @ColumErrorCount = COUNT(1) FROM [ETLImport].[SSISTableErrors] WHERE [PackageName] = @PackageName AND InsertDatetime >= @BeginDate;

	PRINT @ColumErrorCount

	IF @ColumErrorCount > 0
	BEGIN
	
		SET @Message = 'Content-Type: text/html;' + CHAR(13)+CHAR(13);
		
		SET @Message = @Message + '<html>' + '<body style="font: 12px Arial;">'
				+ '<div id="intro2" style="width:670px;">Error rows for ' + @PackageName + ' that failed '
				+ '.' + '<br><br>' ;
            
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of record import errors below'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>Package Task Name</td>'
			+ N'<td>Column Error Description</td>'
			+ N'<td>Error Description</td>'
			+ N'<td>Error Insert Datetime</td>'
			+'</tr>'
			+ CAST((SELECT
				"td/@align" = 'CENTER'
				, td = colmnerr.[PackageTaskName]
				, ''
				, "td/@align" = 'LEFT'
				, td = colmnerr.[ErrorColumnName]
				, ''
				, "td/@align" = 'LEFT'
				, td = colmnerr.[ErrorDescription]
				, ''
				, "td/@align" = 'CENTER'
				, td = COALESCE(CAST([InsertDatetime] AS VARCHAR(10)), 'N/A')
				FROM [WACompass].[ETLImport].[SSISTableErrors] AS colmnerr
				WHERE colmnerr.[PackageName] = @PackageName
				AND colmnerr.InsertDatetime >= @BeginDate
				ORDER BY InsertDatetime DESC
			FOR
				XML PATH('tr')
					, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;

			SET @Message = @Message
				+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
				+ '<div style="margin-top:10px;"> '
				+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
				+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
				+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
				+ '</body></html>'

			SELECT @Message AS MessageBody;

		END
		ELSE
		BEGIN

			SELECT @Message = 'Sorry we there were no error records found!'
			SELECT @Message AS MessageBody;

		END

END
GO
/****** Object:  StoredProcedure [ETLImportLog].[spGetPackageLogging]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spGetPackageLogging]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2016-01-19: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].[spGetPackageLogging]
	@PackageId = 1
	, @Debug = 1

USE dbNatlSalesOps
GO	
EXEC[ETLImportLog].[spGetPackageLogging]
	@PackageName = 'NatilOps_NPS_ETL'
	, @Debug = 1
**************************************************************************************************/

CREATE PROC [ETLImportLog].[spGetPackageLogging]
	@PackageId AS SMALLINT = NULL
	, @PackageName AS VARCHAR(150) = NULL
	, @Debug AS BIT = 0

AS

BEGIN
	SET NOCOUNT ON;

	DECLARE @PackageIdSearch smallint
	, @M_ErrorMessage AS VARCHAR(4000)
	, @PackageLogId int
	
	
	IF @Debug = 1 
	BEGIN
		PRINT '------------ Beging Debug Inoformation ----------------' ;
		PRINT '@PackageId: ' + ISNULL(CAST(@PackageId AS VARCHAR(100)), 'NULL') ;
		PRINT '@PackageName: ' + ISNULL(CAST(@PackageName AS VARCHAR(100)), 'NULL') ;
	END
	
	IF (@PackageId IS NOT NULL AND ISNUMERIC(@PackageId) = 1) AND @PackageIdSearch IS NULL
	BEGIN
	
		SELECT @PackageIdSearch = PackageId
		FROM ETLConfig.PackageInfo
		WHERE PackageId = @PackageId
			AND IsActive = 1;	
	
	END
	
	IF (@PackageName IS NOT NULL AND LEN(@PackageName) >= 10) AND @PackageIdSearch IS NULL
	BEGIN
	
		SELECT @PackageIdSearch = PackageId
		FROM ETLConfig.PackageInfo
		WHERE PackageName = @PackageName
			AND IsActive = 1;
	
	END
	
	IF @Debug = 1 
	BEGIN
		PRINT '@PackageIdSearch: ' + ISNULL(CAST(@PackageIdSearch AS VARCHAR(100)), 'NULL') ;
	END
		
	IF @PackageIdSearch IS NULL
	BEGIN
	
		SET @M_ErrorMessage = 'Could not find the package your looking for Package: ' + ISNULL(@PackageName, CAST(@PackageId AS varchar(5))) + '.';
        RAISERROR (@M_ErrorMessage, 18, 1) ;
    END

	SELECT @PackageLogId = MAX([PackageLogID])
	FROM [ETLImportLog].[PackageTaskLog]
	WHERE [PackageID] = @PackageIdSearch;
	
	IF @Debug = 1 
	BEGIN
		PRINT '@PackageLogId: ' + ISNULL(CAST(@PackageLogId AS VARCHAR(100)), 'NULL') ;
	END

	SELECT
		[PackageId]
		,[PackageName]
		,[ManualOverride]
		,[ReadyToRun]
		,[RunsMultipleTimes]
		,[DebugLevel]
		,[NightlyReset]
		,[ClearToRun]
		,[IsActive]
		,[PrimaryPOC]
		,[SecondaryPOC]
		,[DirectoryLocation]
		,[JobName]
		,[SourceServer]
		,[SourceDatabase]
		,[DestinationServer]
		,[DestinationDatabase]
		,[ETLServerName]
		,[ETLServerDatabase]
		,[ETLLogServer]
		,[ETLLogDatabase]
		,[DataMartServer]
		,[DataMartDatabase]
	FROM [ETLConfig].[PackageInfo]
	WHERE [PackageID] = @PackageIdSearch;

	SELECT TOP 15 [RecordId]
	,[PackageId]
	,[PackageStartTime]
	,[PackageEndTime]
	,[PrecedentSatisfied]
	,[PackageLogNotes]
	,[MachineName]
	,[DataImportDate]
	,[ImportedRecords]
	,[InsertedRecords]
	,[UpdatedRecords]
	,[DeletedRecords]
	,[ErrorRecords]
	,[CompletedSuccessfully]
	,[InsertDateTime]
	, Utilities.udfFormatTime(DATEDIFF(S, [PackageStartTime], ISNULL([PackageEndTime], GETDATE())), 'S', '%M% Min %S% Sec') AS [PackageRunTime]
	FROM [ETLImportLog].[PackageLogging]
	WHERE [PackageId] = @PackageIdSearch
	ORDER BY [PackageStartTime] DESC;
  
	SELECT [PackageID]
	,[PackageLogID]
	,[TaskName]
	,[LogDate]
	,[StartTime]
	,[EndTime]
	,[ErrorCount]
	,[WarningCount]
	,[Message]
	, Utilities.udfFormatTime(DATEDIFF(S, [StartTime], ISNULL([EndTime], GETDATE())), 'S', '%M% Min %S% Sec') AS [TaskRunTime]
	FROM [ETLImportLog].[PackageTaskLog]
	WHERE [PackageID] = @PackageIdSearch
	AND [PackageLogID] = @PackageLogId
	ORDER BY StartTime DESC;

	SELECT [PackageLogID]
	,[PackageID]
	,[TableValidationID]
	,[TaskName]
	,[LogDate]
	,[LogDateTime]
	,[LogTypeID]
	,[Message]
	,[RowID]
	FROM [ETLImportLog].[MessageLog]
	WHERE [PackageID] = @PackageIdSearch
	AND [PackageLogID] = @PackageLogId
	ORDER BY [LogDateTime] DESC;


END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spGetPackagingLogingDetail]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spGetPackagingLogingDetail]

**************************************************************************************************
*** DESCRIPTION                                                                                ***

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-17: Created by William Benson (wbenson)   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
2015-03-02 Average approximate development runtime: 00:00:00
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
EXEC [ETLImportLog].[spGetPackagingLogingDetail]
	@StartDate = '2015-04-01'
	, @EndDate = '2015-04-17'
	, @PackageId = 3
	, @Debug = 1
;
**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spGetPackagingLogingDetail]
	@StartDate AS VARCHAR(10) = NULL
	, @EndDate AS VARCHAR(10) = NULL
	, @PackageId AS SMALLINT = NULL
	, @Debug BIT = 0
	
AS

BEGIN
	SET NOCOUNT OFF;

	DECLARE @SelectInfo AS NVARCHAR(4000)
	, @FromInfo AS NVARCHAR(4000)
	, @WhereInfo AS NVARCHAR(4000)
	, @OrderBy AS NVARCHAR(4000)
	, @SQLCode AS NVARCHAR(MAX)
	, @M_ErrorMessage AS VARCHAR(4000)
	;

	IF @StartDate IS NULL OR LEN(@StartDate) < 1 OR ISDATE(@StartDate) <> 1
	BEGIN
		SET @M_ErrorMessage = 'Please check your Start Date it is either not a date or is null.' ;
		RAISERROR (@M_ErrorMessage, 18, 1) ;
	END

	IF @EndDate IS NULL OR LEN(@EndDate) < 1 OR ISDATE(@EndDate) <> 1
	BEGIN
		SET @M_ErrorMessage = 'Please check your End Date it is either not a date or is null.' ;
		RAISERROR (@M_ErrorMessage, 18, 1) ;
	END

	IF @StartDate > @EndDate
	BEGIN
		SET @M_ErrorMessage = 'The Start Date is before the end date.' ;
		RAISERROR (@M_ErrorMessage, 18, 1) ;
	END

	IF @Debug = 1 
		BEGIN
			PRINT '------------ Beging Debug Inoformation ----------------' ;
			PRINT '@StartDate: ' + ISNULL(CAST(@StartDate AS VARCHAR(100)), 'NULL') ;
			PRINT '@EndDate: ' + ISNULL(CAST(@StartDate AS VARCHAR(100)), 'NULL') ;
			PRINT '@PackageId: ' + ISNULL(CAST(@PackageId AS VARCHAR(150)), 'NULL') ;             
		END;

	SELECT @SelectInfo = 'SELECT' + CHAR(13);

	SELECT @SelectInfo = @SelectInfo + 'tblpk.[PackageName],' + CHAR(13)
		+ 'CONVERT(VARCHAR(19), tblpkl.[PackageStartTime], 121) AS [Package Start Time],' + CHAR(13)
		+ 'CONVERT(VARCHAR(19), tblpkl.[PackageEndTime], 121) AS [Package End Time],' + CHAR(13)
		+ 'Utilities.udfFormatTime(DATEDIFF(S, tblpkl.[PackageStartTime], tblpkl.[PackageEndTime]), ' + CHAR(39) + 'S' + CHAR(39) + ', ' + CHAR(39) + '%M% Min %S% Sec' + CHAR(39) +') AS [Package Run Time],' + CHAR(13)
		+ 'CONVERT(VARCHAR(19), tblpkl.[InsertDateTime], 121) AS [Import DateTime],' + CHAR(13)
		+ 'DATENAME(dw, tblpkl.[InsertDateTime]) AS [Import Weekday],' + CHAR(13)
		+ 'CONVERT(CHAR(10), [DataImportDate], 121) AS [Data Import Date],' + CHAR(13)
		+ 'tblpkl.[ImportedRecords],' + CHAR(13)
		+ 'tblpkl.[DeletedRecords],' + CHAR(13)
		+ 'tblpkl.[InsertedRecords]' + CHAR(13);
		
	SELECT @FromInfo = 'FROM [ETLImportLog].[tblPackageLogging] AS tblpkl' + CHAR(13)
		+ 'LEFT OUTER JOIN [ETLImport].[tblPackage] AS tblpk' + CHAR(13)
		+ 'ON tblpkl.PackageId = tblpk.PackageID' + CHAR(13);
		
	SELECT @WhereInfo = 'WHERE [InsertDateTime] >=' + CHAR(39) + CONVERT(CHAR(10), @StartDate, 121) + CHAR(39) + CHAR(13)
		+ 'AND [InsertDateTime] <' + CHAR(39) + CONVERT(CHAR(10), @EndDate, 121) + CHAR(39) + CHAR(13);
		
	IF  @PackageId IS NOT NULL
		BEGIN
		
		SELECT @WhereInfo = @WhereInfo + 'AND tblpkl.[PackageId] = ' + CONVERT(CHAR(5), @PackageId) + CHAR(13);
		
		END

	SELECT @OrderBy = 'ORDER BY [PackageStartTime] DESC'	+ CHAR(13);
	
	SELECT @SQLCode = @SelectInfo + @FromInfo + @WhereInfo + @OrderBy;

	IF @Debug = 1 
		BEGIN
			PRINT '@SelectInfo: ' + ISNULL(CAST(@SelectInfo AS VARCHAR(4000)), 'NULL') ;
			PRINT '@FromInfo: ' + ISNULL(CAST(@FromInfo AS VARCHAR(4000)), 'NULL') ;
			PRINT '@WhereInfo: ' + ISNULL(CAST(@WhereInfo AS VARCHAR(4000)), 'NULL') ;
			PRINT '@SQLCode: ' + ISNULL(CAST(@SQLCode AS VARCHAR(MAX)), 'NULL') ;
			PRINT '------------ End Debug Inoformation ------------------' ;           
		END

	EXECUTE sp_executesql @SQLCode

END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spInsertLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spInsertLog]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Inserts a new Log Message from Import Package (SSIS)

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
04/30/2015: Created by wbenson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].spInsertLog
  @PackageLogID = '1',
  @PackageID = '1'

**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spInsertLog]
	@PackageLogID INT,
	@PackageID SMALLINT,
	@TaskName VARCHAR(255),
	@LogType VARCHAR(15),
	@Message VARCHAR(MAX),
	@TableValidationID INT = -1
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRY	
		DECLARE @LogTypeID SMALLINT

		IF @PackageLogID > 0
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM ETLConfig.PackageLogType WHERE LogType = @LogType)
					BEGIN
						INSERT INTO ETLConfig.PackageLogType(LogType)
						VALUES(@LogType)

						SET @LogTypeID = SCOPE_IDENTITY()
					END
				ELSE
					BEGIN
						SELECT @LogTypeID = LogTypeID
						FROM ETLConfig.PackageLogType
						WHERE LogType = @LogType
					END

				INSERT INTO ETLImportLog.MessageLog(PackageLogID, PackageID, TableValidationID, TaskName, LogDate, LogTypeID, [Message])
				VALUES(@PackageLogID, @PackageID, @TableValidationID, @TaskName, CONVERT(VARCHAR(10), GETDATE(), 121), @LogTypeID, @Message)
			END
	END TRY
	BEGIN CATCH
		--Raise an error with the details of the exception
		DECLARE @ErrMsg NVARCHAR(4000), @ErrSeverity INT
		SELECT @ErrMsg = ERROR_MESSAGE(), @ErrSeverity = ERROR_SEVERITY()
	
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spInsertPackageLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spInsertPackageLog]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-29: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].[spInsertPackageLog]
	@PackageId = 1
	, @MachineName = 'xxxxxx'
**************************************************************************************************/

CREATE PROC [ETLImportLog].[spInsertPackageLog]
	@PackageId AS SMALLINT
	, @MachineName AS VARCHAR(150)

AS

BEGIN

	SET NOCOUNT ON;
	
	DECLARE @newId INT
	
	INSERT INTO [ETLImportLog].[PackageLogging]
           ([PackageId]
           ,[MachineName])
     VALUES(@PackageId, @MachineName)
     ;

	SELECT @newId = SCOPE_IDENTITY() 
	
	SELECT @newId AS PackageLogID

	
END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spInsertPackageTaskLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].spInsertPackageTaskLog

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Insert a Package Task Log

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
04/30/2015: Created by wbenson   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC ETLImportLog.spInsertPackageTaskLog
  @PackageLogID = '1',
  @PackageID = '1'

**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spInsertPackageTaskLog]
	@PackageLogID INT,
	@PackageID SMALLINT,
	@TaskName VARCHAR(255),
	@Message VARCHAR(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRY
		IF @PackageID > 0 AND @PackageLogID > 0
			BEGIN
				INSERT INTO ETLImportLog.[PackageTaskLog](PackageLogID, PackageID, TaskName, LogDate, [Message])
				VALUES(@PackageLogID, @PackageID, @TaskName, CONVERT(VARCHAR(10), GETDATE(), 121), @Message)
			END
	END TRY
	BEGIN CATCH	
		--Raise an error with the details of the exception
		DECLARE @ErrMsg NVARCHAR(4000), @ErrSeverity INT
		SELECT @ErrMsg = ERROR_MESSAGE(), @ErrSeverity = ERROR_SEVERITY()
	
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spResetPackagesForNewDay]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spResetPackagesForNewDay]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-29: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].[spResetPackagesForNewDay]
**************************************************************************************************/

CREATE PROC [ETLImportLog].[spResetPackagesForNewDay]

AS

BEGIN
	SET NOCOUNT ON;
	
	UPDATE A
	SET ClearToRun = 1
	FROM [ETLConfig].[PackageInfo] A
	  WHERE [NightlyReset] = 1
	;
	
END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spSSIDErrorLogDetailEmail]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[JobNotification].[spSendJobFailureWithSSIDDetail]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Pulls the error message for the job failure based on the job and excuation ids
Below informaotin is an example of how to use it in a SQL Server Job
DECLARE @JobID uniqueidentifier
, @JobStartTime VARCHAR(6)
, @JobStartDate VARCHAR(8)
;
SELECT @JobID = $(ESCAPE_NONE(JOBID))
, @JobStartDate = $(ESCAPE_NONE(STRTDT))
, @JobStartTime = $(ESCAPE_NONE(STRTTM))
;
EXEC [WaCompass].[ETLImportLog].[spSSIDErrorLogDetailEmail]
@JobUniqueId = JobID
,@LastRunDate = @JobStartDate
,@LastRunTime = @JobStartTime
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-02-21: Created by william benson
2018-04-13: updated the the job history to look for sysj.run_time >= job start time  and < currnet time as int   

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
Example: To send an email based on a job id and specific run time
EXEC [ETLImportLog].[spSSIDErrorLogDetailEmail]
	@JobUniqueId = '775A3E4A-2C3E-4222-98F2-9FE898255722'
	,@Debug = 1
	,@LastRunDate = '20180221'
	,@LastRunTime = '153827'

Example: To send an email based on a job id and specific run time and see debug information
EXEC [ETLImportLog].[spSSIDErrorLogDetailEmail]
	@JobUniqueId = '6D76DA37-A71D-4113-B56A-AC2F3F95C812'
	,@LastRunDate = '20180221'
	,@LastRunTime = '153827'
	,@Debug = 1

Example: To send an email based on a job id and most recent job run and send a copy of the email to additional people
EXEC [JobNotification].[spSendJobFailureWithSSIDDetail]
	@JobUniqueId = '6D76DA37-A71D-4113-B56A-AC2F3F95C812'
	,@AdditionalRecipientsEmailAddress = 'John.Doe@SomeEmailAddress.com;Jane.Doe@SomeEmailAddress.com'

**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spSSIDErrorLogDetailEmail]
	@JobUniqueId UNIQUEIDENTIFIER
	,@LastRunDate VARCHAR(10) = NULL
	,@LastRunTime VARCHAR(6) = NULL
	,@MailProfileToUse VARCHAR(100) = NULL
	,@AdditionalRecipientsEmailAddress AS VARCHAR(MAX) = ';'
	,@Debug BIT = 0

AS

BEGIN

	SET NOCOUNT ON;


	DECLARE
	@LastJobRunRequestedDate DATETIME
	,@NextRunTime AS INT
	,@NextRunDate AS INT
	,@NextJobRunDateTime DATETIME = NULL
	,@NextJobRunDate  DATETIME = NULL
	,@JobOwner AS VARCHAR(250)
	,@JobName VARCHAR(250)
	,@ServerName AS VARCHAR(50)
	,@JobHistoryRecordCount AS SMALLINT
	,@SSISDBHistoryRecordCount AS SMALLINT
	,@ServerType AS VARCHAR(50)
	,@Subject AS VARCHAR(250) --Subject of the email
	,@Message AS NVARCHAR(MAX) --Mesage body of the email
	,@JobOperatorEmail NVARCHAR(100)
	,@SendEmail BIT = 0
	,@CurrentTimeInt INT = 0
	,@M_ErrorMessage NVARCHAR(250)
	;

	/* Table variable to hold the history of the job */
	DECLARE @JobHisotryTable AS TABLE
	(
	StepId SMALLINT
	,StepName VARCHAR(250)
	,StepCommand VARCHAR(MAX)
	,HistoryMessage VARCHAR(MAX)
	,ExecutionId INT
	,SubSystem VARCHAR(50)
	) ;

	/* Table variable to hold the SSISDB history */
	DECLARE @SSISDBHistoryTable AS TABLE
	(
	SSISPackageName nvarchar(260)
	,SSISMessageSourceName nvarchar(4000)
	,SSISEventName nvarchar(1024)
	,SSISMessage nvarchar(max)
	,SSISOperationId BIGINT
	) ;

	/* Set the type of server for the email as well as the server name */ 
		/* this could be changed to use a configuration table on the server. */
	SELECT @ServerType = CASE @@SERVERNAME WHEN 'DELOLYDB12007' THEN 'DEV ETL Server'
		WHEN 'DELOLYDB12008' THEN 'UAT ETL Server'
		WHEN 'DELOLYDB12009' THEN 'Prod ETL Server'
		ELSE 'No Server Mapping'
	END
	,@ServerName = @@SERVERNAME ;

	/* Set the current time to an int */
	SELECT @CurrentTimeInt = CONVERT(INT, REPLACE(CONVERT(VARCHAR(8), GETDATE(), 108),':',''));

	/* Get information about the job id */
	SELECT
	@JobName = sysj.[NAME]
	,@JobOwner = SUSER_SNAME(sysj.owner_sid)
	,@JobOperatorEmail = syso.email_address
	,@NextRunDate = syssc.next_run_date
	,@NextRunTime = syssc.next_run_time
	FROM msdb.dbo.sysjobs AS sysj
	LEFT OUTER JOIN msdb.dbo.sysjobschedules AS syssc
		ON sysj.job_id = syssc.job_id
	LEFT OUTER JOIN msdb.dbo.sysoperators AS syso
		ON sysj.notify_email_operator_id = syso.id
	WHERE sysj.job_id = @JobUniqueId;

	IF @Debug = 1
	BEGIN
		PRINT '------------ Debug Inoformation ----------------' ;
		PRINT '@JobUniqueId: ' + ISNULL(CAST(@JobUniqueId AS VARCHAR(100)), 'NULL') ;
		PRINT '@JobName: ' + ISNULL(CAST(@JobName AS VARCHAR(100)), 'NULL') ;
		PRINT '@JobOwner: ' + ISNULL(CAST(@JobOwner AS VARCHAR(100)), 'NULL') ;
		PRINT '@JobOperatorEmail: ' + ISNULL(CAST(@JobOperatorEmail AS VARCHAR(150)), 'NULL') ;             
		PRINT '@NextRunDate: ' + ISNULL(LEFT(CONVERT(VARCHAR, @NextRunDate, 120), 10), 'NULL') ;
		PRINT '@NextRunTime: ' + ISNULL(LEFT(CONVERT(VARCHAR, @NextRunTime, 108), 10), 'NULL') ;
		PRINT '@ServerType: ' + ISNULL(CAST(@ServerType AS VARCHAR(100)), 'NULL') ;
		PRINT '@ServerName: ' + ISNULL(CAST(@ServerName AS VARCHAR(100)), 'NULL') ;
	END

	/* If the job operator email is null than we set it to a defaul email address */
		/* this could be change to use a configuration table */
	IF @JobOperatorEmail IS NULL
	BEGIN
		SELECT @JobOperatorEmail = 'DCYFDLDatabaseServerNotifications@dcyf.wa.gov' --'DELDLSQLAdmins@del.wa.gov'

		IF @Debug = 1
			BEGIN
				PRINT '@JobOperatorEmail (Changed): ' + ISNULL(CAST(@JobOperatorEmail AS VARCHAR(100)), 'NULL') ;
			END
	END

	/* Get the last job run requested date if it was not pased in*/
	IF @LastRunDate IS NULL OR @LastRunTime IS NULL
	BEGIN
		SELECT
		@LastJobRunRequestedDate = MAX(RunDateTime)
		FROM (
			SELECT
			CONVERT(DATETIME, CONVERT(CHAR(8), run_date, 112) + ' ' + STUFF(STUFF(RIGHT('000000' + CONVERT(VARCHAR(8), run_time), 6), 5, 0, ':'), 3, 0, ':')) AS RunDateTime
			FROM msdb.dbo.sysjobhistory
			WHERE job_id = @JobUniqueId
			AND run_status = 0
		) AS tblBase;

		SELECT @LastRunDate = CAST(CONVERT(VARCHAR(8), @LastJobRunRequestedDate, 112) AS INT)
		,@LastRunTime = REPLACE(CONVERT(VARCHAR(8), @LastJobRunRequestedDate, 108), ':', '')
	END

	IF @Debug = 1
		BEGIN
			PRINT '@LastJobRunRequestedDate: ' + ISNULL(LEFT(CONVERT(VARCHAR, @LastJobRunRequestedDate, 120), 20), 'NULL') ;
			PRINT '@LastRunDate: ' + ISNULL(LEFT(CONVERT(VARCHAR, @LastRunDate, 112), 8), 'NULL') ;
			PRINT '@LastRunTime: ' + ISNULL(LEFT(CONVERT(VARCHAR, @LastRunTime, 108), 8), 'NULL') ;
		END

	/*Insert job history information based off job id and dates passed in. Also we parse though the error message for the Execution ID
		to use in the SSIS DB query */
	INSERT INTO
	@JobHisotryTable
	(
	StepId
	,StepName
	,StepCommand
	,HistoryMessage
	,SubSystem
	,ExecutionId 
	)
	SELECT
	sysj.step_id
	, REPLACE(REPLACE(sysj.step_name, ')', ''), '(', '') AS step_name
	,syss.command
	, sysj.[message]
	, syss.subsystem
	, CASE WHEN CHARINDEX('dtsx' ,syss.command) > 0 AND syss.subsystem = 'SSIS'
		THEN [Utilities].[udfRemoveStringData](SUBSTRING(sysj.[message]
			, CHARINDEX('Execution ID:',sysj.[message])
			, CHARINDEX(', Execution Status:',sysj.[message]) - CHARINDEX('Execution ID:',sysj.[message]))
			)
		ELSE NULL
	END AS ExecutionId
	FROM msdb.dbo.sysjobhistory AS sysj
	LEFT OUTER JOIN msdb.dbo.sysjobsteps AS syss
		ON sysj.job_id = syss.job_id
		AND sysj.step_id = syss.step_id
	WHERE sysj.job_id = @JobUniqueId
		AND sysj.run_date = @LastRunDate
		AND sysj.run_time >= @LastRunTime
		AND sysj.run_time < @CurrentTimeInt
		AND sysj.run_status = 0;

	SET @JobHistoryRecordCount = @@ROWCOUNT ;

	IF @Debug = 1
	BEGIN
		PRINT '@JobHistoryRecordCount: ' + ISNULL(CAST(@JobHistoryRecordCount AS VARCHAR(100)), 'NULL') ;
		PRINT '@LastRunDate: ' + ISNULL(CAST(@LastRunDate AS VARCHAR(100)), 'NULL') ;
		PRINT '@LastRunTime: ' + ISNULL(CAST(@LastRunTime AS VARCHAR(100)), 'NULL') ;
		PRINT '@CurrentTimeInt: ' + ISNULL(CAST(@CurrentTimeInt AS VARCHAR(100)), 'NULL') ;
	END

	IF @JobHistoryRecordCount = 0
 
    BEGIN          
        SET @M_ErrorMessage = 'No job history found for job:' + @JobName + ' Run Date:' + CAST(@LastRunDate AS VARCHAR(8)) + ' Run Time:' +  CAST(@LastRunTime AS VARCHAR(6))
			+ ' Current Time:' +  CAST(@CurrentTimeInt AS VARCHAR(6));
        RAISERROR (@M_ErrorMessage, 18, 1) ;
    END

	/* Use the job history to pull any matching SSIS DB messages based off th Execution Id */
	INSERT INTO @SSISDBHistoryTable
	(
	SSISPackageName
	,SSISMessageSourceName
	,SSISEventName
	,SSISMessage
	,SSISOperationId)
	SELECT
	ssdb.package_name
	,ssdb.message_source_name
	,ssdb.event_name
	,ssdb.[message]
	,ssdb.operation_id
	FROM [SSISDB].[catalog].[event_messages] AS ssdb
	INNER JOIN @JobHisotryTable AS jht
		ON ssdb.operation_id = jht.ExecutionId
	WHERE [message_type] = 120

	SET @SSISDBHistoryRecordCount = @@ROWCOUNT;

	IF @Debug = 1
	BEGIN
		PRINT '@SSISDBHistoryRecordCount: ' + ISNULL(CAST(@SSISDBHistoryRecordCount AS VARCHAR(100)), 'NULL') ;
	END

	/* Start generatiing the email as long as we have history records */
	IF @JobHistoryRecordCount > 0 
	BEGIN 
                
		SET @Subject = @ServerType + ' || SQL Server Job Failure: ' + @JobName + ' on ' + @ServerName ;
            
		SET @Message = '<html>' + '<body style="font: 12px Arial;">'
			+ '<div id="intro2" style="width:670px;">The job ' + @JobName + ' failed on '
			+ @ServerName + '.' + '<br><br>' ;
            
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of errors below'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>SQL Server Job Step Name</td>'
			+ N'<td>SQL Server Job Error Message</td>'
			+ N'<td>SSIS DB Execution Id</td>'
			+'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = [StepName]
					, ''
					, "td/@align" = 'LEFT'
					, td = [HistoryMessage]
					, ''
					, "td/@align" = 'CENTER'
					, td = COALESCE(CAST([ExecutionId] AS VARCHAR(10)), 'N/A')
					FROM
					@JobHisotryTable
					ORDER BY
					StepId
			FOR
					XML PATH('tr')
						, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;


			IF @SSISDBHistoryRecordCount > 0
			BEGIN
			SET @Message = @Message + N'</div><br><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>SSIS Operation Id</td>'
			+ N'<td>SSIS Package Name</td>'
			+ N'<td>SSIS Message Source Name</td>'
			+ N'<td>SSIS Event Name</td>'
			+ N'<td>SSIS Event Message</td>'
			+'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = CAST([SSISOperationId] AS VARCHAR(10))
					, ''
					, "td/@align" = 'CENTER'
					, td = [SSISPackageName]
					, ''
					, "td/@align" = 'CENTER'
					, td = [SSISMessageSourceName]
					, ''
					, "td/@align" = 'Center'
					, td = [SSISEventName]
					, ''
					, "td/@align" = 'LEFT'
					, td = SSISMessage
				FROM
				@SSISDBHistoryTable
				ORDER BY
				[SSISOperationId]
				FOR
				XML PATH('tr')
				, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;
		END

		SET @Message = @Message
			--+ '</div>
			+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
			+ '<div style="margin-top:10px;"> '
			+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
			--+ '<a href="mailto:DELDLDQLAdmins@del.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
			+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
			+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
			+ '</body></html>'
			--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 


                
	
	/* Need to review how to get the next scheudle job run based on system schedule not activity 
	IF @NextJobRunDateTime IS NULL 
		BEGIN
			SET @Message = @Message
				+ '</div><br><div id="notchanged" style="margin-top:10px; width:670px;">'
				+ '<div style="margin-top:10px;"> ' + '<br/><br/>'
				+ 'If you have any questions or concerns regarding this email, please feel free to contact <a href="mailto:DELDLDQLAdmins@del.wa.gov?subject='
				+ @Subject + '">Your Friendly DEL Server Admins</a>.</div>'
				+ '<div style="margin-top:10px;">Thank You!</div><div style="margin-top:10px;"></div>'
				+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ;                           
		END
	ELSE 
		BEGIN 
                          
			SET @Message = @Message
				+ '</div><br><div id="notchanged" style="margin-top:10px; width:670px;">'
				+ '<div style="margin-top:10px;">The next time this job is scheduled to run is on '
				+ CONVERT(CHAR(10), @NextJobRunDateTime, 101) + ' at '
				--+ CONVERT(CHAR(10), @NextJobRunDate, 101) + '<br/><br/>'
				+ CONVERT(VARCHAR(8), @NextJobRunDateTime,108) + '<br/><br/>'
				+ dbTools.dbo.udfAMPMTimeFromDate(@NextJobRunDate) + '<br/><br/>'
				+ 'If you have any questions or concerns regarding this email, please feel free to contact '
				+ '<a href="mailto:DELDLDQLAdmins@del.wa.gov?subject='+ @Subject + '">Your Friendly DEL Server Admins</a>.</div>'
				+ '<div style="margin-top:10px;">Thank You!</div><div style="margin-top:10px;"></div>'
				+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ;
           
		END
	*/
	END 

	IF @Debug = 1
	BEGIN
		PRINT '@Subject: ' + ISNULL(CAST(@Subject AS VARCHAR(100)), 'NULL') ;
		PRINT '@Message: ' + ISNULL(CAST(@Message AS VARCHAR(MAX)), 'NULL') ;
		--PRINT '@NextJobRunDate: ' + ISNULL(CAST(@NextJobRunDate AS VARCHAR(100)), 'NULL') ;
		PRINT '@NextJobRunDate: ' + ISNULL(LEFT(CONVERT(VARCHAR, @NextJobRunDate, 120), 10), 'NULL') ;


		SELECT  @Message;
	END

	/* If no mail profile was passed in @MailProfileToUse then we set it to a defaul */ --this could be changed to a configuration table
	IF @MailProfileToUse IS NULL
	BEGIN
		SELECT @MailProfileToUse = 'SQLAdmin'
	END

	/* If the messase is not null and we have an operator email set the system to send the email */
	IF @Message IS NOT NULL AND @JobOperatorEmail IS NOT NULL
	BEGIN
		SELECT @SendEmail = 1
	END

	IF @Debug = 1
	BEGIN
		PRINT '@SendEmail: ' + ISNULL(CAST(@SendEmail AS VARCHAR(100)), 'NULL') ;
	END

	IF @SendEmail = 1
	BEGIN

		EXEC msdb.dbo.sp_send_dbmail  
		    @profile_name = @MailProfileToUse
		    ,@recipients = @JobOperatorEmail 
			,@copy_recipients = @AdditionalRecipientsEmailAddress 
		    ,@subject = @Subject
			,@body = @Message
			,@body_format = 'HTML' 
			,@importance = 'High'
			;

	END

	IF @Debug = 1
	BEGIN
		PRINT '------------ End Inoformation ----------------' ;
	END
END
GO
/****** Object:  StoredProcedure [ETLImportLog].[spUpdatePackageLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].[spUpdatePackageLog]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Returns 

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-04-29: Created by wbenson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].[spUpdatePackageLog]
	@PackageLogId = 179
	, @PackageId = 1
	, @IsSuccessful = 1
	, @PrecedentSatisfied = 0
	, @MachineName = 'xxxxxxx'	
	, @ImportedRecords = NULL
	, @DeletedRecords = NULL
    , @InsertedRecords = NULL
	, @DataPullDate = NULL	
**************************************************************************************************/

CREATE PROC [ETLImportLog].[spUpdatePackageLog]
	@PackageLogId AS INT
	, @PackageId AS SMALLINT
	, @IsSuccessful AS TINYINT = 0
	, @PrecedentSatisfied AS TINYINT
	, @MachineName AS VARCHAR(150) = NULL
	, @ImportedRecords INT = NULL
	, @DeletedRecords INT = NULL
    , @InsertedRecords INT = NULL
	, @UpdatedRecords INT = NULL
	, @ErrorRecords INT = NULL
	, @DataPullDate DATETIME = NULL
	, @PackageLogNotes VARCHAR(4000) = NULL

AS

BEGIN

	SET NOCOUNT ON;
	
	DECLARE @PackageLogCount TINYINT
	, @M_ErrorMessage AS VARCHAR(4000)
	;
	
	SELECT @PackageLogCount = COUNT(1) FROM [ETLImportLog].[PackageLogging] WHERE RecordId = @PackageLogId AND PackageId = @PackageId;
	
	IF @PackageLogCount < 1
		BEGIN
			SET @M_ErrorMessage = 'Not package log to update.' ;
			RAISERROR (@M_ErrorMessage, 18, 1) ;
		END
	
	UPDATE [ETLImportLog].[PackageLogging]
	SET 
	  [ImportedRecords] = COALESCE(@ImportedRecords, 0)
	  ,[DeletedRecords] = COALESCE(@DeletedRecords, 0)
	  ,[InsertedRecords] = COALESCE(@InsertedRecords, 0)
	  ,[ErrorRecords] = COALESCE(@ErrorRecords, 0)
	  ,[PackageEndTime] = GETDATE()
	  ,[MachineName] = @MachineName
	  ,[CompletedSuccessfully] = @IsSuccessful
	  ,[PrecedentSatisfied] = @PrecedentSatisfied
	  ,[InsertDateTime] = GETDATE()
	  ,[DataImportDate] = @DataPullDate
	  ,[PackageLogNotes] = @PackageLogNotes
	  ,[UpdatedRecords] = COALESCE(@UpdatedRecords, 0)
	WHERE RecordId = @PackageLogId
		AND PackageId = @PackageId
	;
	
	IF @IsSuccessful = 1
	BEGIN
	
			UPDATE A
			SET [A].[ReadyToRun] = 0
			, [ManualOverride] = 0
			FROM [ETLConfig].[PackageInfo] A
			WHERE [PackageID] = @PackageId
			;
				
	END
	
END
GO
/****** Object:  StoredProcedure [ETLImportLog].[spUpdatePackageLogging]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog][spUpdatePackageLogging]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Insert Data from the package into a table so it can be tracked and sent out.

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2015-02-03: Created by wbenson  

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
DECLARE @MyPackageId smallint
	, @MyDataPullDate datetime
	, @MyImportedRecords int
	, @MyDeletedRecords int
    , @MyInsertedRecords int
    , @MyPackageStartTime datetime
    , @MyPackageEndTime datetime
    
SELECT
	@MyPackageId = 0
	, @MyDataPullDate = GETDATE()
	, @MyImportedRecords = NULL
	, @MyDeletedRecords = NULL
    , @MyInsertedRecords = NULL
    , @MyPackageStartTime = GETDATE()
    , @MyPackageEndTime = GETDATE()

EXEC [ETLImportLog].[spUpdatePackageLogging]
	@PackageId = @MyPackageId
	, @DataPullDate = @MyDataPullDate
	, @ImportedRecords = @MyImportedRecords
	, @DeletedRecords = @MyDeletedRecords
	, @InsertedRecords = @MyInsertedRecords
	, @PackageStartTime = @MyPackageStartTime
	, @PackageEndTime = @MyPackageEndTime
**************************************************************************************************/

CREATE PROC [ETLImportLog].[spUpdatePackageLogging]
	@PackageId SMALLINT
	, @DataPullDate DATETIME
	, @ImportedRecords INT
	, @DeletedRecords INT
    , @InsertedRecords INT
    , @PackageStartTime DATETIME
    , @PackageEndTime DATETIME


AS

BEGIN

	SET NOCOUNT ON;
	
	INSERT INTO [ETLImportLog].[PackageLogging]
		([PackageId]
		,[DataImportDate]
        ,[ImportedRecords]
        ,[DeletedRecords]
        ,[InsertedRecords]
        ,[PackageStartTime]
        ,[PackageEndTime])
     VALUES
        (@PackageId
        , @DataPullDate
		, @ImportedRecords
		, @DeletedRecords
		, @InsertedRecords
		, @PackageStartTime
		, @PackageEndTime)

	SET NOCOUNT OFF;

END

GO
/****** Object:  StoredProcedure [ETLImportLog].[spUpdatePackageTaskLog]    Script Date: 9/7/2021 2:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImportLog].spUpdatePackageTaskLog

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Update a Package Task Log

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
04/30/2015: Created by wbenson  

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [ETLImportLog].spUpdatePackageTaskLog
  @PackageLogID = '22',
  @TaskName = 'SQL Get Precedent Status'

**************************************************************************************************/
CREATE PROCEDURE [ETLImportLog].[spUpdatePackageTaskLog]
	@PackageLogID INT,
	@TaskName VARCHAR(255),
	@Message VARCHAR(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRY
		DECLARE @ErrorCount SMALLINT, @WarningCount SMALLINT

		IF @PackageLogID > 0
			BEGIN
				SELECT 
					@ErrorCount = SUM(CASE WHEN LT.IsError = 1 THEN 1 ELSE 0 END),
					@WarningCount = SUM(CASE WHEN LT.IsWarning = 1 THEN 1 ELSE 0 END)
				FROM ETLImportLog.MessageLog L WITH(NOLOCK)
					JOIN ETLConfig.PackageLogType LT WITH(NOLOCK)
						ON L.LogTypeID = LT.LogTypeID
				WHERE L.PackageLogID = @PackageLogID
					AND L.TaskName = @TaskName

				/*UPDATE*/

				UPDATE ETLImportLog.PackageTaskLog WITH(ROWLOCK)
				SET EndTime = GETDATE(),
					ErrorCount = COALESCE(@ErrorCount, -1),
					WarningCount = COALESCE(@WarningCount, -1),
					[Message] = @Message
				WHERE PackageLogID = @PackageLogID
					AND TaskName = @TaskName
			END
	END TRY
	BEGIN CATCH	
		--Raise an error with the details of the exception
		DECLARE @ErrMsg NVARCHAR(4000), @ErrSeverity INT
		SELECT @ErrMsg = ERROR_MESSAGE(), @ErrSeverity = ERROR_SEVERITY()
	
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto number for the table' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjecId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table name' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjectName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name as it is in saleforce' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjectNameSalesforce'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this table active' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjectIsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime the table was added' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjectDateEff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date time the table is no longer used' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'SalesforceObjects', @level2type=N'COLUMN',@level2name=N'ObjectDateExp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id number for a system this field is auto generated.' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Systems', @level2type=N'COLUMN',@level2name=N'SystemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of entity providing ECEAP program oversight' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Contractor_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the County' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'County__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last data refresh from FamLink source system.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Date_Data_last_Pulled_From_Fam_Link__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alias name for facility.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Doing_Business_As__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of (AIAN) American Indian, Alaska Native participation slots for Early Head Start Center Based programs.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'AIAN_Early_Head_Start_Center_Based__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique key composed of data elements on the record.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'External_Source_Id__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique numeric value for the facility within FamLink system.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'FamLink_Id__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the facility is or was participating in the ECEAP program.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'In_ECEAP__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the facility is or was participating in the Head Start program(s).' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'In_Head_Start__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of complaints that ended with an inconclusive result.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Inconclusive_Complaint_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original date when the facility was granted a License.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Initial_License_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the sub type of the licensed facility.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'License_Facility_Type_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'INTERNAL: birthday related to the primary contact of the facility.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Primary_Contact_Date_of_Birth__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique ID in the payment system.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'SSPS_Id__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the original, source name for the facility/site.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Source_Site_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State payment unique number suffix for the provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'State_Wide_Vendor_Number_Suffix__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State payment unique number for the provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'State_Wide_Vendor_Number__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the oversight entity for the ECEAP or Head Start program(s).' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Subcontractor_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of validated complaints associated to the facility and related programs.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Valid_Complaint_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Intra-organizational structure or classification: e.g. Faith Based Facility, Non Profit Organization Building, Head Start Facility, etc.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Site_Structure__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Days of the week the provider operates.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Days_of_Operation__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hours of the day the provider operates.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Operating Status is Inactive has ended.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Inactive_End_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Operating Status is Inactive has started.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Inactive_Start_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If TRUE, this provider is on a military installation' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Military__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If TRUE, this accounts is OSPI' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_OSPI__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of AIAN (American Indian, Alaska Native) participation slots for Early Head Start Home based programs.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'AIAN_Early_Head_Start_Home_Based__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number American Indian, Alaska Native participation slots for Early Head Start programs.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'AIAN_Head_Start__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows user to designate that the provider has no referral status.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'No_Referral_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The office in which the Provider would be working.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Office__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Field to add more detail into inactive Operating Status.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Operating_Status_Detail__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason for the inactive Operating Status.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Operating_Status_Reason__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determines the current operating status of the Provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Operating_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City for the physical location of a provider, coming from FamLink' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_City__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physical address''s state, initially comes from FamLink' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_State__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Street address for the physical location of a provider, initially coming from FamLink' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_Street__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physical Address''s zip code, initially comes from FamLink' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_Zip__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The region in which the provider is located.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Region__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School District for this Provider, need to update the pick list values as provided.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'School_District__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The tribe that is associated to this provider.  1/12 SP - List currently from :http://www.ncsl.org/research/state-tribal-institute/list-of-federal-and-state-recognized-tribes.aspx#wa' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Tribal_Affiliation__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The "also known as" names for this Account' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'AKA_Names__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The age range served at the provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Ages_Served__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Anniversary Date (MM/DD)' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Anniversary_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the certificate of occupancy of the latest license.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Certificate_of_Occupancy__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of open licenses on the account' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Count_Of_Open_Licenses__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric identifier for the County related to the Facility address.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'CountyId__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current Early Achievers program record id from the Program object' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_EA_Program_Rec_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the status of the facility license.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_License_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the display label used for the Primary Contact in the Mobile Inspection app and other custom coded pages.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Primary_Contact_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the primary contact.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Primary_Contact_Phone__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup to the current Primary Contact within the Contact Account Role object.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Primary_Contact_Rec_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address for the assigned Licensor.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'DEL_Licensor_Email__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name for the assigned Department of Early Learning Licensor.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'DEL_Licensor_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric phone number for the assinged Department of Early Learning Licensor.NOTE: If more than 10 digits, then it indicates an extension.  No international prefixes.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'DEL_Licensor_Phone__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display label for the various ECEAP program slots associated to the Provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'ECEAP_Slots_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The EIN Tax ID for the provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'EIN_Tax_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Educational Service District for the provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Educational_Service_District__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The elementary school aligned to this provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Elementary_School_Lookup__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ending age served on the latest license' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Ending_Age_Served_Formula__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the person who last updated the provider record in Famlink' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Famlink_Last_Updated_By__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the Fire Marshal Visit of the latest license.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Fire_Marhshal_Visit_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the provider has or had a license' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Has_License_Formula__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the health procedures were reviewed.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Health_Procedures_Reviewed_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the person who reviewed the health procedures.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Health_Procedures_Reviewed_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The high school aligned to the provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'High_School_Lookup__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the Non-Provider is an Elementary School.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Elementary_School__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the Non-Provider is a High School.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_High_School__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the Non-Provider is a Middle School.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Middle_School__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flattens the multi-select picklist values on the Latest Provider license for use in the Provider Case preparation for mobile app download.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Age_Group_Served__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'License capacity on the most current Provider License.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Capacity__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latest provider license end category type and end date.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_End_Reason__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The expiration date of the latest license' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Expiration_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pulls in the Facility Type Name form the latest Provider License record' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Facility_Type_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'License ID attribute off the most recently created Provider License record.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup to the latest/current Provider License record.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Rec_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latest provider license start date.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Start_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'License Status for the most recently created Provider License record.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'License Type for the most recently created Provider License record.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Type__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checkbox shows if provider is license exempt.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'License_Exempt__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Displays the Latest License Facility Type Name value if it exists; otherwise, it displays the License Facility Type Name value.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'License_Facility_Type_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of children who can be served.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Licensed_Capacity__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the Local planning office was notified of this provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Local_Planning_Office_Notified__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the Account should get mobilized. This is manually set. Record owner should also be set to whoever needs to synchronize over the case.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'MC_Is_Mobilized_Account__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created by MobileCaddy this is used to store a proxy id for records created offline' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'MC_Proxy_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The middle school aligned to the provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Middle_School_Lookup__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provides a count of the number of mobilized provider cases for an Account.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Mobilized_Provider_Case_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time when the Provider was designated as a No Refer' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'No_Referral_Begin_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional Notes to explain why the Provider was designated as a No Refer' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'No_Referral_Notes__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The entity who initiated the No Referral designation for this provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'No_Referral_Type__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Street Address of the office.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Office_Address_1__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The City, State, Zip code of the office.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Office_Address_2__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the facility is located on tribal land' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'On_Tribal_Land__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to display data in the Mobile app.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Primary_Contact_Full_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to display data in the Mobile app.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Primary_Contact_Phone__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary Language for the Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Primary_Language__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to hide all records for a particular provider.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Restricted__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The starting age served on the latest license' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Starting_Age_Served_Formula__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used for the form tool, the date/time stamp that a form is created, for testing so likely can be deleted' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'VIP_Date_Time_Submitted__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'for testing, Melissa will delete' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'VIP_Template_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count of all Primary Contacts that are active.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Active_Primary_Contact_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up sum from classrooms, which have roll up sum of sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Extended_Day_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up summary across classrooms, which has a roll up summary across sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Full_Day_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up sum from classrooms, which have roll up sum of sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Part_Day_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rollup summary of slots from all classrooms, which has rollup summary across all sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_HeadStart_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicate whether provider wants their location to appear in the map view on the public site' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Opt_In_Map_View__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checkbox indicating the "opt-in" to display a Provider''s street address' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Opt_In_Physical_Street_Address__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Uncheck if provider contacts DEL with a valid reason to be removed from public search results' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Opt_in_to_Public_Search__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment types accepted' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Accepted_Payment_Types__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Picklist field that is to be used in the Provider Portal allowing providers to indicate whether or not they are accepting new children. This value is then to be exposed on the providers profile in the Public Search site.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Accepting_New_Children__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display Label used to display the account name on the public site. Display DBA if populated, display account name if blank.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Account_Name_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Licensed Age From value in number of months used in Public Search.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Age_From_Normalized__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Licensed Age To value in number of months used in Public Search.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Age_To_Normalized__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display label for the Primary Contact of the Provider that is displayed on the Public Search Site.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Primary_Contact_Detail_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup to the current Primary Licensor within the Custom Account Team object.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Primary_DEL_Licensor__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Boolean field used to control if geolocation pins appear on the Map View of the public search site.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Display_on_Map_View__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if provider meets set business criteria for inclusion in the public search (needs to be updated)' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Display_on_Public_Search__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Fridays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Fri__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Mondays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Mon__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Saturdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Sat__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Sundays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Sun__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Thursdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Thu__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Tuesdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Tue__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End time for Wednesdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'End_Time_Wed__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Fri__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Mon__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Sun__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Thu__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Tue__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Formula display field that shows the hours of operation.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Hours_of_Operation_Wed__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Provider currently offers ECEAP slots.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Funded_ECEAP__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Provider currently offers Early Head Start slots.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Funded_EHS__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Provider currently offers Head Start slots.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Is_Funded_HS__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Multi select picklist that allows the provider to indicate which languages are spoken.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Languages_Spoken__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The latest license record sub type.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Sub_Type__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To capture if low income children are served, physically located in low income school district.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Low_Income_Children_Served__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Standardizes the formatting of phone numbers from external systems for use on the public search site' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Phone_Normalized__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to determine the the county of the physical address.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_County__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conditionally displays the Provider - Physical Address or Intersection based on Display Physical Street Address check box field.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_Street_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text field used to capture the cross streets near a Physical Street Address' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Physical_Street_Intersection_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Schedule of operation for Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Schedules_Of_Operation__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start time for Fridays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Fri__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start time on Mondays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Mon__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start time for Saturdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Sat__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start Time for Sundays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Sun__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provider start time for Thursdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Thu__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start time for Tuesdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Tue__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start time for Wednesdays' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Start_Time_Wed__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To capture Tier1 Food Program enrollment' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Tier1_Food_Program__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of Classrooms for associated Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_Classroom_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up sum from classrooms, which have roll up sum of sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Extended_Day_SlotsOld__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up summary across classrooms, which has a roll up summary across sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Full_Day_Slotsold__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rollup summary to calculate the total amount of ECEAP Full Slots' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Full_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of slots for this program across all sessions. Roll up sum from classrooms, which have roll up sum of sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Part_Day_Slotsold__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rollup summary to calculate the total amount of ECEAP Part Slots' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Part_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rollup summary to calculate the total amount of Early Head Start Program Slots' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_Early_Head_Start_Program_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rollup summary of slots from all classrooms, which has rollup summary across all sessions.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_HeadStart_Slotsold__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rollup summary to calculate the total amount of Head Start Program Slots' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_Head_Start_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used for licensing reports.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Certificate_Type__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'latest license record create date.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_License_Created_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Early Achiever Pathway coming from MERIT integration to capture which pathway the ECEAP contractor has taken.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achiever_Pathway__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Displays the Early Achievers Areas of Specialization related to the Account from the Program object.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achievers_Areas_Of_Specialization__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EA rating information to display on public site  based on the internal rating. Does not include specific rating, only whether the provider is not enrolled, participating, or rated.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achiever_Status_External__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address for the assigned EA Contact' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achievers_Contact_Email__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name for the assigned Early Achievers Contact' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achievers_Contact_Name__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric phone number for the assigned Early Achievers Contact.NOTE: If more than 10 digits, then it indicates an extension. No international prefixes.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achievers_Contact_Phone__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective Date/Time of  the earliest Program - Early Achiever record' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Initial_Early_Achievers_Enroll_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used to pull the latest Effective Date/Time from the Program object for the provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Current_Early_Achievers_Enroll_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Internal current Early Achiever program participation status.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Early_Achiever_Status_Internal__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Melissa will be deleting' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'VIP_Template__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of school year.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'School_Year_End_date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date of the school year' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'School_Year_Start_Date__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used for tracking the unique Contacts having PP_Login_Status__c=true across Employment__c and Contact_Account_Role__c objects' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PP_Total_Unique_Login_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count the number of active Contact_Account_Role__c records having PP_Login_Is_Visible=true AND PP_Login_Status__c=true' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PP_CAR_Login_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Counts the number of active Employment__c records having PP_Login_Is_Visible=true AND PP_Login_Status__c=true.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PP_Emp_Login_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Login Count for sum of field PP CAR Login Count + PP Emp Login Count' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PP_Total_Login_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of unique contact ids that are associated with the account regardless of login status' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PP_Unique_Contact_Count__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRUE = provider is open all year' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Open_Year_Round__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provider accepts full time students' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Accepts_Full_Time_Students__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provider takes part time students' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Accepts_Part_Time_Students__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Open and close times are the same Mon-Friday' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Same_Mon_to_Fri__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The latest overall quality rating for the Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Quality_Rating__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The latest referral status for the Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Referral_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used as a holding area for Provider Self Descriptions prior to approval' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Self_Description_Pending__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Set by Licensing Specialist, indicates the Self Description has been approved' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Self_Description_Approved__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRUE indicates Provider Self Description Pending has been updated' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Self_Description_Needs_Review__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Label used for physical address in the Provider Portal.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Portal_Physical_Address_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provider logo uploaded by provider on the provider portal. May appear on public site' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Logo__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display field to be used for displaying a providers name on the Public Site Provider Detail page.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Name_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'High level description of Early Achiever program participant.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Self_Description__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks what stage the Provider is in during the licensing and EA journey.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Stage__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display label for a providers contact information to be displayed on the public site.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'PS_Provider_ContactUs_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display label used for Providers in the Complaint Management page typeahead.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Details_Display_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Concatenated version of the Physical Address fields.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Location_Label__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the provider is open or closed' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Status__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provider type coming from the tool kit, needs to be updated with correct pick list values. Added because it''s in the toolkit screen shots, possibly deleted once we get through migration if deemed not needed?' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Provider_Type__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility ID from MERIT' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'MERIT_Facility_ID__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of days between school year close date and school year open date' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'School_Year_Days_Closed__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rollup summary to calculate the total amount of ECEAP Extended Day Slots.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Total_ECEAP_Extended_Slots__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count of the number of Quality Improvement Plans for the Provider' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Count_QIP__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latest licensing orientation for the associated employee' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_Licensing_Orientation_1__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latest licensing orientation 2 for the associated employee' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_Licensing_Orientation_2__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Max Latest Licensing Orientation 1 date value from active Contact Account Role records.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_Lic_Orientation1_CAR__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Max Latest Licensing Orientation 2 date value from active Contact Account Role records.' , @level0type=N'SCHEMA',@level0name=N'Detail', @level1type=N'TABLE',@level1name=N'SalesforceAccount', @level2type=N'COLUMN',@level2name=N'Latest_Lic_Orientation2_CAR__c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto number filed for records' , @level0type=N'SCHEMA',@level0name=N'ETLImport', @level1type=N'TABLE',@level1name=N'SchemaXMLFiles', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the file' , @level0type=N'SCHEMA',@level0name=N'ETLImport', @level1type=N'TABLE',@level1name=N'SchemaXMLFiles', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Datetime the record was inserted into the table' , @level0type=N'SCHEMA',@level0name=N'ETLImport', @level1type=N'TABLE',@level1name=N'SchemaXMLFiles', @level2type=N'COLUMN',@level2name=N'InsertDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the file been processed' , @level0type=N'SCHEMA',@level0name=N'ETLImport', @level1type=N'TABLE',@level1name=N'SchemaXMLFiles', @level2type=N'COLUMN',@level2name=N'FileHasBeenProcessed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SchemaXMLFiles' , @level0type=N'SCHEMA',@level0name=N'ETLImport', @level1type=N'TABLE',@level1name=N'SchemaXMLFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'DataMart', @level1type=N'VIEW',@level1name=N'vwAccountCovidClosure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'DataMart', @level1type=N'VIEW',@level1name=N'vwAccountCovidClosure'
GO
USE [master]
GO
ALTER DATABASE [WACompass] SET  READ_WRITE 
GO
