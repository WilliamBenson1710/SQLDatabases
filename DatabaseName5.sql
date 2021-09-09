USE [master]
GO
/****** Object:  Database [DBMaint]    Script Date: 9/7/2021 2:29:47 PM ******/
CREATE DATABASE [DBMaint]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBMaint', FILENAME = N'G:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DBMaint.mdf' , SIZE = 10672768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBMaint_log', FILENAME = N'L:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Log\DBMaint_log.LDF' , SIZE = 625792KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [DBMaint] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBMaint].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBMaint] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBMaint] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBMaint] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBMaint] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBMaint] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBMaint] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBMaint] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBMaint] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBMaint] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBMaint] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBMaint] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBMaint] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBMaint] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBMaint] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBMaint] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBMaint] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBMaint] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBMaint] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [DBMaint] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBMaint] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBMaint] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBMaint] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBMaint] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBMaint] SET  MULTI_USER 
GO
ALTER DATABASE [DBMaint] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBMaint] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBMaint] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBMaint] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBMaint] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBMaint', N'ON'
GO
ALTER DATABASE [DBMaint] SET QUERY_STORE = OFF
GO
USE [DBMaint]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DBMaint]
GO
/****** Object:  User [sql.dbatest]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [sql.dbatest] FOR LOGIN [sql.DBAtest] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Sql.datareader]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [Sql.datareader] FOR LOGIN [Sql.datareader] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DeveloperJobExec]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DeveloperJobExec] FOR LOGIN [DeveloperJobExec] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DCYF\G-S-DCYF-Subsidy ETL Developers]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-Subsidy ETL Developers] FOR LOGIN [DCYF\G-S-DCYF-Subsidy ETL Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Subsidy Developers]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-Subsidy Developers] FOR LOGIN [DCYF\G-S-DCYF-Subsidy Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-SalesForce Developers]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-SalesForce Developers] FOR LOGIN [DCYF\G-S-DCYF-SalesForce Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Merit Developers]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-Merit Developers] FOR LOGIN [DCYF\G-S-DCYF-Merit Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Attendance Developers]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE USER [DCYF\G-S-DCYF-Attendance Developers] FOR LOGIN [DCYF\G-S-DCYF-Attendance Developers]
GO
/****** Object:  DatabaseRole [rlDeveloperJobExec]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE ROLE [rlDeveloperJobExec]
GO
/****** Object:  DatabaseRole [ODWaCompass]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE ROLE [ODWaCompass]
GO
/****** Object:  DatabaseRole [ODSubsidy]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE ROLE [ODSubsidy]
GO
/****** Object:  DatabaseRole [ODRMS]    Script Date: 9/7/2021 2:29:48 PM ******/
CREATE ROLE [ODRMS]
GO
/****** Object:  DatabaseRole [ODPublicDisclosureTracking]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODPublicDisclosureTracking]
GO
/****** Object:  DatabaseRole [ODPolicyProposals]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODPolicyProposals]
GO
/****** Object:  DatabaseRole [ODMERIT]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODMERIT]
GO
/****** Object:  DatabaseRole [ODFRATS]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODFRATS]
GO
/****** Object:  DatabaseRole [ODESITDMS]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODESITDMS]
GO
/****** Object:  DatabaseRole [ODEPH]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODEPH]
GO
/****** Object:  DatabaseRole [ODELMS]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODELMS]
GO
/****** Object:  DatabaseRole [ODELDR]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODELDR]
GO
/****** Object:  DatabaseRole [ODEAR]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODEAR]
GO
/****** Object:  DatabaseRole [ODBackgroundCheck]    Script Date: 9/7/2021 2:29:49 PM ******/
CREATE ROLE [ODBackgroundCheck]
GO
/****** Object:  DatabaseRole [OdAttendance]    Script Date: 9/7/2021 2:29:50 PM ******/
CREATE ROLE [OdAttendance]
GO
/****** Object:  DatabaseRole [dvlprlUserMngmt]    Script Date: 9/7/2021 2:29:50 PM ******/
CREATE ROLE [dvlprlUserMngmt]
GO
/****** Object:  DatabaseRole [dvlprlDBMainUsers]    Script Date: 9/7/2021 2:29:50 PM ******/
CREATE ROLE [dvlprlDBMainUsers]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [sql.dbatest]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [Sql.datareader]
GO
ALTER ROLE [rlDeveloperJobExec] ADD MEMBER [DeveloperJobExec]
GO
ALTER ROLE [ODSubsidy] ADD MEMBER [DCYF\G-S-DCYF-Subsidy ETL Developers]
GO
ALTER ROLE [ODSubsidy] ADD MEMBER [DCYF\G-S-DCYF-Subsidy Developers]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [DCYF\G-S-DCYF-Subsidy Developers]
GO
ALTER ROLE [ODWaCompass] ADD MEMBER [DCYF\G-S-DCYF-SalesForce Developers]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [DCYF\G-S-DCYF-SalesForce Developers]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [DCYF\G-S-DCYF-Merit Developers]
GO
ALTER ROLE [OdAttendance] ADD MEMBER [DCYF\G-S-DCYF-Attendance Developers]
GO
ALTER ROLE [dvlprlUserMngmt] ADD MEMBER [DCYF\G-S-DCYF-Attendance Developers]
GO
/****** Object:  Schema [BackupRestore]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [BackupRestore]
GO
/****** Object:  Schema [Config]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Config]
GO
/****** Object:  Schema [Detail]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Detail]
GO
/****** Object:  Schema [DR]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [DR]
GO
/****** Object:  Schema [JobNotifications]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [JobNotifications]
GO
/****** Object:  Schema [Logging]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Logging]
GO
/****** Object:  Schema [Lookup]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Lookup]
GO
/****** Object:  Schema [Maintenance]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Maintenance]
GO
/****** Object:  Schema [OdAttendance]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [OdAttendance]
GO
/****** Object:  Schema [ODBackgroundCheck]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODBackgroundCheck]
GO
/****** Object:  Schema [ODEAR]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODEAR]
GO
/****** Object:  Schema [ODELDR]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODELDR]
GO
/****** Object:  Schema [ODELMS]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODELMS]
GO
/****** Object:  Schema [ODEPH]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODEPH]
GO
/****** Object:  Schema [ODESITDMS]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODESITDMS]
GO
/****** Object:  Schema [ODFRATS]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODFRATS]
GO
/****** Object:  Schema [ODMERIT]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODMERIT]
GO
/****** Object:  Schema [ODPolicyProposals]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODPolicyProposals]
GO
/****** Object:  Schema [ODPublicDisclosureTracking]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODPublicDisclosureTracking]
GO
/****** Object:  Schema [ODRMS]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODRMS]
GO
/****** Object:  Schema [ODSubsidy]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODSubsidy]
GO
/****** Object:  Schema [ODWaCompass]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [ODWaCompass]
GO
/****** Object:  Schema [RedGateLocal]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [RedGateLocal]
GO
/****** Object:  Schema [UserMngmt]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [UserMngmt]
GO
/****** Object:  Schema [Utilities]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE SCHEMA [Utilities]
GO
/****** Object:  UserDefinedFunction [dbo].[fnSplitString]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSplitString] 
( 
    @string NVARCHAR(MAX), 
    @delimiter CHAR(1) 
) 
RETURNS @output TABLE(splitdata NVARCHAR(MAX) 
) 
BEGIN 
    DECLARE @start INT, @end INT 
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string) 
    WHILE @start < LEN(@string) + 1 BEGIN 
        IF @end = 0  
            SET @end = LEN(@string) + 1
       
        INSERT INTO @output (splitdata)  
        VALUES(SUBSTRING(@string, @start, @end - @start)) 
        SET @start = @end + 1 
        SET @end = CHARINDEX(@delimiter, @string, @start)
        
    END 
    RETURN 
END
GO
/****** Object:  UserDefinedFunction [Utilities].[fnGetDatabaseList]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- User Defined Function

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Utilities].[fnGetDatabaseList]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
-- Returnes a list of database based on the values that were sent in
	@DatabaseListType - 0 = All/1=Include/2=Exclude
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2019-09-11 - Created by william.benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

--This would give you all databases
SELECT DatabaseId, DatabaseName
FROM [Utilities].fnGetDatabaseList(0,NULL,NULL)

--This would include the databases in the list
SELECT DatabaseId, DatabaseName
FROM [Utilities].fnGetDatabaseList(1,'master|model|tempdb|msdb','|')

--This would exclude the database in the list
SELECT DatabaseId, DatabaseName
FROM [Utilities].fnGetDatabaseList(0,'master|model|tempdb|msdb','|')

**************************************************************************************************/
CREATE FUNCTION [Utilities].[fnGetDatabaseList]
(@DatabaseListType TINYINT = 0
,@DatabaseList VARCHAR(4000) = NULL
,@ListSeperator CHAR(1) = '|')

RETURNS @Result TABLE
(DatabaseId INT
, DatabaseName sysname
)

AS

BEGIN


	IF (@DatabaseListType <> 0)
	BEGIN
		DECLARE @Databases AS TABLE(DatabaseName sysname);

		INSERT INTO @Databases(DatabaseName)
		SELECT splitdata FROM [dbo].[fnSplitString](@DatabaseList,@ListSeperator)
	END

	/* Return all database on the server */
	IF (@DatabaseListType = 0)
		INSERT INTO @Result
		(
		    DatabaseId,
		    DatabaseName
		)
		SELECT
		[Database_id]
		,[NAME]
		FROM sys.databases
		WHERE [STATE] = 0
		ORDER BY [NAME]

	/* Return a list of only the datatbase you included */
	IF (@DatabaseListType = 1)
		INSERT INTO @Result
		(
		    DatabaseId,
		    DatabaseName
		)
		SELECT
		[Database_id] AS DatabaseId
		,[NAME] AS DatabaseName
		FROM sys.databases
		WHERE [NAME] IN (SELECT DatabaseName FROM @Databases)
		AND [STATE] = 0
		ORDER BY [NAME]

	/* Return all database on except the ones you listed */
	IF (@DatabaseListType = 2)
		INSERT INTO @Result
		(
		    DatabaseId,
		    DatabaseName
		)
		SELECT
		[Database_id] AS DatabaseId
		,[NAME] AS DatabaseName
		FROM sys.databases
		WHERE [NAME] NOT IN (SELECT DatabaseName FROM @Databases)
		AND [STATE] = 0
		ORDER BY [NAME]

	RETURN

END

GO
/****** Object:  UserDefinedFunction [Utilities].[sfDayNameToWeekPart]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Utilities].[sfDayNameToWeekPart]
(
	-- Add the parameters for the function here
	@DayName VARCHAR(12)
)
RETURNS int
AS
BEGIN
	DECLARE @WeekPart VARCHAR(12)

	-- Add the T-SQL statements to compute the return value here
	SET @WeekPart = (SELECT CASE WHEN @DayName  = 'Sunday' THEN 1
			when @DayName  = 'Monday' THEN 2
			when @DayName  = 'Tuesday' THEN 3
			when @DayName  = 'Wednesday' THEN 4
			when @DayName  = 'Thursday' THEN 5
			when @DayName  = 'Friday' THEN 6
			when @DayName  = 'Saturday' THEN 7
			END)


	-- Return the result of the function
	RETURN @WeekPart

END
GO
/****** Object:  UserDefinedFunction [Utilities].[sfWeekPartToDayName]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Utilities].[sfWeekPartToDayName] 
(
	-- Add the parameters for the function here
	@WeekPart int
)
RETURNS VARCHAR(12)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @DayName VARCHAR(12)

	-- Add the T-SQL statements to compute the return value here
	SET @DayName = (SELECT CASE WHEN @WeekPart  = 1 THEN 'Sunday'
			when @WeekPart  = 2 THEN 'Monday'
			when @WeekPart  = 3 THEN 'Tuesday'
			when @WeekPart  = 4 THEN 'Wednesday'
			when @WeekPart  = 5 THEN 'Thursday'
			when @WeekPart  = 6 THEN 'Friday'
			when @WeekPart  = 7 THEN 'Saturday'
			END)

	-- Return the result of the function
	RETURN @DayName

END
GO
/****** Object:  UserDefinedFunction [Utilities].[udfFormatTime]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
Utilities.udfFormatTime

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
/****** Object:  UserDefinedFunction [Utilities].[udfRemoveStringData]    Script Date: 9/7/2021 2:29:51 PM ******/
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
/****** Object:  UserDefinedFunction [Utilities].[udfZeroPad]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
Utilities.udfZeroPad

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
/****** Object:  Table [Config].[Database]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[Database](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[DbId] [int] NULL,
	[DbName] [varchar](50) NOT NULL,
	[DbState] [tinyint] NOT NULL,
	[StateDesc] [nvarchar](60) NOT NULL,
	[RecoveryModel] [tinyint] NOT NULL,
	[RecoveryModelDesc] [nvarchar](60) NOT NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[BrokerEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Database] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[Backup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[Backup](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NOT NULL,
	[DatabaseId] [int] NOT NULL,
	[BackupOrder] [int] NOT NULL,
	[BackupStatus] [bit] NOT NULL,
	[DiffBackup] [bit] NOT NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LocalRetention] [smallint] NOT NULL,
	[RemoteRetention] [smallint] NOT NULL,
	[LastOutcome] [nvarchar](4000) NULL,
	[LastOutcomeInsertedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Backup] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[DatabaseBackupStatus]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Detail].[DatabaseBackupStatus]
AS
  SELECT b.RecordId AS 'Config.Backup ID'
  , d.RecordID AS 'Config.Database ID'
  ,d.dbid AS 'Database Id'
  ,d.dbname
  ,b.backupstatus
  ,b.LocalRetention
  ,b.RemoteRetention
  ,b.[LastOutcome]
  FROM [Config].[Database] d
  INNER JOIN [Config].[Backup] b
  ON d.RecordId = b.databaseID
GO
/****** Object:  Table [Detail].[DatabaseFileSizes]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[DatabaseFileSizes](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerName] [sysname] NOT NULL,
	[DatabaseId] [smallint] NOT NULL,
	[DatabaseName] [sysname] NOT NULL,
	[FileId] [smallint] NOT NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[TypeOfFile] [nvarchar](50) NULL,
	[PhysicalFileName] [nvarchar](250) NULL,
	[Size] [decimal](30, 2) NULL,
	[MaxSize] [decimal](30, 2) NULL,
	[FileSizeMB] [decimal](38, 2) NULL,
	[SpaceUsedMB] [decimal](30, 2) NULL,
	[FreeSpaceMB] [decimal](30, 2) NULL,
	[SizeCheckDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkDetailDatabaseFileSizes_RecordId]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkDetailDatabaseFileSizes_RecordId] ON [Detail].[DatabaseFileSizes]
(
	[RecordId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwDatabaseFileSizesMostRecent]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwDatabaseFileSizesMostRecent]


AS


WITH cteMaxCheckDate
AS (SELECT CONVERT(CHAR(10), MAX([SizeCheckDatetime]), 121) AS [MaxSizeCheckDatetime] FROM [DBMaint].[Detail].[DatabaseFileSizes]
)
SELECT
dfs.[RecordId]
,dfs.[ServerName]
,dfs.[DatabaseId]
,dfs.[DatabaseName]
,dfs.[FileId]
,dfs.[FileName]
,dfs.[TypeOfFile]
,dfs.[PhysicalFileName]
,dfs.[Size]
,dfs.[MaxSize]
,dfs.[FileSizeMB]
,dfs.[SpaceUsedMB]
,dfs.[FreeSpaceMB]
,(dfs.[FreeSpaceMB] / dfs.[FileSizeMB]) * 100 AS PercentFree
,dfs.[SizeCheckDatetime]
FROM [DBMaint].[Detail].[DatabaseFileSizes] AS dfs
INNER JOIN cteMaxCheckDate AS MaxDate
	ON dfs.SizeCheckDatetime >= MaxDate.MaxSizeCheckDatetime
GO
/****** Object:  View [Detail].[vwDatabaseFileSizesHistoryLogFiles]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwDatabaseFileSizesHistoryLogFiles]


AS


SELECT
dfs.[RecordId]
,dfs.[ServerName]
,dfs.[DatabaseId]
,dfs.[DatabaseName]
,dfs.[FileId]
,dfs.[FileName]
,dfs.[TypeOfFile]
,dfs.[PhysicalFileName]
,dfs.[Size]
,dfs.[MaxSize]
,dfs.[FileSizeMB]
,dfs.[SpaceUsedMB]
,dfs.[FreeSpaceMB]
,CONVERT(DECIMAL(10,2),([FreeSpaceMB] / [FileSizeMB]) * 100.00) AS [PercentFree]
,LAG([FileSizeMB], 1,0) OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime])  AS PrevsDayFileSizeMB
,RANK() OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime] DESC) AS RecordRank
,dfs.[SizeCheckDatetime]
FROM [DBMaint].[Detail].[DatabaseFileSizes] AS dfs
WHERE dfs.TypeOfFile = 'LOG'
GO
/****** Object:  Table [Lookup].[Environment]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lookup].[Environment](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[EnvironmentName] [varchar](50) NOT NULL,
	[EnvironmentDesc] [varchar](200) NULL,
	[InsertedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Environment] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lookup].[Classification]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lookup].[Classification](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationName] [varchar](50) NOT NULL,
	[ClassificationDesc] [varchar](200) NOT NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lookup].[FilePath]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lookup].[FilePath](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[FilePath] [varchar](100) NOT NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FilePathTypeId] [int] NOT NULL,
 CONSTRAINT [PK_BackupPath] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lookup].[Server]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lookup].[Server](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [varchar](50) NOT NULL,
	[EnvironmentId] [int] NOT NULL,
	[ClassificationId] [int] NOT NULL,
	[PreviousServerId] [int] NULL,
	[LocalBackupPathId] [int] NOT NULL,
	[RemoteBackupPathID] [int] NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProductionServer] [int] NULL,
 CONSTRAINT [PK_Server] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwServerInfo]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Detail].[vwServerInfo]
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
    SELECT s.RecordId
       ,s.ServerName
       ,s.EnvironmentId
	   ,e.EnvironmentName
	   ,e.EnvironmentDesc
	   ,c.ClassificationName
	   ,c.ClassificationDesc
       ,s.ClassificationId
       ,s.PreviousServerID
       ,s.LocalBackupPathID
	   ,fpl.FilePath AS 'LocalBackupPath'
       ,s.RemoteBackupPathID
	   ,fpr.FilePath AS 'RemoteBackupPath'
       ,s.InsertedDate AS InsertedDate
       ,s.IsActive
       ,s.ProductionServer
FROM Lookup.Server s
INNER JOIN Lookup.Classification c ON s.ClassificationId = c.RecordId
INNER JOIN Lookup.Environment e ON s.EnvironmentId = e.RecordId
INNER JOIN Lookup.FilePath fpl ON s.LocalBackupPathId = fpl.RecordId 
INNER JOIN Lookup.FilePath fpr ON s.RemoteBackupPathID = fpr.RecordId
WHERE s.IsActive = 1
-- WITH CHECK OPTION
GO
/****** Object:  View [Detail].[vwDatabaseFileSizesHistoryRowFiles]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwDatabaseFileSizesHistoryRowFiles]


AS


SELECT
dfs.[RecordId]
,dfs.[ServerName]
,dfs.[DatabaseId]
,dfs.[DatabaseName]
,dfs.[FileId]
,dfs.[FileName]
,dfs.[TypeOfFile]
,dfs.[PhysicalFileName]
,dfs.[Size]
,dfs.[MaxSize]
,dfs.[FileSizeMB]
,dfs.[SpaceUsedMB]
,dfs.[FreeSpaceMB]
,CONVERT(DECIMAL(10,2),([FreeSpaceMB] / [FileSizeMB]) * 100.00) AS [PercentFree]
,LAG([FileSizeMB], 1,0) OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime])  AS PrevsDayFileSizeMB
,RANK() OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime] DESC) AS RecordRank
,dfs.[SizeCheckDatetime]
FROM [DBMaint].[Detail].[DatabaseFileSizes] AS dfs
WHERE dfs.TypeOfFile = 'ROWS'
GO
/****** Object:  Table [Detail].[HardDriveSpace]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[HardDriveSpace](
	[ServerName] [nvarchar](150) NOT NULL,
	[OSDriveLetter] [nchar](1) NOT NULL,
	[DriveLetter] [nchar](3) NOT NULL,
	[DriveLabel] [nvarchar](50) NULL,
	[Capacity] [int] NOT NULL,
	[Freespace] [int] NULL,
	[InsertDateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Utilities].[vwHardDriveSpace]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Utilities].[vwHardDriveSpace]
AS

SELECT
[ServerName]
,[DriveLetter]
,[DriveLabel]
,([Capacity] /1024) AS [Capacity(GB)]
,([Capacity] - [Freespace]) /1024  AS [Used(GB)]
,([Freespace] / 1024) AS [Freespace(GB)]
FROM [DBMaint].[Detail].[HardDriveSpace] WITH (NOLOCK)
GO
/****** Object:  View [Detail].[vwServerDriveSpaceInfo]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Detail].[vwServerDriveSpaceInfo]
AS


SELECT
[ServerName]
--,[OSDriveLetter]
,[DriveLetter]
,CASE WHEN [OSDriveLetter] = 'C' AND [DriveLabel] IS NULL THEN 'OS'
    ELSE [DriveLabel]
END AS [DriveLabel]
,[Capacity]
,[Capacity] - [Freespace] AS UsedSpace
,[Freespace] AS FreeSpace
, CONVERT(DECIMAL(10,2), (CONVERT(DECIMAL(18,4),[Freespace])/ CONVERT(DECIMAL(18,4),[Capacity])) * 100) AS FreeSpacePct
, CONVERT(DECIMAL(10,2), (CONVERT(DECIMAL(18,4),[Capacity] - [Freespace])/ CONVERT(DECIMAL(18,4),[Capacity])) * 100) AS UsedSpacePct
,[InsertDateTime]
FROM [Detail].[HardDriveSpace]
GO
/****** Object:  View [dbo].[vw_syslogins]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_syslogins]
as
WITH cte_srm (principal_id, sysadmin, securityadmin, serveradmin, setupadmin, processadmin, diskadmin, dbcreator, bulkadmin) AS
	(
		SELECT
			srm.member_principal_id
			,MAX(CASE WHEN srm.role_principal_id = 3 THEN 1 END) AS sysadmin
			,MAX(CASE WHEN srm.role_principal_id = 4 THEN 1 END) AS securityadmin
			,MAX(CASE WHEN srm.role_principal_id = 5 THEN 1 END) AS serveradmin
			,MAX(CASE WHEN srm.role_principal_id = 6 THEN 1 END) AS setupadmin
			,MAX(CASE WHEN srm.role_principal_id = 7 THEN 1 END) AS processadmin
			,MAX(CASE WHEN srm.role_principal_id = 8 THEN 1 END) AS diskadmin
			,MAX(CASE WHEN srm.role_principal_id = 9 THEN 1 END) AS dbcreator
			,MAX(CASE WHEN srm.role_principal_id = 10 THEN 1 END) AS bulkadmin
		FROM
			sys.server_principals AS sp
		JOIN
			sys.server_role_members AS srm
		ON
			sp.principal_id = srm.role_principal_id
		WHERE
			sp.[type] = 'R'
		GROUP BY
			srm.member_principal_id
	)
SELECT
	pr.[sid]
	,CAST(NULL AS SMALLINT) AS [status]
	,pr.create_date
	,pr.modify_date AS updatedate
	,pr.create_date AS accdate
	,0 AS totcpu
	,0 AS totio
	,0 AS spacelimit
	,0 AS timelimit
	,0 AS resultlimit
	,pr.[name]
	,pr.default_database_name AS dbname
	,CAST(NULL AS SYSNAME) [password]
	,pr.default_language_name AS [language]
	,CAST(CASE WHEN pe.state = 'D' THEN 1 ELSE 0 END AS INT) AS denylogin
	,CAST(CASE WHEN pe.state = 'G' THEN 1 ELSE 0 END AS INT) AS hasaccess
	,CAST(CASE WHEN pr.[type] in ('U','G') THEN 1 ELSE 0 END AS INT) AS isntname
	,CAST(CASE WHEN pr.[type] = 'G' THEN 1 ELSE 0 END AS INT) AS isntgroup
	,CAST(CASE WHEN pr.[type] = 'U' THEN 1 ELSE 0 END AS INT) AS isntuser
	,ISNULL(cte_srm.sysadmin, 0) AS sysadmin
	,ISNULL(cte_srm.securityadmin, 0) AS securityadmin
	,ISNULL(cte_srm.serveradmin, 0) AS serveradmin
	,ISNULL(cte_srm.setupadmin, 0) AS setupadmin
	,ISNULL(cte_srm.processadmin, 0) AS processadmin
	,ISNULL(cte_srm.diskadmin, 0) AS diskadmin
	,ISNULL(cte_srm.dbcreator, 0) AS dbcreator
	,ISNULL(cte_srm.bulkadmin, 0) AS bulkadmin
	,pr.[name] AS loginname
FROM
	sys.server_principals AS pr
LEFT OUTER JOIN
	sys.server_permissions AS pe
ON
	pr.principal_id = pe.grantee_principal_id
AND
	pe.[type] = 'COSQ'
LEFT OUTER JOIN
	cte_srm
ON
	pr.principal_id = cte_srm.principal_id
WHERE
	pr.[type] <> 'R'
GO
/****** Object:  Table [Config].[UserDatabasePermissions]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[UserDatabasePermissions](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [nvarchar](100) NOT NULL,
	[UserCredentials] [nvarchar](100) NOT NULL,
	[DatabaseRoleName] [nvarchar](100) NOT NULL,
	[IsFixedRole] [bit] NOT NULL,
	[WithExcute] [bit] NOT NULL,
	[ViewDefinition] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ServerName] [nvarchar](100) NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
	[LastAssignedDatetime] [datetime2](4) NULL,
	[Comments] [nvarchar](500) NULL,
 CONSTRAINT [PK_UserDatabasePermissions_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[UserJobCategory]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[UserJobCategory](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[UserCredentials] [nvarchar](100) NOT NULL,
	[JobCategoryName] [nvarchar](500) NOT NULL,
	[InsertDateTime] [datetime2](4) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [pkConfig_UserJobCategory] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommandLog]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommandLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [sysname] NULL,
	[SchemaName] [sysname] NULL,
	[ObjectName] [sysname] NULL,
	[ObjectType] [char](2) NULL,
	[IndexName] [sysname] NULL,
	[IndexType] [tinyint] NULL,
	[StatisticsName] [sysname] NULL,
	[PartitionNumber] [int] NULL,
	[ExtendedInfo] [xml] NULL,
	[Command] [nvarchar](max) NOT NULL,
	[CommandType] [nvarchar](60) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[ErrorNumber] [int] NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_CommandLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[serverName] [varchar](250) NULL,
	[dbName] [varchar](250) NULL,
	[errormessage] [varchar](max) NULL,
	[loadDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreeSpace]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreeSpace](
	[Drive] [char](10) NULL,
	[PercentFreeSpace] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Queue]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queue](
	[QueueID] [int] IDENTITY(1,1) NOT NULL,
	[SchemaName] [sysname] NOT NULL,
	[ObjectName] [sysname] NOT NULL,
	[Parameters] [nvarchar](max) NOT NULL,
	[QueueStartTime] [datetime] NULL,
	[SessionID] [smallint] NULL,
	[RequestID] [int] NULL,
	[RequestStartTime] [datetime] NULL,
 CONSTRAINT [PK_Queue] PRIMARY KEY CLUSTERED 
(
	[QueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueueDatabase]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueueDatabase](
	[QueueID] [int] NOT NULL,
	[DatabaseName] [sysname] NOT NULL,
	[DatabaseOrder] [int] NULL,
	[DatabaseStartTime] [datetime] NULL,
	[DatabaseEndTime] [datetime] NULL,
	[SessionID] [smallint] NULL,
	[RequestID] [int] NULL,
	[RequestStartTime] [datetime] NULL,
 CONSTRAINT [PK_QueueDatabase] PRIMARY KEY CLUSTERED 
(
	[QueueID] ASC,
	[DatabaseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaVersions]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaVersions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScriptName] [nvarchar](255) NOT NULL,
	[Applied] [datetime] NOT NULL,
 CONSTRAINT [PK_SchemaVersions_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[FreeSpace]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[FreeSpace](
	[Drive] [char](10) NULL,
	[PercentFreeSpace] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[VersionNumber]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[VersionNumber](
	[VersionNumber] [varchar](25) NULL,
	[InsertDateTime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Logging].[ExecutionLog]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Logging].[ExecutionLog](
	[ExecutionId] [int] IDENTITY(1,1) NOT NULL,
	[ExecutionName] [varchar](512) NOT NULL,
	[SQLLogin] [varchar](512) NOT NULL,
	[ClientNetAddress] [varchar](128) NOT NULL,
	[ClientHostName] [varchar](128) NOT NULL,
	[ClientProgramName] [varchar](256) NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NULL,
	[ExecutionParams] [varchar](max) NULL,
	[Outcome] [varchar](64) NULL,
	[ErrorDetails] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Lookup].[FilePathType]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lookup].[FilePathType](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[FilePathType] [varchar](50) NOT NULL,
	[FilePathTypeDesc] [varchar](200) NOT NULL,
	[InsertedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FilePathType] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Maintenance].[DatabasePermissionsTMP]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Maintenance].[DatabasePermissionsTMP](
	[DatabaseName] [varchar](100) NULL,
	[RoleName] [varchar](100) NULL,
	[LoginName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [RedGateLocal].[DeploymentMetadata]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RedGateLocal].[DeploymentMetadata](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Action] [varchar](50) NOT NULL,
	[By] [nvarchar](128) NOT NULL,
	[As] [nvarchar](128) NOT NULL,
	[CompletedDate] [datetime] NOT NULL,
	[With] [nvarchar](128) NOT NULL,
	[BlockId] [varchar](50) NOT NULL,
	[InsertedSerial] [binary](8) NOT NULL,
	[UpdatedSerial] [timestamp] NOT NULL,
	[MetadataVersion] [varchar](50) NOT NULL,
	[Hash] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_UserCredentials_IsActive]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE NONCLUSTERED INDEX [ix_UserCredentials_IsActive] ON [Config].[UserJobCategory]
(
	[UserCredentials] ASC,
	[IsActive] ASC
)
INCLUDE([JobCategoryName]) WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [ix_CommandLog_StartTime]    Script Date: 9/7/2021 2:29:51 PM ******/
CREATE NONCLUSTERED INDEX [ix_CommandLog_StartTime] ON [dbo].[CommandLog]
(
	[StartTime] ASC
)
INCLUDE([DatabaseName],[Command],[CommandType]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_BackupOrder]  DEFAULT ((0)) FOR [BackupOrder]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_BackupStatus]  DEFAULT ((1)) FOR [BackupStatus]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_DiffBackup]  DEFAULT ((1)) FOR [DiffBackup]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_Retention]  DEFAULT ((3)) FOR [LocalRetention]
GO
ALTER TABLE [Config].[Backup] ADD  CONSTRAINT [DF_Backup_RemoteRetention]  DEFAULT ((14)) FOR [RemoteRetention]
GO
ALTER TABLE [Config].[Database] ADD  CONSTRAINT [DF_Database_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Config].[Database] ADD  CONSTRAINT [DF_Database_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Config].[Database] ADD  CONSTRAINT [DF_Database_BrokerEnables]  DEFAULT ((0)) FOR [BrokerEnabled]
GO
ALTER TABLE [Config].[UserDatabasePermissions] ADD  CONSTRAINT [DF_UserDatabasePermissions_IsFixedRole]  DEFAULT ((0)) FOR [IsFixedRole]
GO
ALTER TABLE [Config].[UserDatabasePermissions] ADD  CONSTRAINT [DF_UserDatabasePermissions_WithExcute]  DEFAULT ((0)) FOR [WithExcute]
GO
ALTER TABLE [Config].[UserDatabasePermissions] ADD  CONSTRAINT [DF_UserDatabasePermissions_ViewDefinition]  DEFAULT ((0)) FOR [ViewDefinition]
GO
ALTER TABLE [Config].[UserDatabasePermissions] ADD  CONSTRAINT [DF_UserDatabasePermissions_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Config].[UserDatabasePermissions] ADD  CONSTRAINT [DF_UserDatabasePermissions_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Config].[UserJobCategory] ADD  CONSTRAINT [DF_Config_UserJobCategory_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Config].[UserJobCategory] ADD  CONSTRAINT [DF_Config_UserJobCategory_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[error] ADD  CONSTRAINT [DF__error__loadDate__70DDC3D8]  DEFAULT (CONVERT([date],getdate(),(0))) FOR [loadDate]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_Size]  DEFAULT ((0)) FOR [Size]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_MaxSize]  DEFAULT ((0)) FOR [MaxSize]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_FileSizeMB]  DEFAULT ((0)) FOR [FileSizeMB]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_SpaceUsedMB]  DEFAULT ((0)) FOR [SpaceUsedMB]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_FreeSpaceMB]  DEFAULT ((0)) FOR [FreeSpaceMB]
GO
ALTER TABLE [Detail].[DatabaseFileSizes] ADD  CONSTRAINT [DF_ServerDatabaseFileSizes_SizeCheckDatetime]  DEFAULT (getdate()) FOR [SizeCheckDatetime]
GO
ALTER TABLE [Detail].[HardDriveSpace] ADD  CONSTRAINT [DF_HardDriveSpace_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[VersionNumber] ADD  CONSTRAINT [DF_DeatilVersionNumber_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Lookup].[Classification] ADD  CONSTRAINT [DF_Classification_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Lookup].[Classification] ADD  CONSTRAINT [DF_Classification_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Lookup].[Environment] ADD  CONSTRAINT [DF_Environment_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Lookup].[Environment] ADD  CONSTRAINT [DF_Environment_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [Lookup].[FilePath] ADD  CONSTRAINT [DF_FilePath_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Lookup].[FilePath] ADD  CONSTRAINT [DF_FilePath_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Lookup].[FilePathType] ADD  CONSTRAINT [DF_FilePathType_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Lookup].[FilePathType] ADD  CONSTRAINT [DF_FilePathType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Lookup].[Server] ADD  CONSTRAINT [DF_Server_InsertedDate]  DEFAULT (sysdatetime()) FOR [InsertedDate]
GO
ALTER TABLE [Lookup].[Server] ADD  CONSTRAINT [DF_Server_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [RedGateLocal].[DeploymentMetadata] ADD  DEFAULT (original_login()) FOR [By]
GO
ALTER TABLE [RedGateLocal].[DeploymentMetadata] ADD  DEFAULT (suser_sname()) FOR [As]
GO
ALTER TABLE [RedGateLocal].[DeploymentMetadata] ADD  DEFAULT (getdate()) FOR [CompletedDate]
GO
ALTER TABLE [RedGateLocal].[DeploymentMetadata] ADD  DEFAULT (app_name()) FOR [With]
GO
ALTER TABLE [RedGateLocal].[DeploymentMetadata] ADD  DEFAULT (@@dbts+(1)) FOR [InsertedSerial]
GO
ALTER TABLE [dbo].[QueueDatabase]  WITH CHECK ADD  CONSTRAINT [FK_QueueDatabase_Queue] FOREIGN KEY([QueueID])
REFERENCES [dbo].[Queue] ([QueueID])
GO
ALTER TABLE [dbo].[QueueDatabase] CHECK CONSTRAINT [FK_QueueDatabase_Queue]
GO
ALTER TABLE [Lookup].[FilePath]  WITH CHECK ADD  CONSTRAINT [FK_FilePath_FilePathType] FOREIGN KEY([FilePathTypeId])
REFERENCES [Lookup].[FilePathType] ([RecordId])
GO
ALTER TABLE [Lookup].[FilePath] CHECK CONSTRAINT [FK_FilePath_FilePathType]
GO
ALTER TABLE [Lookup].[Server]  WITH CHECK ADD  CONSTRAINT [FK_ProductionServer] FOREIGN KEY([PreviousServerId])
REFERENCES [Lookup].[Server] ([RecordId])
GO
ALTER TABLE [Lookup].[Server] CHECK CONSTRAINT [FK_ProductionServer]
GO
ALTER TABLE [Lookup].[Server]  WITH CHECK ADD  CONSTRAINT [FK_Server_BackupPath] FOREIGN KEY([LocalBackupPathId])
REFERENCES [Lookup].[FilePath] ([RecordId])
GO
ALTER TABLE [Lookup].[Server] CHECK CONSTRAINT [FK_Server_BackupPath]
GO
ALTER TABLE [Lookup].[Server]  WITH CHECK ADD  CONSTRAINT [FK_Server_Classification] FOREIGN KEY([ClassificationId])
REFERENCES [Lookup].[Classification] ([RecordId])
GO
ALTER TABLE [Lookup].[Server] CHECK CONSTRAINT [FK_Server_Classification]
GO
ALTER TABLE [Lookup].[Server]  WITH CHECK ADD  CONSTRAINT [FK_Server_Environment] FOREIGN KEY([EnvironmentId])
REFERENCES [Lookup].[Environment] ([RecordId])
GO
ALTER TABLE [Lookup].[Server] CHECK CONSTRAINT [FK_Server_Environment]
GO
ALTER TABLE [Lookup].[Server]  WITH CHECK ADD  CONSTRAINT [FK_Server_PreviousServer] FOREIGN KEY([PreviousServerId])
REFERENCES [Lookup].[Server] ([RecordId])
GO
ALTER TABLE [Lookup].[Server] CHECK CONSTRAINT [FK_Server_PreviousServer]
GO
/****** Object:  StoredProcedure [BackupRestore].[CopyOnlyBackup_MSSQL]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 9/7/2016
-- Description:	This is to create a COPY ONLY backup of the selected database and will place them in the designated file location. 
-- =============================================
CREATE PROCEDURE [BackupRestore].[CopyOnlyBackup_MSSQL]
	-- Add the parameters for the stored procedure here
(
@DatabasesToBackup VARCHAR(200)
,@FilePath VARCHAR(200)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



	
DECLARE @createfunction VARCHAR(500)
DECLARE @counter INT
DECLARE @rowcount INT
DECLARE @databasename VARCHAR(50)
DECLARE @sql VARCHAR(500)



CREATE TABLE #BackupTable
(
    rowid INT IDENTITY (1,1),
	databaseName NVARCHAR(250),
)

--DROP TABLE  #BackupTable


INSERT INTO #BackupTable
        ( databaseName )

SELECT * FROM dbo.fnSplitString(@DatabasesToBackup,',')



SET @counter = (SELECT MAX(rowid) FROM #BackupTable)
SET @RowCount = (SELECT MIN(rowid) FROM #BackupTable)


WHILE @RowCount <= @counter
	BEGIN

	SET @databasename = (SELECT databaseName FROM #BackupTable WHERE rowid = @rowcount)
	
	

	SET @sql = 'BACKUP DATABASE [' + @databasename + '] TO DISK = ''' + @FilePath + '\_' + @databasename + '.BAK'' 
				WITH COPY_ONLY, NOFORMAT, INIT, SKIP, NOREWIND, NOUNLOAD, COMPRESSION, STATS =10, CHECKSUM'

	EXEC(@sql)
	
	

	SET @rowcount += 1 


	END 


	DROP TABLE  #BackupTable
END
GO
/****** Object:  StoredProcedure [BackupRestore].[DatabaseBackup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 12/5/2019
-- Description:	Backup Script to manage each type of backup 1 = full 2 = DIFF 3 = Transaction
-- Change - 20200612 - William.Benson - added the @DbBackupName variable.
-- =============================================
CREATE   PROCEDURE [BackupRestore].[DatabaseBackup]
(
@BackupType INT 
,@MirrorBackup BIT	
,@DatabaseName sysname
,@DbFileName VARCHAR(256)
,@DbRemoteFileName VARCHAR(256)
,@DbBackupName NVARCHAR(250)
)
AS
BEGIN

IF @BackupType = 1
	BEGIN
	    IF @MirrorBackup = 1
			BEGIN
			    BACKUP DATABASE @DatabaseName TO DISK = @DbFileName MIRROR TO DISK = @DbRemoteFileName
				WITH CHECKSUM, COMPRESSION, INIT, NAME = @DbBackupName, FORMAT, MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
			END;
			ELSE
				BACKUP DATABASE @DatabaseName TO DISK = @DbFileName WITH CHECKSUM, COMPRESSION, NOINIT, NOFORMAT,
				MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
	END;

IF @BackupType = 2
	BEGIN
	    IF @MirrorBackup = 1
			BEGIN
			    BACKUP DATABASE @DatabaseName TO DISK = @DbFileName MIRROR TO DISK = @DbRemoteFileName
				WITH DIFFERENTIAL, CHECKSUM, COMPRESSION, INIT, NAME = @DbBackupName, FORMAT, MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
			END;
			ELSE
				BACKUP DATABASE @DatabaseName TO DISK = @DbFileName WITH DIFFERENTIAL, CHECKSUM, COMPRESSION, NOINIT, NOFORMAT, NAME = @DbBackupName,
				MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
	END;

IF @BackupType = 3
	BEGIN
	    IF @MirrorBackup = 1
			BEGIN
				BACKUP LOG @DatabaseName TO DISK = @DbFileName MIRROR TO DISK = @DbRemoteFileName
				WITH CHECKSUM, COMPRESSION, INIT, NAME = @DbBackupName, FORMAT, MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
			END;
			ELSE
				BACKUP LOG @DatabaseName TO DISK = @DbFileName WITH CHECKSUM, COMPRESSION, NOINIT, NOFORMAT, NAME = @DbBackupName,
				MAXTRANSFERSIZE = 131072 , SKIP, REWIND, NOUNLOAD, STATS = 10;
	END;

	SET NOCOUNT ON;
END;
GO
/****** Object:  StoredProcedure [BackupRestore].[DIFDatabaseBackup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		Charles Wolff	
-- Create date: 9/14/2017
-- Description:	To be used for taking differential backups of All databases except Sytstem databases that are in an online State.
-- Change Log: 9/14/2017 - Creation Date
--			   9/15/2017 - Added Section to Purge old backup files from the backup location
--			   12/6/2017 - Added A parameter to exclude databases you don't want backed 
--			   07/23/2019 - Added a parameter to include databases you want to backed (Don A Bulaong)
--			   08/01/2019 - Revert the part of the script to exclude the system databases (Don A Bulaong)
--             4/29/2020 - Deletion of OLD backup files will execute before the Backup Job (Don A Bulaong)
--             6/8/2020  - Revert the previous change due to file locking (Don A Bulaong)
-- Change - 20200612 - William.Benson - added the @DbBackupName variable.
-- Change - 20200623 - William.Benson - added the @RunDeleteProcess variable to control deleting of the files.
-- Change - 20210203 - William.Benson - added debug handling and chnged where the DB gets added to the file/direcotry gets created.
-- Change - 20210219 - William.Benson - added the dbname to the filepath for the local and remote paths
-- =============================================
CREATE                      PROCEDURE [BackupRestore].[DIFDatabaseBackup]
(@LocalRetentionDays INT = NULL
,@RemoteRetentionDays INT = NULL
,@SingleDatabaseToBackup NVARCHAR(250) = NULL
,@DescriptionOfBackup NVARCHAR(250) = 'DBA SQL Server Automated Backup'
,@RunDeleteProcess BIT = 1
,@MirrorTo BIT = 0
,@Debug BIT = 0
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

IF @Debug = 1
BEGIN
	PRINT '------------ Debug Inoformation BackupRestore.DIFDatabaseBackup ----------------' ;
END

/*create working tables*/
CREATE TABLE #DatabaseToBackup
(
id INT IDENTITY(1,1)
,DBName VARCHAR(50)
,LocalBackupRetention SMALLINT
,RemoteBackupRetention SMALLINT
)


DECLARE @testvariable TABLE (Line1 VARCHAR(250)) --this is for the file path check

/*Fill Working tables*/
IF @SingleDatabaseToBackup IS NULL
BEGIN
	INSERT INTO #DatabaseToBackup
	(
	    DBName
		,LocalBackupRetention
		,RemoteBackupRetention
	)
	SELECT d.DbName
	,b.LocalRetention
	,b.RemoteRetention
	FROM Config.[Database] d
	INNER JOIN Config.[Backup] b
	ON	d.RecordId = b.DatabaseId 
	WHERE b.BackupStatus = 1
	AND b.diffbackup = 1
	AND b.IsActive = 1
	AND d.IsActive = 1
	AND d.DbName NOT IN ('tempdb','master','model','msdb')
	ORDER BY b.BackupOrder
END


IF @SingleDatabaseToBackup IS NOT NULL
BEGIN
           INSERT INTO #DatabaseToBackup
       (
              DBName
              ,LocalBackupRetention
              ,RemoteBackupRetention
       )
       SELECT d.DbName
       ,b.LocalRetention
       ,b.RemoteRetention
       FROM Config.[Database] d
       INNER JOIN Config.[Backup] b
       ON     d.RecordId = b.DatabaseId 
       WHERE d.DbName = @SingleDatabaseToBackup
END
/* Global Variable declaration*/


DECLARE @DBName sysname
,@DataPath nvarchar(500)
,@RemoteDataPath NVARCHAR(500)
,@MaxDbId INT
,@CurrentDbId INT
,@localpath VARCHAR(256) -- path for backup files 
,@RemotePath VARCHAR(256)
,@fileName VARCHAR(256) -- filename for backup  
,@RemoteFileName VARCHAR(256)
,@fileDate VARCHAR(20) -- used for file name
,@BackupName  VARCHAR(256) --used to store the backup name
,@LocalDeleteDate DATETIME  -- Cutoff date
,@LocalDeletePath VARCHAR(256)
,@RemoteDeleteDate DATETIME
,@RemoteDeletePath VARCHAR(256)
,@CmdShellExec VARCHAR(100) -- this is for the file path check and is the CMD Shell variable for code execution CMD Shell variable for code execution


/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);
 

/*Initialize global variables*/
SELECT @localpath = (SELECT fp.FilePath FROM [Lookup].[Server] S
				INNER JOIN [Lookup].FilePath FP
				ON S.LocalBackupPathId = FP.RecordId
				WHERE s.ServerName = @@SERVERNAME)

SELECT @RemotePath = (SELECT fp.FilePath FROM [Lookup].[Server] S
				INNER JOIN [Lookup].FilePath FP
				ON S.RemoteBackupPathId = FP.RecordId
				WHERE s.ServerName = @@SERVERNAME)

SELECT @CmdShellExec = 'dir ' + @RemotePath

IF @Debug = 1
BEGIN
	PRINT '@localpath: ' + ISNULL(CAST(@localpath AS VARCHAR(250)), 'NULL') ;
	PRINT '@RemotePath: ' + ISNULL(CAST(@RemotePath AS VARCHAR(250)), 'NULL') ;
    PRINT '@CmdShellExec: ' + ISNULL(CAST(@CmdShellExec AS VARCHAR(250)), 'NULL') ;
END

/*Check if the Remote File Path is availabe and accessible
If it is not, change @MirrorTo = 0 (do not mirror)*/
INSERT INTO @testvariable
exec xp_cmdshell @CmdShellExec

IF EXISTS (SELECT TOP 1 Line1 FROM @testvariable WHERE Line1 = 'The network name cannot be found.'
OR Line1 = 'The system cannot find the file specified.')
	BEGIN
	    SELECT @MirrorTo = 0
	END

/*Initialize Iterator variables for the directory while loop. */
SET @CurrentDbId = (SELECT MIN(id) FROM #DatabaseToBackup)
SET @MaxDbId = (SELECT MAX(id) FROM #DatabaseToBackup)

/*specify filename format YYYYDDMM_HHMMSS*/
SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112) + '_' + REPLACE(CONVERT(VARCHAR(20),GETDATE(),108),':','')

IF @Debug = 1
BEGIN
	PRINT '@CurrentDbId: ' + ISNULL(CAST(@CurrentDbId AS VARCHAR(100)), 'NULL') ;
	PRINT '@MaxDbId: ' + ISNULL(CAST(@MaxDbId AS VARCHAR(100)), 'NULL') ;
    PRINT '@fileDate: ' + ISNULL(CAST(@fileDate AS VARCHAR(250)), 'NULL') ;
	PRINT '@LocalRetentionDays: ' + ISNULL(CAST(@LocalRetentionDays AS VARCHAR(100)), 'NULL') ;
    PRINT '@RemoteRetentionDays: ' + ISNULL(CAST(@RemoteRetentionDays AS VARCHAR(250)), 'NULL') ;
END

/*This WHILE loop will take the database from #DatabaseToBackup
Check if the Directories exist, and if not it will create them*/

WHILE @CurrentDbId <= @MaxDbId
	BEGIN
		BEGIN TRY 
			/*Initialize Name and Path variable to the current database in the List*/
			SELECT @DBName = [DBName], @LocalRetentionDays = ISNULL(@LocalRetentionDays,LocalBackupRetention), @RemoteRetentionDays = ISNULL(@RemoteRetentionDays,RemoteBackupRetention) FROM #DatabaseToBackup WHERE id = @CurrentDbId
			SET @LocalDeleteDate = DATEADD(day,-@LocalRetentionDays,GETDATE())
			SET @RemoteDeleteDate = DATEADD(DAY,-@RemoteRetentionDays,GETDATE())
			SET @DataPath = @localpath --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
			SET @RemoteDataPath = @RemotePath + @@SERVERNAME + '\' --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
			SET @BackupName = @DBName + '_' + @fileDate + '.DIF'

			IF @Debug = 1
                    BEGIN
	                    PRINT '@DBName: ' + ISNULL(CAST(@DBName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@DataPath: ' + ISNULL(CAST(@DataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RemoteDataPath: ' + ISNULL(CAST(@RemoteDataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@BackupName: ' + ISNULL(CAST(@BackupName AS VARCHAR(250)), 'NULL') ;
                    END
			---------------------------------------------------------------------------------------
			/*FILE PATH CREATION*/
			EXECUTE [Maintenance].[FilePathCreation] 
			@FilePathToCheck =@DataPath ,@DirectoryName = @DBName
			---------------------------------------------------------------------------------------
			/*BACKUP DATABASE
			Backup the current database to the selected path
			Setting MAXTRANSFERSIZE higher than 64K (65536 bytes) to be able to leverage backup compression using TDE. Check below link for documentation.
			https://www.mssqltips.com/sqlservertip/4522/backup-compression-performance-enhancements-for-sql-server-2016-tde-enabled-databases/ */
			
			--SET @fileName = N'' + @DataPath + '\' + @BackupName 
			--SET @RemoteFileName = N'' + @RemoteDataPath + '\' + @BackupName

			/* Added the @DBName to the file nams so that it goes to the correct folder */
            SELECT @fileName = N'' + @DataPath + @DBName + '\' + @BackupName 
            , @RemoteFileName = N'' + @RemoteDataPath + @DBName + '\' + @BackupName  
			,@LocalDeletePath = N'' + @DataPath + @DBName
		 ,@RemoteDeletePath = N'' + @RemoteDataPath + @DBName

			IF @Debug = 1
                    BEGIN
	                    PRINT '@fileName: ' + ISNULL(CAST(@fileName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@RemoteFileName: ' + ISNULL(CAST(@RemoteFileName AS VARCHAR(250)), 'NULL') ;
						PRINT '@RemoteFileName: ' + ISNULL(CAST(@RemoteFileName AS VARCHAR(250)), 'NULL') ;
						PRINT '@LocalDeletPath: ' + ISNULL(CAST(@LocalDeletePath AS VARCHAR(250)), 'NULL');
                        PRINT '@MirrorTo: ' + ISNULL(CAST(@MirrorTo AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RunDeleteProcess: ' + ISNULL(CAST(@RunDeleteProcess AS VARCHAR(250)), 'NULL') ;
                    END 
			
			IF @MirrorTo = 1 
				BEGIN
					EXECUTE [Maintenance].[FilePathCreation] 
					@FilePathToCheck = @RemoteDataPath,@DirectoryName = @DBName
					              
				    EXECUTE  [BackupRestore].[DatabaseBackup] 
					@BackupType = 2,@MirrorBackup = 1,@DatabaseName = @DBName
					,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName, @DbBackupName = @DescriptionOfBackup

					IF @RunDeleteProcess = 1
                    BEGIN
                        EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate
					    EXECUTE Utilities.DeleteBackupFiles @Path = @RemoteDeletePath, @DaysToDelete = @RemoteDeleteDate
                    END

				END
			ELSE
			
			--PRINT @fileName
			EXECUTE  [BackupRestore].[DatabaseBackup] 
				@BackupType = 2,@MirrorBackup = 0,@DatabaseName = @DBName
				,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName, @DbBackupName = @DescriptionOfBackup
			
			---------------------------------------------------------------------------------------
			/*DELETE OLD BACKUP FILES*/
            IF @RunDeleteProcess = 1
            BEGIN
			    EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate
            END
			---------------------------------------------------------------------------------------


			SET @CurrentDbId = @CurrentDbId +1
		END TRY
		BEGIN CATCH
			/*Update The backup Table with Result*/
			SET @CurrentDbId = @CurrentDbId +1
			UPDATE B
			SET B.LastOutcome = ERROR_MESSAGE()
			,B.LastOutcomeInsertedDateTime = SYSDATETIME()
			FROM Config.[Backup] B  
			INNER JOIN Config.[Database] D 
			ON B.RecordId = D.DbId
			WHERE D.DbName = @DBName;

			SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
			, @E_ErrorLineNumber = ERROR_LINE();  
		                
	                
			SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
			RAISERROR (@ErrMsg, 18, 1) ;

			
			--THROW
		END CATCH
	END

IF @Debug = 1
BEGIN
	PRINT '---------- End Debug Inoformation BackupRestore.DIFDatabaseBackup --------------' ;
END

SET NOCOUNT OFF
--Cleanup
DROP TABLE #DatabaseToBackup
END
GO
/****** Object:  StoredProcedure [BackupRestore].[FULLDatabaseBackup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:           Charles Wolff 
-- Create date: 9/14/2017
-- Description:      To be used for taking full backups of All databases except Temp DB that are in an online State.
-- Change Log: 9/14/2017 - Creation Date
--             9/15/2017 - Added Section to Purge old backup files from the backup location
--             12/6/2017 - Added A parameter to exclude databases you don't want backed up  
--             4/29/2020 - Deletion of OLD backup files will execute before the Backup Job (Don A Bulaong)
--			   6/8/2020  - Revert the previous change due to file locking (Don A Bulaong)
-- Change - 20200612 - William.Benson - added the @DbBackupName variable.
-- Change - 20200623 - William.Benson - added the @RunDeleteProcess variable to control deleting of the files.
-- Change - 20210203 - William.Benson - added debug handling and chnged where the DB gets added to the file/direcotry gets created.
-- Change - 20210301 - William.Benson - Removed  ,@RemoteDataPath = N'' + @RemoteDataPath + @DBName as its only used in the remote file path creation and we don't need to 
    -- add the db name to is since the procedure already does it. Also added ,@RemoteDeletePath = N'' + @RemoteDataPath + @DBName to add the data dbname to the delete section.
-- =============================================
CREATE            PROCEDURE [BackupRestore].[FULLDatabaseBackup]
( 
@LocalRetentionDays INT = NULL
,@RemoteRetentionDays INT = NULL
,@DescriptionOfBackup NVARCHAR(250) = 'DBA SQL Server Automated Backup'
,@SingleDatabaseToBackup NVARCHAR(250) = NULL
,@RunDeleteProcess BIT = 1
,@MirrorTo BIT = 0
,@Debug BIT = 0
)

AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;

---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

IF @Debug = 1
BEGIN
	PRINT '------------ Debug Inoformation BackupRestore.FULLDatabaseBackup ----------------' ;
END
  


/*Create working tables*/
CREATE TABLE #DatabaseToBackup
(
id INT IDENTITY(1,1)
,DBName VARCHAR(50)
,LocalBackupRetention SMALLINT
,RemoteBackupRetention SMALLINT
)


DECLARE @testvariable TABLE (Line1 VARCHAR(250)) --this is for the file path check

/*Fill Working tables*/

IF @SingleDatabaseToBackup IS NULL
BEGIN
       INSERT INTO #DatabaseToBackup
       (
              DBName
              ,LocalBackupRetention
              ,RemoteBackupRetention
       )
       SELECT d.DbName
       ,b.LocalRetention
       ,b.RemoteRetention	
       FROM Config.[Database] d
       INNER JOIN Config.[Backup] b
       ON     d.RecordId = b.DatabaseId 
       WHERE b.BackupStatus = 1
       AND b.IsActive = 1
       AND d.IsActive = 1
	   ORDER BY b.BackupOrder
END

IF @SingleDatabaseToBackup IS NOT NULL
BEGIN
       INSERT INTO #DatabaseToBackup
       (
              DBName
              ,LocalBackupRetention
              ,RemoteBackupRetention
       )
       SELECT d.DbName
       ,b.LocalRetention
       ,b.RemoteRetention
       FROM Config.[Database] d
       INNER JOIN Config.[Backup] b
       ON     d.RecordId = b.DatabaseId 
       WHERE d.DbName = @SingleDatabaseToBackup
END



/*Global Variable declaration*/

DECLARE @DBName sysname
,@DataPath nvarchar(500)
,@RemoteDataPath NVARCHAR(500)
,@MaxDbId INT
,@CurrentDbId INT
,@localpath VARCHAR(256) -- path for backup files 
,@RemotePath VARCHAR(256)
,@fileName VARCHAR(256) -- filename for backup  
,@RemoteFileName VARCHAR(256)
,@fileDate VARCHAR(20) -- used for file name
,@BackupName  VARCHAR(256) --used to store the backup name
,@LocalDeleteDate DATETIME  -- Cutoff date
,@LocalDeletePath VARCHAR(256)
,@RemoteDeleteDate DATETIME
,@RemoteDeletePath VARCHAR(256)
,@CmdShellExec VARCHAR(100) -- this is for the file path check and is the CMD Shell variable for code execution


/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);

/*Initialize global variables*/
SELECT @localpath = (SELECT fp.FilePath FROM [Lookup].[Server] S
                           INNER JOIN [Lookup].FilePath FP
                           ON S.LocalBackupPathId = FP.RecordId
                           WHERE s.ServerName = @@SERVERNAME)

SELECT @RemotePath = (SELECT fp.FilePath FROM [Lookup].[Server] S
                           INNER JOIN [Lookup].FilePath FP
                           ON S.RemoteBackupPathId = FP.RecordId
                           WHERE s.ServerName = @@SERVERNAME)

SELECT @CmdShellExec = 'dir ' + @RemotePath

IF @Debug = 1
BEGIN
	PRINT '@localpath: ' + ISNULL(CAST(@localpath AS VARCHAR(250)), 'NULL') ;
	PRINT '@RemotePath: ' + ISNULL(CAST(@RemotePath AS VARCHAR(250)), 'NULL') ;
    PRINT '@CmdShellExec: ' + ISNULL(CAST(@CmdShellExec AS VARCHAR(250)), 'NULL') ;
END

/*Check if the Remote File Path is availabe and accessible
If it is not, change @MirrorTo = 0 (do not mirror)*/
INSERT INTO @testvariable
exec xp_cmdshell @CmdShellExec

IF EXISTS (SELECT TOP 1 Line1 FROM @testvariable WHERE Line1 = 'The network name cannot be found.'
OR Line1 = 'The system cannot find the file specified.')
	BEGIN
	    SELECT @MirrorTo = 0
	END

/*Initialize Iterator variables for the directory while loop.*/ 
SET @CurrentDbId = (SELECT MIN(id) FROM #DatabaseToBackup)
SET @MaxDbId = (SELECT MAX(id) FROM #DatabaseToBackup)

/*specify filename format YYYYDDMM_HHMMSS*/
SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112) + '_' + REPLACE(CONVERT(VARCHAR(20),GETDATE(),108),':','')


IF @Debug = 1
BEGIN
	PRINT '@CurrentDbId: ' + ISNULL(CAST(@CurrentDbId AS VARCHAR(100)), 'NULL') ;
	PRINT '@MaxDbId: ' + ISNULL(CAST(@MaxDbId AS VARCHAR(100)), 'NULL') ;
    PRINT '@fileDate: ' + ISNULL(CAST(@fileDate AS VARCHAR(250)), 'NULL') ;
	PRINT '@LocalRetentionDays: ' + ISNULL(CAST(@LocalRetentionDays AS VARCHAR(100)), 'NULL') ;
    PRINT '@RemoteRetentionDays: ' + ISNULL(CAST(@RemoteRetentionDays AS VARCHAR(250)), 'NULL') ;
END

/*This WHILE loop will take the database from #DatabaseToBackup
Check if the Directories exist, and if not it will create them */

WHILE @CurrentDbId <= @MaxDbId
       BEGIN
              BEGIN TRY
                     /*Initialize Name and Path variable to the current database in the List*/
                     SELECT @DBName = [DBName], @LocalRetentionDays = ISNULL(@LocalRetentionDays,LocalBackupRetention), @RemoteRetentionDays = ISNULL(@RemoteRetentionDays,RemoteBackupRetention) FROM #DatabaseToBackup WHERE id = @CurrentDbId
                     
                     SELECT @LocalDeleteDate = DATEADD(day,-@LocalRetentionDays,GETDATE())
                     , @RemoteDeleteDate = DATEADD(DAY,-@RemoteRetentionDays,GETDATE())
                     , @DataPath = @localpath --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
                     , @RemoteDataPath = @RemotePath + @@SERVERNAME + '\' --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
                     , @BackupName = @DBName + '_' + @fileDate + '.BAK' 

                    IF @Debug = 1
                    BEGIN
	                    PRINT '------------------ Start Database Backup Loop ------------------------------'
                        PRINT '@DBName: ' + ISNULL(CAST(@DBName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@DataPath: ' + ISNULL(CAST(@DataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RemoteDataPath: ' + ISNULL(CAST(@RemoteDataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@BackupName: ' + ISNULL(CAST(@BackupName AS VARCHAR(250)), 'NULL') ;
                    END
        
                     ---------------------------------------------------------------------------------------
                     /*FILE PATH CREATION*/
                     EXECUTE [Maintenance].[FilePathCreation] 
                     @FilePathToCheck =@DataPath ,@DirectoryName = @DBName, @Debug = @Debug

                     ---------------------------------------------------------------------------------------
                     /*BACKUP DATABASE
                     Backup the current database to the selected path
                     Setting MAXTRANSFERSIZE higher than 64K (65536 bytes) to be able to leverage backup compression using TDE. Check below link for documentation.
                     https://www.mssqltips.com/sqlservertip/4522/backup-compression-performance-enhancements-for-sql-server-2016-tde-enabled-databases/ */

                     SELECT
                     @fileName = N'' + @DataPath + @DBName + '\' + @BackupName 
                     ,@RemoteFileName = N'' + @RemoteDataPath + @DBName + '\' + @BackupName
					 ,@LocalDeletePath = N'' + @DataPath + @DBName
					 ,@RemoteDeletePath = N'' + @RemoteDataPath + @DBName
                     
                    IF @Debug = 1
                    BEGIN
	                    PRINT '@fileName: ' + ISNULL(CAST(@fileName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@RemoteFileName: ' + ISNULL(CAST(@RemoteFileName AS VARCHAR(250)), 'NULL') ;
						PRINT '@LocalDeletePath: ' + ISNULL(CAST(@LocalDeletePath AS VARCHAR(250)), 'NULL');
						PRINT '@RemoteDataPath: ' + ISNULL(CAST(@RemoteDataPath AS VARCHAR(250)), 'NULL');
                        PRINT '@RemoteDeletePath: ' + ISNULL(CAST(@RemoteDeletePath AS VARCHAR(250)), 'NULL');
                        PRINT '@MirrorTo: ' + ISNULL(CAST(@MirrorTo AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RunDeleteProcess: ' + ISNULL(CAST(@RunDeleteProcess AS VARCHAR(250)), 'NULL') ;
                    END                     
                                  
                     IF @MirrorTo = 1 
                           BEGIN
                                  
                                IF @Debug = 1
                                BEGIN
	                                PRINT '--------- Start Mirrror Database Backup --------------------------------'
                                END
                                  
                                EXECUTE [Maintenance].[FilePathCreation] 
                                @FilePathToCheck = @RemoteDataPath,@DirectoryName = @DBName, @Debug = @Debug
                                  
								  
								  EXECUTE  [BackupRestore].[DatabaseBackup] 
                                  @BackupType = 1,@MirrorBackup = 1,@DatabaseName = @DBName
                                  ,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName, @DbBackupName = @DescriptionOfBackup

								  IF @RunDeleteProcess = 1
                                  BEGIN
                                    
                                        IF @Debug = 1
                                        BEGIN
	                                        PRINT '--------- Delete for Local Path --------------------------------'
	                                        PRINT '@Path: ' + ISNULL(CAST(@LocalDeletePath AS VARCHAR(250)), 'NULL');
	                                        PRINT '@DaysToDelete: ' + ISNULL(CAST(@LocalDeleteDate AS VARCHAR(250)), 'NULL');
                                        END
                                                                        
                                        EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate;

					                    IF @Debug = 1
                                        BEGIN
						                    PRINT '--------- Delete for Remote Path --------------------------------'
						                    PRINT '@Path: ' + ISNULL(CAST(@RemoteDeletePath AS VARCHAR(250)), 'NULL');
						                    PRINT '@DaysToDelete: ' + ISNULL(CAST(@RemoteDeleteDate AS VARCHAR(250)), 'NULL');
                                        END

                                        EXECUTE Utilities.DeleteBackupFiles @Path = @RemoteDeletePath, @DaysToDelete = @RemoteDeleteDate;
                                  END

                            IF @Debug = 1
                            BEGIN
						        PRINT '--------- End Mirror Database Backup --------------------------------'
					        END

                           END
                     ELSE
                           --PRINT @fileName
                           EXECUTE  [BackupRestore].[DatabaseBackup] 
                           @BackupType = 1,@MirrorBackup = 0,@DatabaseName = @DBName
                           ,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName, @DbBackupName = @DescriptionOfBackup


						  IF @RunDeleteProcess = 1
                          BEGIN
                              ---------------------------------------------------------------------------------------
                              /*DELETE OLD BACKUP FILES*/
                              EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate
                              ---------------------------------------------------------------------------------------
                          END
                     
                     /*Update The backup Table with Result*/

                     SET @CurrentDbId = @CurrentDbId +1

                     IF @Debug = 1
                     BEGIN
					    PRINT '--------- End Databse Backup Loop --------------------------------'
					 END

              END TRY
              BEGIN CATCH
                     /*Update The backup Table with Result*/
                     SET @CurrentDbId = @CurrentDbId +1
                     SELECT @ErrorSeverity = ERROR_SEVERITY()
                     , @ErrorMessage = ERROR_MESSAGE()
                     , @E_DatabaseName = DB_NAME()
                     , @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
                     , @E_ProcedureName = OBJECT_NAME(@@PROCID) 
                     , @E_ErrorLineNumber = ERROR_LINE();  
                              
                       
                     SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
                     RAISERROR (@ErrMsg, 18, 1) ;

                     UPDATE B
                     SET B.LastOutcome = @ErrMsg
                     ,B.LastOutcomeInsertedDateTime = SYSDATETIME()
                     FROM Config.[Backup] B  
                     INNER JOIN Config.[Database] D 
                     ON B.RecordId = D.DbId
                     WHERE D.DbName = @DBName
              END CATCH
       END

IF @Debug = 1
BEGIN
	PRINT '---------- End Debug Inoformation BackupRestore.FULLDatabaseBackup --------------' ;
END

SET NOCOUNT OFF
/*Cleanup*/
DROP TABLE #DatabaseToBackup
END
GO
/****** Object:  StoredProcedure [BackupRestore].[LOGDatabaseBackup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		Charles Wolff	
-- Create date: 9/14/2017
-- Description:	To be used for taking LOG backups of All databases except System DB's that are in an online State or not in BulkLogged/Full recovery models.
-- Change Log: 9/14/2017 - Creation Date
--			   9/15/2017 - Added Section to Purge old backup files from the backup location
--			   12/6/2017 - Added A parameter to exclude databases you don't want backed up	
--             4/29/2020 - Deletion of OLD backup files will execute before the Backup Job (Don A Bulaong)
--             6/8/2020  - Revert the previous change due to file locking (Don A Bulaong)
--      07/15/2020 - Added @DescriptionOfBackup to the proc and set it in the back up @DbBackupName = @DescriptionOfBackup (William.Benson)
-- Change - 20210219 - William.Benson - added the dbname to the filepath for the local and remote paths
-- =============================================
CREATE                   PROCEDURE [BackupRestore].[LOGDatabaseBackup]
(@LocalRetentionDays INT = NULL
,@RemoteRetentionDays INT = NULL
,@MirrorTo BIT = 0
,@SingleDatabaseToBackup NVARCHAR(250) = NULL
,@DescriptionOfBackup NVARCHAR(250) = 'DBA SQL Server Automated Backup'
,@RunDeleteProcess BIT = 1
,@Debug BIT = 0
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

IF @Debug = 1
BEGIN
	PRINT '------------ Debug Inoformation BackupRestore.LOGDatabaseBackup ----------------' ;
END

/*Create working tables*/
CREATE TABLE #DatabaseToBackup
(
id INT IDENTITY(1,1)
,DBName VARCHAR(50)
,LocalBackupRetention SMALLINT
,RemoteBackupRetention SMALLINT
)

DECLARE @testvariable TABLE (Line1 VARCHAR(250)) --this is for the file path check

/*Fill Working tables*/

IF @SingleDatabaseToBackup IS NULL
BEGIN
INSERT INTO #DatabaseToBackup
(
    DBName
	,LocalBackupRetention
	,RemoteBackupRetention
)
SELECT d.DbName
,b.LocalRetention
,b.RemoteRetention
FROM Config.[Database] d
INNER JOIN Config.[Backup] b
ON	d.RecordId = b.DatabaseId 
WHERE b.BackupStatus = 1
AND b.IsActive = 1
AND d.IsActive = 1
AND d.RecoveryModelDesc IN ('FULL','BULK_LOGGED')
AND d.DbName NOT IN ('tempdb','master','model','msdb')
ORDER BY b.BackupOrder
END

IF @SingleDatabaseToBackup IS NOT NULL
BEGIN
       INSERT INTO #DatabaseToBackup
       (
              DBName
              ,LocalBackupRetention
              ,RemoteBackupRetention
       )
       SELECT d.DbName
       ,b.LocalRetention
       ,b.RemoteRetention
       FROM Config.[Database] d
       INNER JOIN Config.[Backup] b
       ON     d.RecordId = b.DatabaseId 
       WHERE d.DbName = @SingleDatabaseToBackup
END 
-- Global Variable declaration

DECLARE @DBName sysname
,@DataPath nvarchar(500)
,@RemoteDataPath NVARCHAR(500)
,@MaxDbId INT
,@CurrentDbId INT
,@localpath VARCHAR(256) -- path for backup files 
,@RemotePath VARCHAR(256)
,@fileName VARCHAR(256) -- filename for backup  
,@RemoteFileName VARCHAR(256)
,@fileDate VARCHAR(20) -- used for file name
,@BackupName  VARCHAR(256) --used to store the backup name
,@LocalDeleteDate DATETIME  -- Cutoff date
,@LocalDeletePath VARCHAR(256)
,@RemoteDeleteDate DATETIME
,@RemoteDeletePath VARCHAR(256)
,@CmdShellExec VARCHAR(100) -- this is for the file path check and is the CMD Shell variable for code execution


/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);
 

/*Initialize global variables*/
SELECT @localpath = (SELECT fp.FilePath FROM [Lookup].[Server] S
				INNER JOIN [Lookup].FilePath FP
				ON S.LocalBackupPathId = FP.RecordId
				WHERE s.ServerName = @@SERVERNAME)

SELECT @RemotePath = (SELECT fp.FilePath FROM [Lookup].[Server] S
				INNER JOIN [Lookup].FilePath FP
				ON S.RemoteBackupPathId = FP.RecordId
				WHERE s.ServerName = @@SERVERNAME)

SELECT @CmdShellExec = 'dir ' + @RemotePath

IF @Debug = 1
BEGIN
	PRINT '@localpath: ' + ISNULL(CAST(@localpath AS VARCHAR(250)), 'NULL') ;
	PRINT '@RemotePath: ' + ISNULL(CAST(@RemotePath AS VARCHAR(250)), 'NULL') ;
    PRINT '@CmdShellExec: ' + ISNULL(CAST(@CmdShellExec AS VARCHAR(250)), 'NULL') ;
END

/*Check if the Remote File Path is availabe and accessible
If it is not, change @MirrorTo = 0 (do not mirror)*/
INSERT INTO @testvariable
exec xp_cmdshell @CmdShellExec

IF EXISTS (SELECT TOP 1 Line1 FROM @testvariable WHERE Line1 = 'The network name cannot be found.'
OR Line1 = 'The system cannot find the file specified.')
	BEGIN
	    SELECT @MirrorTo = 0
	END

--Initialize Iterator variables for the directory while loop. 
SET @CurrentDbId = (SELECT MIN(id) FROM #DatabaseToBackup)
SET @MaxDbId = (SELECT MAX(id) FROM #DatabaseToBackup)

-- specify filename format YYYYDDMM_HHMMSS
SELECT @fileDate = CONVERT(NVARCHAR(20),GETDATE(),112) + '_' + REPLACE(CONVERT(NVARCHAR(20),GETDATE(),108),':','')

IF @Debug = 1
BEGIN
	PRINT '@CurrentDbId: ' + ISNULL(CAST(@CurrentDbId AS VARCHAR(100)), 'NULL') ;
	PRINT '@MaxDbId: ' + ISNULL(CAST(@MaxDbId AS VARCHAR(100)), 'NULL') ;
    PRINT '@fileDate: ' + ISNULL(CAST(@fileDate AS VARCHAR(250)), 'NULL') ;
	PRINT '@LocalRetentionDays: ' + ISNULL(CAST(@LocalRetentionDays AS VARCHAR(100)), 'NULL') ;
    PRINT '@RemoteRetentionDays: ' + ISNULL(CAST(@RemoteRetentionDays AS VARCHAR(250)), 'NULL') ;
END

--This WHILE loop will take the database from #DatabaseToBackup
--Check if the Directories exist, and if not it will create them

WHILE @CurrentDbId <= @MaxDbId
	BEGIN
		BEGIN TRY
			/*Initialize Name and Path variable to the current database in the List*/
			SELECT @DBName = [DBName], @LocalRetentionDays = ISNULL(@LocalRetentionDays,LocalBackupRetention), @RemoteRetentionDays = ISNULL(@RemoteRetentionDays,RemoteBackupRetention) FROM #DatabaseToBackup WHERE id = @CurrentDbId
			SET @LocalDeleteDate = DATEADD(day,-@LocalRetentionDays,GETDATE())
			SET @RemoteDeleteDate = DATEADD(DAY,-@RemoteRetentionDays,GETDATE())
			SET @DataPath = @localpath --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
			SET @RemoteDataPath = @RemotePath + @@SERVERNAME + '\' --+ @DBName /*Removed the db name so that is doesn't use it for the folder creation */
			SET @BackupName = @DBName + '_' + @fileDate + '.TRN' 

			 IF @Debug = 1
                    BEGIN
	                    PRINT '@DBName: ' + ISNULL(CAST(@DBName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@DataPath: ' + ISNULL(CAST(@DataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RemoteDataPath: ' + ISNULL(CAST(@RemoteDataPath AS VARCHAR(250)), 'NULL') ;
                        PRINT '@BackupName: ' + ISNULL(CAST(@BackupName AS VARCHAR(250)), 'NULL') ;
                    END
			---------------------------------------------------------------------------------------
			--FILE PATH CREATION
			EXECUTE [Maintenance].[FilePathCreation] 
			@FilePathToCheck =@DataPath ,@DirectoryName = @DBName
			---------------------------------------------------------------------------------------
			--BACKUP DATABASE
			--Backup the current database to the selected path
			--Setting MAXTRANSFERSIZE higher than 64K (65536 bytes) to be able to leverage backup compression using TDE. Check below link for documentation.
			--https://www.mssqltips.com/sqlservertip/4522/backup-compression-performance-enhancements-for-sql-server-2016-tde-enabled-databases/
			
			--SET @fileName = N'' + @DataPath + '\' + @BackupName 
			--SET @RemoteFileName = N'' + @RemoteDataPath + '\' + @BackupName

            /* Added the @DBName to the file nams so that it goes to the correct folder */
			SELECT @fileName = N'' + @DataPath + @DBName + '\' + @BackupName 
            , @RemoteFileName = N'' + @RemoteDataPath + @DBName + '\' + @BackupName  
			,@LocalDeletePath = N'' + @DataPath + @DBName
			,@RemoteDeletePath = N'' + @RemoteDataPath + @DBName

			 IF @Debug = 1
                    BEGIN
	                    PRINT '@fileName: ' + ISNULL(CAST(@fileName AS VARCHAR(250)), 'NULL') ;
	                    PRINT '@RemoteFileName: ' + ISNULL(CAST(@RemoteFileName AS VARCHAR(250)), 'NULL') ;
						PRINT '@LocalDeletPath: ' + ISNULL(CAST(@LocalDeletePath AS VARCHAR(250)), 'NULL');
						PRINT '@RemoteDeletePath: ' + ISNULL(CAST(@RemoteDataPath AS VARCHAR(250)), 'NULL');
                        PRINT '@MirrorTo: ' + ISNULL(CAST(@MirrorTo AS VARCHAR(250)), 'NULL') ;
                        PRINT '@RunDeleteProcess: ' + ISNULL(CAST(@RunDeleteProcess AS VARCHAR(250)), 'NULL') ;
                    END  
			
			IF @MirrorTo = 1 
				BEGIN
					EXECUTE [Maintenance].[FilePathCreation] 
					@FilePathToCheck = @RemoteDataPath,@DirectoryName = @DBName
					
					
					EXECUTE  [BackupRestore].[DatabaseBackup] 
					@BackupType = 3,@MirrorBackup = 1,@DatabaseName = @DBName
					,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName
                    ,@DbBackupName = @DescriptionOfBackup
					
					
					EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate
					EXECUTE Utilities.DeleteBackupFiles @Path = @RemoteDeletePath, @DaysToDelete = @RemoteDeleteDate

				END
			ELSE
						
			--PRINT @fileName
			EXECUTE  [BackupRestore].[DatabaseBackup] 
				@BackupType = 3,@MirrorBackup = 0,@DatabaseName = @DBName
				,@DbFileName = @fileName,@DbRemoteFileName = @RemoteFileName
				,@DbBackupName = @DescriptionOfBackup
			---------------------------------------------------------------------------------------
			/*DELETE OLD BACKUP FILES*/
			EXECUTE Utilities.DeleteBackupFiles @Path = @LocalDeletePath ,@DaysToDelete = @LocalDeleteDate
			---------------------------------------------------------------------------------------

			SET @CurrentDbId = @CurrentDbId +1
		END TRY
		BEGIN CATCH
			/*Update The backup Table with Result*/
			SET @CurrentDbId = @CurrentDbId +1
			SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
			, @E_ErrorLineNumber = ERROR_LINE();  
		                
	                
			SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
			RAISERROR (@ErrMsg, 18, 1) ;

			UPDATE B
			SET B.LastOutcome = @ErrMsg
			,B.LastOutcomeInsertedDateTime = SYSDATETIME()
			FROM Config.[Backup] B  
			INNER JOIN Config.[Database] D 
			ON B.RecordId = D.DbId
			WHERE D.DbName = @DBName
		END CATCH
	END

	IF @Debug = 1
BEGIN
	PRINT '---------- End Debug Inoformation BackupRestore.LOGDatabaseBackup --------------' ;
END

SET NOCOUNT OFF
--Cleanup
DROP TABLE #DatabaseToBackup
END
GO
/****** Object:  StoredProcedure [BackupRestore].[OnDemandRestore]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Charles Wolff
-- Create date: 9/13/2017
-- Description:	This is built to be used for the On Demand restore requests. It is using [dbo].[RestoreCopyOnlyBackup_MSSQL]
--				to restore the database. Please make sure that a .bak file named _<DBNAME> is in that location, otherwise it will break. 
-- Change Log: 9/13/2017 - Creation Date
-- Change Log: 7/17/2018 - william.benson - use html tables and updated how the email looks.
-- =============================================
CREATE    PROCEDURE [BackupRestore].[OnDemandRestore]
(
@DatabaseToRestore VARCHAR(25)
,@BackupFilePath VARCHAR(100)
,@EmailTo VARCHAR(200)
,@RestoreDelay BIT = 1
) 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

	--DECLARE VARIABLES
	DECLARE @DBName VARCHAR(50),
	@bodymsg VARCHAR(MAX),
	@subjectmsg VARCHAR(200),
	@RestoreStartTime VARCHAR(25),
	@CurrnetServerName sysname
	--@time VARCHAR(25), - Removed from use 7/19/2018


	/** Used for the details of the exception **/
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	;


	SELECT @DBName = @DatabaseToRestore
	, @RestoreStartTime = CONVERT(varchar(25),CAST(DATEADD(MINUTE, 10, GETDATE()) AS DATETIME),100)
	, @CurrnetServerName = @@SERVERNAME
	;
	--SET @time = CONVERT(varchar(15),CAST(DATEADD(n,10,GETDATE()) AS TIME),100) - Removed from use 7/19/2018
	--SET @time = CONVERT(VARCHAR(25),DATEADD(n,10,GETDATE()),100) - Removed from use 7/19/2018


	SET @subjectmsg = 'Restore Database Request Server:' + @CurrnetServerName + ' Database:'+ @DBName
	--SET @bodymsg = 'There has been a request to restore ' + @DBName + ' on ' + @@SERVERNAME + '. This will happen at ' + @time + '.' - Removed from use 7/19/2018

	--Send an email to Devs, saying there is going to be a restore in 10 minutes from email   
	         
	--SET @Message = '<html>' + '<body style="font: 12px Arial;">' -- Removed from use 7/19/2018
	--	+ '<div id="intro2" style="width:670px;">The job ' + @JobName + ' failed on ' -- Removed from use 7/19/2018
	--	+ @ServerName + '.' + '<br><br>' ; -- Removed from use 7/19/2018
          
	SELECT @bodymsg = N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
		+ N'There has been a request to restore the following database' + '<br>'
		+ N'<br>' + 'Please ensure all open connections to the database are closed or the restore could fail!'
		+ N'</div><div style="margin-top:10px;">'
		+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
		+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
		+ N'<td>Server Name</td>'
		+ N'<td>Database Name</td>'
		+ N'<td>Restore Start Time</td>'
		+'</tr>'
		+ CAST((SELECT
				"td/@align" = 'Center'
				, td = @CurrnetServerName
				, ''
				, "td/@align" = 'CENTER'
				, td = @DBName
				, ''
				, "td/@align" = 'CENTER'
				, td = @RestoreStartTime
				FOR
					XML PATH('tr')
						, TYPE) AS NVARCHAR(MAX)) 
		+ N'</table></div>';

	SELECT @bodymsg = @bodymsg
		+ N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
		+ N'<div style="margin-top:10px;"> '
		+ N'<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your SQL Database Administrators</div>'
		--+ '<a href="mailto:' + @EmailAddressforReplys + '?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
		+ N'<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
		+ N'<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
		+ N'</body></html>'
		--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 


	EXECUTE msdb.dbo.sp_send_dbmail @profile_name = 'SQLAdmin', -- sysname
		@recipients = @EmailTo, -- varchar(max)
		@copy_recipients = '', -- varchar(max)
		@blind_copy_recipients = '', -- varchar(max)
		@subject = @subjectmsg, -- nvarchar(255)
		@body = @bodymsg, -- nvarchar(max)
		@body_format = 'HTML'--, -- varchar(20)
		--@importance = '', -- varchar(6)
		--@sensitivity = '', -- varchar(12)
		--@file_attachments = N'', -- nvarchar(max)
		--@query = N'', -- nvarchar(max)
		--@execute_query_database = NULL, -- sysname
		--@attach_query_result_as_file = NULL, -- bit
		--@query_attachment_filename = N'', -- nvarchar(260)
		--@query_result_header = NULL, -- bit
		--@query_result_width = 0, -- int
		--@query_result_separator = '', -- char(1)
		--@exclude_query_output = NULL, -- bit
		--@append_query_error = NULL, -- bit
		--@query_no_truncate = NULL, -- bit
		--@query_result_no_padding = NULL, -- bit
		--@mailitem_id = 0, -- int
		--@from_address = '', -- varchar(max)
		--@reply_to = '' -- varchar(max)


	IF @RestoreDelay = 1
	BEGIN
	   WAITFOR DELAY '00:10:00'; 
	END
	


--call SQL agent job to run specficie restore

	BEGIN TRY

		EXECUTE [BackupRestore].[RestoreLastFullBackupFromAFileShare] 
			@DatabasesToRestoreParam = @DatabaseToRestore
			,@FilePathParam = @BackupFilePath;

		SET @subjectmsg = @subjectmsg + ' - Successful';

		SET @bodymsg = N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'The restore of ' + @DBName + ' on ' + @CurrnetServerName + ' is complete. Thank you for your patience.'
			+ N'</div><div style="margin-top:10px;">'
			+ N'</body></html>';

	END TRY
	BEGIN CATCH
	 
		/** Grab specific information about the error/object **/
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'

		/** Raise the error message **/
		RAISERROR (@ErrMsg, 18, 1) ;
	
		SET @subjectmsg = @subjectmsg + ' - Failed'

		SET @bodymsg = N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'The restore of ' + @DBName + ' on ' + @CurrnetServerName + ' is complete but failed.' + '<br>'
			+ N'Failed Rason:' + @ErrMsg
			+ N'</div><div style="margin-top:10px;">'
			+ N'</body></html>'	
			
END CATCH


	--Send email saying that the restore is complete. 
	--SET @bodymsg = 'The restore of ' + @DBName + ' on ' + @CurrnetServerName + ' is complete. Thank you for your patience.' -- Removed from use 7/19/2018

	SET @bodymsg = @bodymsg
		+ N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
		+ N'<div style="margin-top:10px;"> '
		+ N'<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your SQL Database Administrators</div>'
		--+ '<a href="mailto:' + @EmailAddressforReplys + '?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
		+ N'<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
		+ N'<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
		+ N'</body></html>'
		--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 


	EXECUTE msdb.dbo.sp_send_dbmail @profile_name = 'SQLAdmin', -- sysname
		@recipients = @EmailTo, -- varchar(max)
		@copy_recipients = '', -- varchar(max)
		@blind_copy_recipients = '', -- varchar(max)
		@subject = @subjectmsg, -- nvarchar(255)
		@body = @bodymsg, -- nvarchar(max)
		@body_format = 'HTML'--, -- varchar(20)
		--@importance = '', -- varchar(6)
		--@sensitivity = '', -- varchar(12)
		--@file_attachments = N'', -- nvarchar(max)
		--@query = N'', -- nvarchar(max)
		--@execute_query_database = NULL, -- sysname
		--@attach_query_result_as_file = NULL, -- bit
		--@query_attachment_filename = N'', -- nvarchar(260)
		--@query_result_header = NULL, -- bit
		--@query_result_width = 0, -- int
		--@query_result_separator = '', -- char(1)
		--@exclude_query_output = NULL, -- bit
		--@append_query_error = NULL, -- bit
		--@query_no_truncate = NULL, -- bit
		--@query_result_no_padding = NULL, -- bit
		--@mailitem_id = 0, -- int
		--@from_address = '', -- varchar(max)
		--@reply_to = '' -- varchar(max)


END
GO
/****** Object:  StoredProcedure [BackupRestore].[RestoreCopyOnlyBackup_MSSQL]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 07-22-2016
-- Description: This is used in conjuction with [dbo].[CopyOnlyBackup_MSSQL]. 

CREATE PROCEDURE [BackupRestore].[RestoreCopyOnlyBackup_MSSQL] 
	-- Add the parameters for the stored procedure here
	(@DatabasesToRestoreParam NVARCHAR(500)
		,@FilePathParam VARCHAR(8000)
		)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @BackupPath VARCHAR(8000) --This is the backup path from the input Param
,@DBInclude VARCHAR(500) --Thinking this is going Hold the name of the Database as it loops through
,@sql VARCHAR(MAX) --Used to run the restore process at the end of the loop
,@createfunction VARCHAR(MAX) --Used to run the create function if it is missing
,@DatabaseName VARCHAR(250) --Not sure yet
,@NumberRecords INT --Number of records in the Database to restore table, used in While loop
,@RowCount	INT --Itterator for while loop
,@xml VARCHAR(MAX) --Used for error message email	
,@body VARCHAR(MAX) --Used for error message email 
,@Count INT -- used to check if there are any records in the error table
,@BackupFileName VARCHAR(500) --used in the while loop

SET @BackupPath = @FilePathParam


--CREATE NECESSARY TEMP TABLES
--Databases to include, an error table (for email), kill SPIDS table
CREATE TABLE #killspids
(
    rowid INT IDENTITY(1,1),
	dbid INT,
	spid SMALLINT
)


CREATE TABLE #RestoreTable
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


CREATE TABLE #ServiceBrokerBefore
(
     DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

CREATE TABLE #ServiceBrokerAfter
(
     RowNumber INT IDENTITY (1,1),
	 DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)


--insert current Broker Statues
INSERT INTO #ServiceBrokerBefore
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled FROM sys.databases a

--CREATE A TABLE IN DBMAINT WHERE ERRORS CAN BE HELD
--if you can't get this to work then use a temp table, not the best idea but it might work. 
IF  NOT EXISTS (SELECT * FROM sys.tables
WHERE name = N'error' AND type = 'U')
BEGIN
CREATE TABLE dbo.error
(
    rowid INT IDENTITY(1,1),
	serverName VARCHAR(250),
	dbName VARCHAR(250),
	errormessage VARCHAR(MAX),
	loadDate DATETIME DEFAULT CONVERT(DATE,GETDATE())
)
END


--TAKE RESULST OF fnSplitString AND PUT IT INTO DBINCLUDE TABLE
INSERT INTO #RestoreTable
        ( databseName )

SELECT * FROM dbo.fnSplitString(@DatabasesToRestoreParam,',')

--Get the number of records from #RestoreTable
SET @NumberRecords = (SELECT MAX(rowid) FROM #RestoreTable)
SET @RowCount = (SELECT MIN(rowid) FROM #RestoreTable)

--USING WHILE LOOP: LOOP THROUGH DATABSES IN INCLUDE AND FIND FILE THAT HAS THE DB NAME IN IT
--If there are multiple files, figure out a way to keep the most recent one. maybe a getdate()...idk
WHILE @RowCount <= @NumberRecords
	BEGIN
		BEGIN TRY
			--If there is an error throw to the CATCH BLOCK

			SELECT @DatabaseName = databseName
			FROM #RestoreTable
			WHERE rowid = @RowCount

			IF (EXISTS(SELECT name FROM master.sys.databases WHERE name = @DatabaseName))
			BEGIN
			--USING THE DATABSE NAME VARIABLE, KILL THE CONNECTIONS AND SPID FOR THAT DATABASE. SET DATABASE INTO SINGLE USER MODE
				--kill connections
					--figure out if this is the best place to do it.
				--set database to single user mode

				
				--kill spids
				DECLARE @a_spid SMALLINT,
						@msg VARCHAR(255),
						@a_dbid INT,
						@NumberRecords2 INT,
						@RowCount2 INT

				SELECT @a_dbid = sbd.database_id
				FROM master.sys.databases sbd
				WHERE sbd.name = @DatabaseName

				SELECT @a_spid = sp.spid 
                FROM   master..sysprocesses sp 
                WHERE  sp.dbid = @a_dbid 

				INSERT INTO #killspids 
                            (dbid, 
                             spid--, msg  
                ) 
                VALUES      ( @a_dbid, 
                              @a_spid--,'' 
                ) 

                --Get the number of records in the temp table   
                SET @NumberRecords2 = (SELECT Count(*) 
                                       FROM   #killspids) 
                SET @RowCount2 = 1 

                --SELECT @BackupFileName, @DatabaseName 
                WHILE @RowCount2 <= @NumberRecords2 
                  BEGIN 
                      SELECT @msg = 'kill ' + CONVERT(CHAR(5), nbn.spid) 
                      FROM   master..sysprocesses sp 
                             INNER JOIN #killspids nbn 
                                     ON sp.dbid = nbn.dbid 
                      WHERE  sp.dbid = @a_dbid 
                             AND nbn.rowid = @RowCount2 

                      PRINT @msg --not sure if this is needed or not. 

                      EXECUTE (@msg) 

                      --need a way to itterate 
                      SET @RowCount2 = @RowCount2 + 1 
                  END 


		


					SELECT @sql = 'RESTORE DATABASE [' + @DatabaseName + '] FROM DISK = ''' + @BackupPath + '\_' + @DatabaseName + '.BAK'' WITH FILE = 1, NOUNLOAD, REPLACE, STATS = 5' 		  
			

                -- restore the database 
             EXEC(@sql)
            --PRINT @sql            
			
			
			END 
			
			

          SET @RowCount = @RowCount + 1 
			
		END TRY
		BEGIN CATCH
		
		--Insert the Server Name, Database Name, ErrorMessage, and Date into the error table
          INSERT INTO dbo.error
                  ( serverName ,
                    dbName ,
                    errormessage
                   )
           
                      
          VALUES      ( @@SERVERNAME, --serverName
						@DatabaseName,-- DBName - 
                        Error_message() -- ErrorMessage
					  )
						
						SET @RowCount = @RowCount + 1 
						--Just in case the restore fails, set databse back to multi-user mode

		END CATCH
	END


--AFTER COMPLETION OF THE WHILE LOOP CHECK THE BROKER STATUS OF THE DB's,
--IF THERE IS A DESCREPANCY, UPDATE
SELECT * FROM	#ServiceBrokerBefore

INSERT INTO #ServiceBrokerAfter
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled 
FROM sys.databases a
INNER JOIN #ServiceBrokerBefore AS b
ON a.database_id = b.DBID
WHERE a.is_broker_enabled != b.brokerStatus

SET @RowCount = (SELECT MIN(RowNumber) FROM #ServiceBrokerAfter)
SET @NumberRecords = (SELECT MAX(RowNumber) FROM #ServiceBrokerAfter)

WHILE @RowCount <= @NumberRecords
BEGIN

SELECT @DatabaseName = dbName
FROM #ServiceBrokerAfter
WHERE RowNumber = @RowCount

SELECT @sql = 'ALTER DATABASE [' + @DatabaseName + '] SET ENABLE_BROKER;'

EXEC (@sql)

SET @RowCount = @RowCount + 1

END


--AFTER COMPLETION OF WHILE LOOP, SEND AN EMAIL WITH THE ERROR TABLE USING TODAY'S DATE

--SET @Count to equal the number of rows in #errortable

--If there are rows inside #errortable then send an email, If not then do nothing
IF EXISTS (SELECT loadDate FROM dbo.error WHERE loadDate = GETDATE())
	BEGIN

--Convert the table to HTML so it can be viewed in email 
SET @xml = CAST((SELECT [rowid]        AS 'td', 
                        '',
						et.serverName AS 'td',
						'',
				        [dbname]       AS 'td', 
                        '', 
                        [errormessage] AS 'td', 
                        '',
						[et].[loadDate] AS 'td',
						'' 
                 FROM   dbo.error AS et 
				 --WHERE	et.loadDate = GETDATE()
                 ORDER  BY et.rowid 
                 FOR XML PATH('tr'), ELEMENTS) AS NVARCHAR(MAX)) 
SET @body = 
'<html><body><H3>Failed Restores</H3> <table border = 1> <tr> <th> ID </th> <th>Server</th> <th> Database Name </th> <th> Error Message </th> <th>Date Inserted</th></tr>' 
SET @body = @body + @xml + '</table></body></html>' 

--Send the email and the end of the entire while loop to the appropriate people 
EXEC msdb.dbo.Sp_send_dbmail 
  @profile_name = 'SQLAdmin', 
  @body = @body, 
  @body_format = 'HTML', 
  @recipients ='deldlsqladmins@del.wa.gov', 
  @subject = 'Databases that Failed Restore Process'; 
	END

--CLEANUP

DROP TABLE #killspids
DROP TABLE #RestoreTable
DROP TABLE #ServiceBrokerAfter
DROP TABLE #ServiceBrokerBefore

--Restore error Check

IF  (SELECT COUNT(*) FROM dbo.error WHERE loadDate = CONVERT(DATE,GETDATE())) >= 1
BEGIN
    RAISERROR('There was an error on a restore',16,1)
END

END
GO
/****** Object:  StoredProcedure [BackupRestore].[RestoreCopyOnlyBackupWithMove_MSSQL]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 07-22-2016
-- Description: This is used in conjuction with [dbo].[CopyOnlyBackup_MSSQL]. 

CREATE PROCEDURE [BackupRestore].[RestoreCopyOnlyBackupWithMove_MSSQL] 
	-- Add the parameters for the stored procedure here
	(@DatabasesToRestoreParam NVARCHAR(500)
		,@FilePathParam VARCHAR(8000)
		)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @BackupPath VARCHAR(8000) --This is the backup path from the input Param
,@DBInclude VARCHAR(500) --Thinking this is going Hold the name of the Database as it loops through
,@sql VARCHAR(MAX) --Used to run the restore process at the end of the loop
,@createfunction VARCHAR(MAX) --Used to run the create function if it is missing
,@DatabaseName VARCHAR(250) --Not sure yet
,@NumberRecords INT --Number of records in the Database to restore table, used in While loop
,@RowCount	INT --Itterator for while loop
,@xml VARCHAR(MAX) --Used for error message email	
,@body VARCHAR(MAX) --Used for error message email 
,@Count INT -- used to check if there are any records in the error table
,@BackupFileName VARCHAR(500) --used in the while loop

SET @BackupPath = @FilePathParam


--CREATE NECESSARY TEMP TABLES
--Databases to include, an error table (for email), kill SPIDS table
CREATE TABLE #killspids
(
    rowid INT IDENTITY(1,1),
	dbid INT,
	spid SMALLINT
)


CREATE TABLE #RestoreTable
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


CREATE TABLE #ServiceBrokerBefore
(
     DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

CREATE TABLE #ServiceBrokerAfter
(
     RowNumber INT IDENTITY (1,1),
	 DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)


--insert current Broker Statues
INSERT INTO #ServiceBrokerBefore
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled FROM sys.databases a

--CREATE A TABLE IN DBMAINT WHERE ERRORS CAN BE HELD
--if you can't get this to work then use a temp table, not the best idea but it might work. 
IF  NOT EXISTS (SELECT * FROM sys.tables
WHERE name = N'error' AND type = 'U')
BEGIN
CREATE TABLE dbo.error
(
    rowid INT IDENTITY(1,1),
	serverName VARCHAR(250),
	dbName VARCHAR(250),
	errormessage VARCHAR(MAX),
	loadDate DATETIME DEFAULT CONVERT(DATE,GETDATE())
)
END


--TAKE RESULST OF fnSplitString AND PUT IT INTO DBINCLUDE TABLE
INSERT INTO #RestoreTable
        ( databseName )

SELECT * FROM dbo.fnSplitString(@DatabasesToRestoreParam,',')

--Get the number of records from #RestoreTable
SET @NumberRecords = (SELECT MAX(rowid) FROM #RestoreTable)
SET @RowCount = (SELECT MIN(rowid) FROM #RestoreTable)

--USING WHILE LOOP: LOOP THROUGH DATABSES IN INCLUDE AND FIND FILE THAT HAS THE DB NAME IN IT
--If there are multiple files, figure out a way to keep the most recent one. maybe a getdate()...idk
WHILE @RowCount <= @NumberRecords
	BEGIN
		BEGIN TRY
			--If there is an error throw to the CATCH BLOCK

			SELECT @DatabaseName = databseName
			FROM #RestoreTable
			WHERE rowid = @RowCount

			IF (EXISTS(SELECT name FROM master.sys.databases WHERE name = @DatabaseName))
			BEGIN
			--USING THE DATABSE NAME VARIABLE, KILL THE CONNECTIONS AND SPID FOR THAT DATABASE. SET DATABASE INTO SINGLE USER MODE
				--kill connections
					--figure out if this is the best place to do it.
				--set database to single user mode

				
				--kill spids
				DECLARE @a_spid SMALLINT,
						@msg VARCHAR(255),
						@a_dbid INT,
						@NumberRecords2 INT,
						@RowCount2 INT

				SELECT @a_dbid = sbd.database_id
				FROM master.sys.databases sbd
				WHERE sbd.name = @DatabaseName

				SELECT @a_spid = sp.spid 
                FROM   master..sysprocesses sp 
                WHERE  sp.dbid = @a_dbid 

				INSERT INTO #killspids 
                            (dbid, 
                             spid--, msg  
                ) 
                VALUES      ( @a_dbid, 
                              @a_spid--,'' 
                ) 

                --Get the number of records in the temp table   
                SET @NumberRecords2 = (SELECT Count(*) 
                                       FROM   #killspids) 
                SET @RowCount2 = 1 

                --SELECT @BackupFileName, @DatabaseName 
                WHILE @RowCount2 <= @NumberRecords2 
                  BEGIN 
                      SELECT @msg = 'kill ' + CONVERT(CHAR(5), nbn.spid) 
                      FROM   master..sysprocesses sp 
                             INNER JOIN #killspids nbn 
                                     ON sp.dbid = nbn.dbid 
                      WHERE  sp.dbid = @a_dbid 
                             AND nbn.rowid = @RowCount2 

                      PRINT @msg --not sure if this is needed or not. 

                      EXECUTE (@msg) 

                      --need a way to itterate 
                      SET @RowCount2 = @RowCount2 + 1 
                  END 


		


					SELECT @sql = 'RESTORE DATABASE [' + @DatabaseName + '] FROM DISK = ''' + @BackupPath + '\_' + @DatabaseName + '.BAK'' WITH FILE = 1, NOUNLOAD, REPLACE, STATS = 5' 		  
			

                -- restore the database 
             EXEC(@sql)
            --PRINT @sql            
			
			
			END 
			
			

          SET @RowCount = @RowCount + 1 
			
		END TRY
		BEGIN CATCH
		
		--Insert the Server Name, Database Name, ErrorMessage, and Date into the error table
          INSERT INTO dbo.error
                  ( serverName ,
                    dbName ,
                    errormessage
                   )
           
                      
          VALUES      ( @@SERVERNAME, --serverName
						@DatabaseName,-- DBName - 
                        Error_message() -- ErrorMessage
					  )
						
						SET @RowCount = @RowCount + 1 
						--Just in case the restore fails, set databse back to multi-user mode

		END CATCH
	END


--AFTER COMPLETION OF THE WHILE LOOP CHECK THE BROKER STATUS OF THE DB's,
--IF THERE IS A DESCREPANCY, UPDATE
SELECT * FROM	#ServiceBrokerBefore

INSERT INTO #ServiceBrokerAfter
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled 
FROM sys.databases a
INNER JOIN #ServiceBrokerBefore AS b
ON a.database_id = b.DBID
WHERE a.is_broker_enabled != b.brokerStatus

SET @RowCount = (SELECT MIN(RowNumber) FROM #ServiceBrokerAfter)
SET @NumberRecords = (SELECT MAX(RowNumber) FROM #ServiceBrokerAfter)

WHILE @RowCount <= @NumberRecords
BEGIN

SELECT @DatabaseName = dbName
FROM #ServiceBrokerAfter
WHERE RowNumber = @RowCount

SELECT @sql = 'ALTER DATABASE [' + @DatabaseName + '] SET ENABLE_BROKER;'

EXEC (@sql)

SET @RowCount = @RowCount + 1

END


--AFTER COMPLETION OF WHILE LOOP, SEND AN EMAIL WITH THE ERROR TABLE USING TODAY'S DATE

--SET @Count to equal the number of rows in #errortable

--If there are rows inside #errortable then send an email, If not then do nothing
IF EXISTS (SELECT loadDate FROM dbo.error WHERE loadDate = GETDATE())
	BEGIN

--Convert the table to HTML so it can be viewed in email 
SET @xml = CAST((SELECT [rowid]        AS 'td', 
                        '',
						et.serverName AS 'td',
						'',
				        [dbname]       AS 'td', 
                        '', 
                        [errormessage] AS 'td', 
                        '',
						[et].[loadDate] AS 'td',
						'' 
                 FROM   dbo.error AS et 
				 --WHERE	et.loadDate = GETDATE()
                 ORDER  BY et.rowid 
                 FOR XML PATH('tr'), ELEMENTS) AS NVARCHAR(MAX)) 
SET @body = 
'<html><body><H3>Failed Restores</H3> <table border = 1> <tr> <th> ID </th> <th>Server</th> <th> Database Name </th> <th> Error Message </th> <th>Date Inserted</th></tr>' 
SET @body = @body + @xml + '</table></body></html>' 

--Send the email and the end of the entire while loop to the appropriate people 
EXEC msdb.dbo.Sp_send_dbmail 
  @profile_name = 'SQLAdmin', 
  @body = @body, 
  @body_format = 'HTML', 
  @recipients ='deldlsqladmins@del.wa.gov', 
  @subject = 'Databases that Failed Restore Process'; 
	END

--CLEANUP

DROP TABLE #killspids
DROP TABLE #RestoreTable
DROP TABLE #ServiceBrokerAfter
DROP TABLE #ServiceBrokerBefore

--Restore error Check

IF  (SELECT COUNT(*) FROM dbo.error WHERE loadDate = CONVERT(DATE,GETDATE())) >= 1
BEGIN
    RAISERROR('There was an error on a restore',16,1)
END

END
GO
/****** Object:  StoredProcedure [BackupRestore].[RestoreLastDIFBackupFromAFileShare]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 12/12/2017
-- Description:	Restore the last full backup from a fileshare by checking the fileshare and finding the latest file
--				Please note, this currently doesn't do a with move statement.
-- =============================================
CREATE   PROCEDURE [BackupRestore].[RestoreLastDIFBackupFromAFileShare]
(
 @DatabasesToRestoreParam NVARCHAR(500)
,@FilePathParam VARCHAR(1000)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

--DECLARE WORKING VARIABLES
Declare @FileName varChar(255)--For xp_dirtree
Declare @FileNameDIF varChar(255)--For xp_dirtree
--Declare @cmdText varChar(255) --For xp_dirtree
Declare @BKFolder varchar(255)--For xp_dirtree
DECLARE @NumberRecords INT --Number of records in the Database to restore table, used in While loop
DECLARE @RowCount	INT --Itterator for while loop
DECLARE @DatabaseName VARCHAR(250) --Not sure yet
--DECLARE @TruncateLog BIT = 0
DECLARE @sql VARCHAR(MAX) --Used to run the command to reset the Service Broker
DECLARE @InsertedRecords INT
DECLARE @InsertedRecordsDIF INT
DECLARE @cmdshell VARCHAR(1000)
DECLARE @cmdshellDIF VARCHAR(1000)
DECLARE @ErrorMessage NVARCHAR(4000)



--SET WORKING VARIABLES
SET @FileName = null
--set @cmdText = null

--CREATE NECESSARY TEMP TABLES
--create table #FileList (
--FileName varchar(255),
--DepthFlag int,
--FileFlag int
--)
CREATE TABLE #FileListFULL (
SrNo Int IDENTITY (1,1),
FileListOutPut Varchar(1000)
)

CREATE TABLE #FileListDIF (
SrNo Int IDENTITY (1,1),
FileListOutPut Varchar(1000)
)

CREATE TABLE #killspids
(
    rowid INT IDENTITY(1,1),
	dbid INT,
	spid SMALLINT
)

CREATE TABLE #RestoreTable
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


CREATE TABLE #ServiceBrokerBefore
(
     DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

CREATE TABLE #ServiceBrokerAfter
(
     RowNumber INT IDENTITY (1,1),
	 DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

--INSERT VALUES INTO SERVICE BROKER BEFORE TABLE
INSERT INTO #ServiceBrokerBefore
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled FROM sys.databases a

--INSTERT DATABASES TO RESTORE INTO #RESTORETABLE
INSERT INTO #RestoreTable
        ( databseName )

SELECT * FROM STRING_SPLIT(@DatabasesToRestoreParam,',')

--GET THE NUMBER OF RECORDS FROM #RESTORETABLE FOR WHILE LOOP ITTERATION
SET @NumberRecords = (SELECT MAX(rowid) FROM #RestoreTable)
SET @RowCount = (SELECT MIN(rowid) FROM #RestoreTable)

WHILE @RowCount <= @NumberRecords
	BEGIN
		--FILL THE @DATABASENAME VARIABLE
		SELECT @DatabaseName = databseName
			FROM #RestoreTable
			WHERE rowid = @RowCount

		--SET THE @BKFULDER VARIABLE FOR XP_DIRTREE
		set @BKFolder = @FilePathParam + @DatabaseName + '\'

		--check to make sure databse exists
			IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
			BEGIN
				SET @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @DatabaseName + ')'
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN				

			END

				--get all the files and folders in the backup folder and put them in temporary table

				--This will set the command xp_cmdshell will run
				SET @cmdshell = 'DIR "' + @BKFolder + '*.bak" /OD /-C /B'	 
				SET @cmdshellDIF = 'DIR "' + @BKFolder + '*.dif" /OD /-C /B'
				-- /OD is the sort order by date/time (oldest first)
				-- /-C to disable display of seperator in the size value
				-- /B no heading information or summary
				TRUNCATE TABLE #FileListFULL
				TRUNCATE TABLE #FileListDIF
				--insert records from the desired folder into the temporary table
				INSERT INTO #FileListFULL (FileListOutPut)
				EXEC master.dbo.xp_cmdshell @cmdshell 		

				INSERT INTO #FileListDif (FileListOutPut)
				EXEC master.dbo.xp_cmdshell @cmdshellDIF	

				--get rid of NULL values			
				DELETE FROM #FileListFULL
				WHERE FileListOutPut IS NULL

				DELETE FROM #FileListDIF
				WHERE FileListOutPut IS NULL

				--Set the file name to be the newest FULL
				SELECT @InsertedRecords= MAX(SrNo) FROM #FileListFULL
				SELECT @InsertedRecordsDIF= MAX(SrNo) FROM #FileListdif	
				--get the latest backup file 
				SELECT @FileName = @BKFolder + FileListOutPut FROM #FileListFULL WHERE SrNo = @InsertedRecords
				SELECT @FileNameDIF = @BKFolder + FileListOutPut FROM #FileListDIF WHERE SrNo = @InsertedRecordsDIF  
				--select @filename

				--SELECT * FROM #FileListFULL
				--SELECT * FROM #FileListDIF

				--PRINT ('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH NORECOVERY, FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				--PRINT ('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filenameDIF + '''  WITH RECOVERY, FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')

				--Set the Database in Single User Mode
				EXEC('ALTER Database ' + @DatabaseName + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;')
				--EXECUTE THE RESTORE
				--select ('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				EXEC('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH NORECOVERY, FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				EXEC('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filenameDIF + '''  WITH RECOVERY, FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				--Set the Database in Multi User Mode
				EXEC('ALTER DATABASE ' + @DatabaseName + ' SET MULTI_USER;')

				SET @RowCount = @RowCount + 1 
		END

		--GET SERVICE BROKER STATUS AFTER RESTORES ARE COMPLETE
		--CHECK FOR DIFFERENCE, AND THEN FIX THE DIFFERENCES
		INSERT INTO #ServiceBrokerAfter
        ( DBID, dbName, brokerStatus )
		SELECT A.database_id,a.name, a.is_broker_enabled 
		FROM sys.databases a
		INNER JOIN #ServiceBrokerBefore AS b
		ON a.database_id = b.DBID
		WHERE a.is_broker_enabled != b.brokerStatus

		SET @RowCount = (SELECT MIN(RowNumber) FROM #ServiceBrokerAfter)
		SET @NumberRecords = (SELECT MAX(RowNumber) FROM #ServiceBrokerAfter)

		WHILE @RowCount <= @NumberRecords
			BEGIN

				SELECT @DatabaseName = dbName
				FROM #ServiceBrokerAfter
				WHERE RowNumber = @RowCount

				SELECT @sql = 'ALTER DATABASE [' + @DatabaseName + '] SET ENABLE_BROKER;'

				EXEC (@sql)

			SET @RowCount = @RowCount + 1

		END

--CLEAN UP TEMP TABLES
DROP TABLE #FileListFULL
DROP TABLE #FileListDIF
DROP TABLE #killspids
DROP TABLE #RestoreTable
DROP TABLE #ServiceBrokerAfter
DROP TABLE #ServiceBrokerBefore


---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 0;

---- To update the currently configured value for this feature.
RECONFIGURE;
END
GO
/****** Object:  StoredProcedure [BackupRestore].[RestoreLastFullBackupFromAFileShare]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Charles Wolff
-- Create date: 12/12/2017
-- Description:	Restore the last full backup from a fileshare by checking the fileshare and finding the latest file
--				Please note, this currently doesn't do a with move statement.
-- =============================================
CREATE       PROCEDURE [BackupRestore].[RestoreLastFullBackupFromAFileShare]
(
 @DatabasesToRestoreParam NVARCHAR(500)
,@FilePathParam VARCHAR(1000)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

--DECLARE WORKING VARIABLES
Declare @FileName varChar(255)--For xp_dirtree
--Declare @cmdText varChar(255) --For xp_dirtree
Declare @BKFolder varchar(255)--For xp_dirtree
DECLARE @NumberRecords INT --Number of records in the Database to restore table, used in While loop
DECLARE @RowCount	INT --Itterator for while loop
DECLARE @DatabaseName VARCHAR(250) --Not sure yet
--DECLARE @TruncateLog BIT = 0
DECLARE @sql VARCHAR(MAX) --Used to run the command to reset the Service Broker
DECLARE @InsertedRecords INT
DECLARE @cmdshell VARCHAR(1000)
DECLARE @ErrorMessage NVARCHAR(4000)



--SET WORKING VARIABLES
SET @FileName = null
--set @cmdText = null

--CREATE NECESSARY TEMP TABLES
--create table #FileList (
--FileName varchar(255),
--DepthFlag int,
--FileFlag int
--)
CREATE TABLE #FileList (
SrNo Int IDENTITY (1,1),
FileListOutPut Varchar(1000)
)

CREATE TABLE #killspids
(
    rowid INT IDENTITY(1,1),
	dbid INT,
	spid SMALLINT
)

CREATE TABLE #RestoreTable
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


CREATE TABLE #ServiceBrokerBefore
(
     DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

CREATE TABLE #ServiceBrokerAfter
(
     RowNumber INT IDENTITY (1,1),
	 DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

--INSERT VALUES INTO SERVICE BROKER BEFORE TABLE
INSERT INTO #ServiceBrokerBefore
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled FROM sys.databases a

--INSTERT DATABASES TO RESTORE INTO #RESTORETABLE
INSERT INTO #RestoreTable
        ( databseName )

SELECT * FROM STRING_SPLIT(@DatabasesToRestoreParam,',')

--GET THE NUMBER OF RECORDS FROM #RESTORETABLE FOR WHILE LOOP ITTERATION
SET @NumberRecords = (SELECT MAX(rowid) FROM #RestoreTable)
SET @RowCount = (SELECT MIN(rowid) FROM #RestoreTable)

WHILE @RowCount <= @NumberRecords
	BEGIN
		--FILL THE @DATABASENAME VARIABLE
		SELECT @DatabaseName = databseName
			FROM #RestoreTable
			WHERE rowid = @RowCount
		
		--SET THE @BKFULDER VARIABLE FOR XP_DIRTREE
		set @BKFolder = @FilePathParam + @DatabaseName + '\'

		--check to make sure databse exists
			IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
			BEGIN
				SET @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @DatabaseName + ')'
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN				
				
			END

				--get all the files and folders in the backup folder and put them in temporary table

				--This will set the command xp_cmdshell will run
				SET @cmdshell = 'DIR "' + @BKFolder + '*.bak" /OD /-C /B'	 

				-- /OD is the sort order by date/time (oldest first)
				-- /-C to disable display of seperator in the size value
				-- /B no heading information or summary
				TRUNCATE TABLE #FileList
				--insert records from the desired folder into the temporary table
				INSERT INTO #FileList (FileListOutPut)
				EXEC master.dbo.xp_cmdshell @cmdshell 			
				
				--get rid of NULL values			
				DELETE FROM #FileList
				WHERE FileListOutPut IS NULL

				--Set the file name to be the newest
				SELECT @InsertedRecords= MAX(SrNo) FROM #FileList
					
				--get the latest backup file 
				SELECT @FileName = @BKFolder + FileListOutPut FROM #FileList WHERE SrNo = @InsertedRecords 
				--select @filename

				--Set the Database in Single User Mode
				EXEC('ALTER Database ' + @DatabaseName + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;')
				--EXECUTE THE RESTORE
				--select ('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				EXEC('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				--Set the Database in Multi User Mode
				EXEC('ALTER DATABASE ' + @DatabaseName + ' SET MULTI_USER;')

				SET @RowCount = @RowCount + 1 
		END

		--GET SERVICE BROKER STATUS AFTER RESTORES ARE COMPLETE
		--CHECK FOR DIFFERENCE, AND THEN FIX THE DIFFERENCES
		INSERT INTO #ServiceBrokerAfter
        ( DBID, dbName, brokerStatus )
		SELECT A.database_id,a.name, a.is_broker_enabled 
		FROM sys.databases a
		INNER JOIN #ServiceBrokerBefore AS b
		ON a.database_id = b.DBID
		WHERE a.is_broker_enabled != b.brokerStatus
		
		SET @RowCount = (SELECT MIN(RowNumber) FROM #ServiceBrokerAfter)
		SET @NumberRecords = (SELECT MAX(RowNumber) FROM #ServiceBrokerAfter)
		
		WHILE @RowCount <= @NumberRecords
			BEGIN
		
				SELECT @DatabaseName = dbName
				FROM #ServiceBrokerAfter
				WHERE RowNumber = @RowCount
		
				SELECT @sql = 'ALTER DATABASE [' + @DatabaseName + '] SET ENABLE_BROKER;'
		
				EXEC (@sql)
		
			SET @RowCount = @RowCount + 1
		
		END

--CLEAN UP TEMP TABLES
DROP TABLE #FileList
DROP TABLE #killspids
DROP TABLE #RestoreTable
DROP TABLE #ServiceBrokerAfter
DROP TABLE #ServiceBrokerBefore


---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 0;

---- To update the currently configured value for this feature.
RECONFIGURE;
END
GO
/****** Object:  StoredProcedure [BackupRestore].[RestoreLastFullBackupFromAFileShareConfigTable]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Charles Wolff
-- Create date: 12/12/2017
-- Description:	Restore the last full backup from a fileshare by checking the fileshare and finding the latest file
--				Please note, this currently doesn't do a with move statement.
-- =============================================
CREATE         PROCEDURE [BackupRestore].[RestoreLastFullBackupFromAFileShareConfigTable]
(
 @DatabasesToRestoreParam NVARCHAR(500)
,@FilePathParam VARCHAR(1000)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 1;

---- To update the currently configured value for this feature.
RECONFIGURE;

--DECLARE WORKING VARIABLES
Declare @FileName varChar(255)--For xp_dirtree
--Declare @cmdText varChar(255) --For xp_dirtree
Declare @BKFolder varchar(255)--For xp_dirtree
DECLARE @NumberRecords INT --Number of records in the Database to restore table, used in While loop
DECLARE @RowCount	INT --Itterator for while loop
DECLARE @DatabaseName VARCHAR(250) --Not sure yet
--DECLARE @TruncateLog BIT = 0
DECLARE @sql VARCHAR(MAX) --Used to run the command to reset the Service Broker
DECLARE @InsertedRecords INT
DECLARE @cmdshell VARCHAR(1000)
DECLARE @ErrorMessage NVARCHAR(4000)
DECLARE @ProductionFilePath VARCHAR(100) --to house the production backup path



--SET WORKING VARIABLES
SET @FileName = null
--set @cmdText = null

SELECT @ProductionFilePath = (SELECT FP.FilePath
FROM Lookup.Server S
INNER JOIN Lookup.FilePath FP
ON S.RemoteBackupPathID = FP.RecordId
WHERE S.RecordId = (SELECT ProductionServer
FROM Lookup.Server
WHERE ServerName = @@SERVERNAME))

--CREATE NECESSARY TEMP TABLES

CREATE TABLE #FileList (
SrNo Int IDENTITY (1,1),
FileListOutPut Varchar(1000)
)

CREATE TABLE #killspids
(
    rowid INT IDENTITY(1,1),
	dbid INT,
	spid SMALLINT
)

CREATE TABLE #RestoreTable
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


CREATE TABLE #ServiceBrokerBefore
(
     DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

CREATE TABLE #ServiceBrokerAfter
(
     RowNumber INT IDENTITY (1,1),
	 DBID INT,
	dbName VARCHAR(50),
	brokerStatus BIT
)

--INSERT VALUES INTO SERVICE BROKER BEFORE TABLE
INSERT INTO #ServiceBrokerBefore
        ( DBID, dbName, brokerStatus )
SELECT A.database_id,a.name, a.is_broker_enabled FROM sys.databases a

--INSTERT DATABASES TO RESTORE INTO #RESTORETABLE
INSERT INTO #RestoreTable
        ( databseName )

SELECT * FROM STRING_SPLIT(@DatabasesToRestoreParam,',')

--GET THE NUMBER OF RECORDS FROM #RESTORETABLE FOR WHILE LOOP ITTERATION
SET @NumberRecords = (SELECT MAX(rowid) FROM #RestoreTable)
SET @RowCount = (SELECT MIN(rowid) FROM #RestoreTable)

WHILE @RowCount <= @NumberRecords
	BEGIN
		--FILL THE @DATABASENAME VARIABLE
		SELECT @DatabaseName = databseName
			FROM #RestoreTable
			WHERE rowid = @RowCount
		
		--SET THE @BKFULDER VARIABLE FOR XP_DIRTREE
		set @BKFolder = @ProductionFilePath + @DatabaseName + '\'

		--check to make sure databse exists
			IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
			BEGIN
				SET @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @DatabaseName + ')'
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN				
				
			END

				--get all the files and folders in the backup folder and put them in temporary table

				--This will set the command xp_cmdshell will run
				SET @cmdshell = 'DIR "' + @BKFolder + '*.bak" /OD /-C /B'	 

				-- /OD is the sort order by date/time (oldest first)
				-- /-C to disable display of seperator in the size value
				-- /B no heading information or summary
				TRUNCATE TABLE #FileList
				--insert records from the desired folder into the temporary table
				INSERT INTO #FileList (FileListOutPut)
				EXEC master.dbo.xp_cmdshell @cmdshell 			
				
				--get rid of NULL values			
				DELETE FROM #FileList
				WHERE FileListOutPut IS NULL

				--Set the file name to be the newest
				SELECT @InsertedRecords= MAX(SrNo) FROM #FileList
					
				--get the latest backup file 
				SELECT @FileName = @BKFolder + FileListOutPut FROM #FileList WHERE SrNo = @InsertedRecords 
				--select @filename

				--Set the Database in Single User Mode
				EXEC('ALTER Database ' + @DatabaseName + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;')
				--EXECUTE THE RESTORE
				--select ('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				EXEC('RESTORE DATABASE ' + @DatabaseName + ' FROM  DISK = ''' + @filename + '''  WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10')
				--Set the Database in Multi User Mode
				EXEC('ALTER DATABASE ' + @DatabaseName + ' SET MULTI_USER;')

				SET @RowCount = @RowCount + 1 
		END

		--GET SERVICE BROKER STATUS AFTER RESTORES ARE COMPLETE
		--CHECK FOR DIFFERENCE, AND THEN FIX THE DIFFERENCES
		INSERT INTO #ServiceBrokerAfter
        ( DBID, dbName, brokerStatus )
		SELECT A.database_id,a.name, a.is_broker_enabled 
		FROM sys.databases a
		INNER JOIN #ServiceBrokerBefore AS b
		ON a.database_id = b.DBID
		WHERE a.is_broker_enabled != b.brokerStatus
		
		SET @RowCount = (SELECT MIN(RowNumber) FROM #ServiceBrokerAfter)
		SET @NumberRecords = (SELECT MAX(RowNumber) FROM #ServiceBrokerAfter)
		
		WHILE @RowCount <= @NumberRecords
			BEGIN
		
				SELECT @DatabaseName = dbName
				FROM #ServiceBrokerAfter
				WHERE RowNumber = @RowCount
		
				SELECT @sql = 'ALTER DATABASE [' + @DatabaseName + '] SET ENABLE_BROKER;'
		
				EXEC (@sql)
		
			SET @RowCount = @RowCount + 1
		
		END

--CLEAN UP TEMP TABLES
DROP TABLE #FileList
DROP TABLE #killspids
DROP TABLE #RestoreTable
DROP TABLE #ServiceBrokerAfter
DROP TABLE #ServiceBrokerBefore


---- To allow advanced options to be changed.
EXEC sp_configure 'show advanced options', 1;
---- To update the currently configured value for advanced options.
RECONFIGURE;

---- To enable the feature.
EXEC sp_configure 'xp_cmdshell', 0;

---- To update the currently configured value for this feature.
RECONFIGURE;
END
GO
/****** Object:  StoredProcedure [BackupRestore].[SingleDatabaseBackup]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
/* Author: Charles Wolff
Create date: 4/28/2020
Description:	This is a stored procedure that will most likely mainly be used for Octo Deployments.
However it can also be used for databases that aren't on our normal scehdule as of the create date. 
It will be best used for databases that need daily backups, but we don't want them to be full. 

@FullBackupDayNumber this is the variable where you set what day of the week you want the FULL to happen
The only acceptable answers are 1 through 7. Any other value will throw an error. Defaults to 1/Sunday
1 = Sunday
2 = Monday
3 = Tuesday
4 = Wednesday
5 = Thursday
6 = Friday
7 = Saturday

@DatabaseName is the parameter where you put the database name. It will check to make sure the value you put in
matches a database on the server. If it doesn't it will throw an error

@FullBackupDateBack is how many days you want to check for full backups. Any value is acceptable, however keep it within reason. 
-- =============================================*/
CREATE    PROCEDURE [BackupRestore].[SingleDatabaseBackup]
(@FullBackupDayNumber TINYINT = 1
,@DatabaseName VARCHAR(50)
,@FullBackupDateBack INT = 8
,@BackupDescription VARCHAR(50))
AS
BEGIN

/*Declare the working variables*/
DECLARE @FullBackupDayName VARCHAR(9) --Will convert to a day of the week. Is the day the FULL backup is supposed to happen
,@dayName VARCHAR(9) --Is today's day name
,@dayPart INT --is today's day part. Will be 1-7
,@BackupCount INT --number of full backups within the data range. Uses @FullBackupDateBack to figure this out
,@ErrorMessage NVARCHAR(4000) --For the error message if there is any. 


/*@FullBackupDayNumber input check*/
IF @FullBackupDayNumber NOT BETWEEN 1 AND 7
BEGIN
    SET @ErrorMessage = (CAST(@FullBackupDayNumber AS VARCHAR(12)) + ' Is not a valid input for @FullBackupDayNumber. Valid inputs are 1 through 7')
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN
END

/*Check to see if the database exists*/
IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
BEGIN
		SET @ErrorMessage = (@DatabaseName + ' does not exist on this server. Please either check your spelling or confirm the database exists on the server and try again.')
		RAISERROR (@ErrorMessage, 16, 1, 0, 0)
		RETURN
END

--Setting the internal variables

SELECT @FullBackupDayName = DBMaint.[Utilities].[sfWeekPartToDayName] (@FullBackupDayNumber)
,@dayName = DATENAME(DW, SYSDATETIME())
,@dayPart = DATEPART(dw,SYSDATETIME())
,@BackupCount = COUNT(database_name) FROM msdb..backupset 
				WHERE backup_start_date > DATEADD(DAY,-@FullBackupDateback,GETDATE())
				AND  TYPE = 'D' AND database_name = @DatabaseName

/*Check that either it is the correct day of the week for the full backup,
or that there are no backups younger than 8 days old. If either of those happen,
take a full backup. Otherwise take a differential backup.*/
IF @FullBackupDayNumber = @dayPart OR @BackupCount = 0
BEGIN
	PRINT ('The selected backup date for ' + @DatabaseName + ' is ' + @FullBackupDayName + '. Today is ' + @dayName + '.')
	PRINT ('The count of Full backups for ' + @DatabaseName + ' that are younger than ' + CAST(@FullBackupDateback AS VARCHAR(12)) + ' days old is ' + CAST(@BackupCount AS VARCHAR(12)) + '.')
	PRINT ('Either today is the correct FULL backup day or the backup count is Zero. We will take a full backup')
	EXECUTE [DBMaint].[BackupRestore].[FULLDatabaseBackup] 
		-- @LocalRetentionDays
		--,@RemoteRetentionDays
		@SingleDatabaseToBackup = @DatabaseName
		,@MirrorTo = 1
		,@DescriptionOfBackup = @BackupDescription
END
ELSE
	
	PRINT ('Either there are full backups younger than ' + CAST(@FullBackupDateback AS VARCHAR(12)) + ' days old, or today isn''t the specified backup day for ' +@DatabaseName+ ', which is ' + @FullBackupDayName + '. Either way we will be taking a differntial backup')
	EXECUTE [DBMaint].[BackupRestore].[DIFDatabaseBackup] 
  -- @LocalRetentionDays
  --,@RemoteRetentionDays
  @SingleDatabaseToBackup = @DatabaseName
  ,@MirrorTo = 1
  ,@DescriptionOfBackup = @BackupDescription
END
GO
/****** Object:  StoredProcedure [Config].[AddDatabase]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 10/23/2019
-- Description:	Will add databases to the config.database table. After adding the databases to 
--              config.database, it will add them to config.backup. 
-- =============================================
CREATE   PROCEDURE [Config].[AddDatabase]
(
@MailProfile NVARCHAR(250) = 'Taskman'
,@EmailRecipients NVARCHAR(MAX)
,@DbInseteredDiff INT = 24
)
AS
BEGIN
BEGIN TRY 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
/*Create and set working variables*/
DECLARE @ServerId INT = (SELECT S.RecordId FROM Lookup.Server S WHERE S.ServerName = @@SERVERNAME)
,@Subject AS VARCHAR(250) --Subject of the email
,@Message AS NVARCHAR(MAX) --Mesage body of the email
,@MailProfileToUse AS NVARCHAR(250)

/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);


/*Create Working tables*/

DECLARE @DateCheck TABLE	
(
RecordId INT IDENTITY(1,1),
DbName VARCHAR(50),
InsertedDate DATETIME
)

/*
Add Database into Config.Database
*/

MERGE Config.[Database] AS target
USING (SELECT d.database_id,d.name,d.state, d.state_desc, d.recovery_model, d.recovery_model_desc FROM sys.databases d) AS source 
ON target.DbId = source.database_id
WHEN NOT MATCHED 
	THEN INSERT (DbId,DbName,DbState,StateDesc,RecoveryModel, RecoveryModelDesc)
	VALUES (source.database_id,source.name,source.state,source.state_desc,source.recovery_model,source.recovery_model_desc);


/*
Check the date the database was added
If anything is within the last 24 hours Put it in a temp table
*/

INSERT INTO @DateCheck
(
    DbName,
    InsertedDate
)
SELECT DbName
,InsertedDate  
FROM Config.[Database] db
WHERE DATEDIFF(hh,db.InsertedDate,SYSDATETIME()) <= @DbInseteredDiff


/*
Add a record into config.Backup for each database
This will default to having the database backed up
and default to the standard retention Policy
*/
MERGE Config.[Backup] AS target
USING (SELECT @ServerId AS ServerID, d.RecordId  FROM Config.[Database] d) AS source 
ON target.DatabaseId = source.RecordId
WHEN NOT MATCHED 
	THEN INSERT (ServerId, DatabaseId)
	VALUES (@ServerId, source.RecordId);
/*If there are new databases added
Send an email saying what they are*/

IF (SELECT COUNT(*) FROM @DateCheck) >=1
	BEGIN
	    SET @Subject = 'New databases on ' + @@SERVERNAME
		SET @Message =  '<html>' + '<body style="font: 12px Arial;">'
				+ '<div id="intro2" style="width:670px;">Below is a list of of new Databases on '
				+ @@SERVERNAME + '.' + '<br><br>' ;
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
				+ N'Please take a moment to review the list of Databases that have been added to the server'
				+ N'</div><div style="margin-top:10px;">'
				+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
				+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
				+ N'<td>Database Name</td>'
				+ N'<td>Inserted Date</td>'
				+'</tr>'
				+ CAST((SELECT
						"td/@align" = 'CENTER'
						, td = [DbName]
						, ''
						, "td/@align" = 'Center'
						, td = [InsertedDate]
						FROM
						@DateCheck
				FOR
						XML PATH('tr')
							, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;
		SET @Message = @Message
					--+ '</div>
					+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
					+ '<div style="margin-top:10px;"> '
					+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
					--+ '<a href="mailto:DELDLDQLAdmins@del.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
					+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
					+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
					+ '</body></html>'
	
	
		EXEC [Utilities].[spCheckMailProfileToUse]
			@MailProfileToSearchFor = @MailProfile
			,@ProfileNameToUse = @MailProfileToUse OUTPUT;
	
			EXEC msdb.dbo.sp_send_dbmail  
			    @profile_name = @MailProfileToUse
			    ,@recipients = @EmailRecipients 
				--,@copy_recipients = @AdditionalRecipientsEmailAddress 
			    ,@subject = @Subject
				,@body = @Message
				,@body_format = 'HTML' 
				,@importance = 'High'
				;
	END

END TRY
BEGIN CATCH
	SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
			, @E_ErrorLineNumber = ERROR_LINE();  
		                
	                
			SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
			RAISERROR (@ErrMsg, 18, 1) ;
END CATCH

END


GO
/****** Object:  StoredProcedure [Config].[uspUpdateDatabaseConfigurations]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Charles Wolff
-- Create date: 10/23/2019
-- Description:	Will add databases to the config.database table. After adding the databases to 
--              config.database, it will add them to config.backup. 
-- =============================================
CREATE     PROCEDURE [Config].[uspUpdateDatabaseConfigurations]
(
@MailProfile NVARCHAR(250) = 'Taskman'
,@EmailRecipients NVARCHAR(MAX)
,@DbInseteredDiff INT = 24
)
AS
BEGIN
BEGIN TRY 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
/*Create and set working variables*/
DECLARE @ServerId INT = (SELECT S.RecordId FROM Lookup.Server S WHERE S.ServerName = @@SERVERNAME)
,@Subject AS VARCHAR(250) --Subject of the email
,@Message AS NVARCHAR(MAX) --Mesage body of the email
,@MailProfileToUse AS NVARCHAR(250)

/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);


/*Create Working tables*/

DECLARE @DateCheck TABLE	
(
RecordId INT IDENTITY(1,1),
DbName VARCHAR(50),
InsertedDate DATETIME
)

/*
Add Database into Config.Database
*/

MERGE Config.[Database] AS target
USING (SELECT d.database_id,d.name,d.state, d.state_desc, d.recovery_model, d.recovery_model_desc,d.is_broker_enabled FROM sys.databases d) AS source 
ON target.DbName = source.name
WHEN MATCHED	
	THEN UPDATE SET target.DbState = source.state
	,target.StateDesc = source.state_desc
	,target.RecoveryModel = source.recovery_model
	,target.RecoveryModelDesc = source.recovery_model_desc
	,target.IsActive = 1
	,target.DbId = source.database_id
	,target.BrokerEnabled = source.is_broker_enabled
WHEN NOT MATCHED BY SOURCE
 THEN	UPDATE SET target.IsActive = 0, target.DbId = 0
WHEN NOT MATCHED 
	THEN INSERT (DbId,DbName,DbState,StateDesc,RecoveryModel, RecoveryModelDesc,BrokerEnabled)
	VALUES (source.database_id,source.name,source.state,source.state_desc,source.recovery_model,source.recovery_model_desc,source.is_broker_enabled);



/*
Check the date the database was added
If anything is within the last 24 hours Put it in a temp table
*/

INSERT INTO @DateCheck
(
    DbName,
    InsertedDate
)
SELECT DbName
,InsertedDate  
FROM Config.[Database] db
WHERE DATEDIFF(hh,db.InsertedDate,SYSDATETIME()) <= @DbInseteredDiff


/*
Add a record into config.Backup for each database
This will default to having the database backed up
and default to the standard retention Policy
*/
MERGE Config.[Backup] AS target
USING (SELECT @ServerId AS ServerID, d.RecordId,d.IsActive  FROM Config.[Database] d) AS source 
ON target.DatabaseId = source.RecordId
WHEN MATCHED AND source.IsActive = 0
THEN UPDATE SET target.BackupStatus = 0
WHEN NOT MATCHED 
	THEN INSERT (ServerId, DatabaseId)
	VALUES (@ServerId, source.RecordId);

/*If there are new databases added
Send an email saying what they are*/

IF (SELECT COUNT(*) FROM @DateCheck) >=1
	BEGIN
	    SET @Subject = 'New databases on ' + @@SERVERNAME
		SET @Message =  '<html>' + '<body style="font: 12px Arial;">'
				+ '<div id="intro2" style="width:670px;">Below is a list of of new Databases on '
				+ @@SERVERNAME + '.' + '<br><br>' ;
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
				+ N'Please take a moment to review the list of Databases that have been added to the server'
				+ N'</div><div style="margin-top:10px;">'
				+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
				+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
				+ N'<td>Database Name</td>'
				+ N'<td>Inserted Date</td>'
				+'</tr>'
				+ CAST((SELECT
						"td/@align" = 'CENTER'
						, td = [DbName]
						, ''
						, "td/@align" = 'Center'
						, td = [InsertedDate]
						FROM
						@DateCheck
				FOR
						XML PATH('tr')
							, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;
		SET @Message = @Message
					--+ '</div>
					+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
					+ '<div style="margin-top:10px;"> '
					+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
					--+ '<a href="mailto:DELDLDQLAdmins@del.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
					+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
					+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
					+ '</body></html>'
	
	
		EXEC [Utilities].[uspCheckMailProfileToUse]
			@MailProfileToSearchFor = @MailProfile
			,@ProfileNameToUse = @MailProfileToUse OUTPUT;
	
			EXEC msdb.dbo.sp_send_dbmail  
			    @profile_name = @MailProfileToUse
			    ,@recipients = @EmailRecipients 
				--,@copy_recipients = @AdditionalRecipientsEmailAddress 
			    ,@subject = @Subject
				,@body = @Message
				,@body_format = 'HTML' 
				,@importance = 'High'
				;
	END

END TRY
BEGIN CATCH
	SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
			, @E_ErrorLineNumber = ERROR_LINE();  
		                
	                
			SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
			RAISERROR (@ErrMsg, 18, 1) ;
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[CommandExecute]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CommandExecute]

@Command NVARCHAR(MAX),
@CommandType NVARCHAR(MAX),
@Mode INT,
@Comment NVARCHAR(MAX) = NULL,
@DatabaseName NVARCHAR(MAX) = NULL,
@SchemaName NVARCHAR(MAX) = NULL,
@ObjectName NVARCHAR(MAX) = NULL,
@ObjectType NVARCHAR(MAX) = NULL,
@IndexName NVARCHAR(MAX) = NULL,
@IndexType INT = NULL,
@StatisticsName NVARCHAR(MAX) = NULL,
@PartitionNumber INT = NULL,
@ExtendedInfo XML = NULL,
@LockMessageSeverity INT = 16,
@LogToTable NVARCHAR(MAX),
@Execute NVARCHAR(MAX)

AS

BEGIN

  ----------------------------------------------------------------------------------------------------
  --// Source:  https://ola.hallengren.com                                                        //--
  --// License: https://ola.hallengren.com/license.html                                           //--
  --// GitHub:  https://github.com/olahallengren/sql-server-maintenance-solution                  //--
  --// Version: 2019-06-14 00:05:34                                                               //--
  ----------------------------------------------------------------------------------------------------

  SET NOCOUNT ON

  DECLARE @StartMessage nvarchar(max)
  DECLARE @EndMessage nvarchar(max)
  DECLARE @ErrorMessage nvarchar(max)
  DECLARE @ErrorMessageOriginal nvarchar(max)
  DECLARE @Severity int

  DECLARE @StartTime datetime
  DECLARE @EndTime datetime

  DECLARE @StartTimeSec datetime
  DECLARE @EndTimeSec datetime

  DECLARE @ID int

  DECLARE @Error int
  DECLARE @ReturnCode int

  DECLARE @EmptyLine nvarchar(max)

  SET @Error = 0
  SET @ReturnCode = 0

  SET @EmptyLine = CHAR(9)

  ----------------------------------------------------------------------------------------------------
  --// Check core requirements                                                                    //--
  ----------------------------------------------------------------------------------------------------

  IF NOT (SELECT [compatibility_level] FROM sys.databases WHERE database_id = DB_ID()) >= 90
  BEGIN
    SET @ErrorMessage = 'The database ' + QUOTENAME(DB_NAME(DB_ID())) + ' has to be in compatibility level 90 or higher.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_ansi_nulls FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'ANSI_NULLS has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_quoted_identifier FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'QUOTED_IDENTIFIER has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandLog')
  BEGIN
    SET @ErrorMessage = 'The table CommandLog is missing. Download https://ola.hallengren.com/scripts/CommandLog.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ReturnCode = @Error
    GOTO ReturnCode
  END

  ----------------------------------------------------------------------------------------------------
  --// Check input parameters                                                                     //--
  ----------------------------------------------------------------------------------------------------

  IF @Command IS NULL OR @Command = ''
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Command is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @CommandType IS NULL OR @CommandType = '' OR LEN(@CommandType) > 60
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @CommandType is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Mode NOT IN(1,2) OR @Mode IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Mode is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LockMessageSeverity NOT IN(10,16) OR @LockMessageSeverity IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LockMessageSeverity is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable NOT IN('Y','N') OR @LogToTable IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LogToTable is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Execute NOT IN('Y','N') OR @Execute IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Execute is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ReturnCode = @Error
    GOTO ReturnCode
  END

  ----------------------------------------------------------------------------------------------------
  --// Log initial information                                                                    //--
  ----------------------------------------------------------------------------------------------------

  SET @StartTime = GETDATE()
  SET @StartTimeSec = CONVERT(datetime,CONVERT(nvarchar,@StartTime,120),120)

  SET @StartMessage = 'Date and time: ' + CONVERT(nvarchar,@StartTimeSec,120)
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Command: ' + @Command
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  IF @Comment IS NOT NULL
  BEGIN
    SET @StartMessage = 'Comment: ' + @Comment
    RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT
  END

  IF @LogToTable = 'Y'
  BEGIN
    INSERT INTO dbo.CommandLog (DatabaseName, SchemaName, ObjectName, ObjectType, IndexName, IndexType, StatisticsName, PartitionNumber, ExtendedInfo, CommandType, Command, StartTime)
    VALUES (@DatabaseName, @SchemaName, @ObjectName, @ObjectType, @IndexName, @IndexType, @StatisticsName, @PartitionNumber, @ExtendedInfo, @CommandType, @Command, @StartTime)
  END

  SET @ID = SCOPE_IDENTITY()

  ----------------------------------------------------------------------------------------------------
  --// Execute command                                                                            //--
  ----------------------------------------------------------------------------------------------------

  IF @Mode = 1 AND @Execute = 'Y'
  BEGIN
    EXECUTE(@Command)
    SET @Error = @@ERROR
    SET @ReturnCode = @Error
  END

  IF @Mode = 2 AND @Execute = 'Y'
  BEGIN
    BEGIN TRY
      EXECUTE(@Command)
    END TRY
    BEGIN CATCH
      SET @Error = ERROR_NUMBER()
      SET @ErrorMessageOriginal = ERROR_MESSAGE()

      SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS NVARCHAR) + ', ' + ISNULL(ERROR_MESSAGE(),'')
      SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
      RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT

      IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
      BEGIN
        SET @ReturnCode = ERROR_NUMBER()
      END
    END CATCH
  END

  ----------------------------------------------------------------------------------------------------
  --// Log completing information                                                                 //--
  ----------------------------------------------------------------------------------------------------

  SET @EndTime = GETDATE()
  SET @EndTimeSec = CONVERT(DATETIME,CONVERT(VARCHAR,@EndTime,120),120)

  SET @EndMessage = 'Outcome: ' + CASE WHEN @Execute = 'N' THEN 'Not Executed' WHEN @Error = 0 THEN 'Succeeded' ELSE 'Failed' END
  RAISERROR('%s',10,1,@EndMessage) WITH NOWAIT

  SET @EndMessage = 'Duration: ' + CASE WHEN DATEDIFF(ss,@StartTimeSec, @EndTimeSec)/(24*3600) > 0 THEN CAST(DATEDIFF(ss,@StartTimeSec, @EndTimeSec)/(24*3600) AS NVARCHAR) + '.' ELSE '' END + CONVERT(NVARCHAR,@EndTimeSec - @StartTimeSec,108)
  RAISERROR('%s',10,1,@EndMessage) WITH NOWAIT

  SET @EndMessage = 'Date and time: ' + CONVERT(NVARCHAR,@EndTimeSec,120)
  RAISERROR('%s',10,1,@EndMessage) WITH NOWAIT

  RAISERROR(@EmptyLine,10,1) WITH NOWAIT

  IF @LogToTable = 'Y'
  BEGIN
    UPDATE dbo.CommandLog
    SET EndTime = @EndTime,
        ErrorNumber = CASE WHEN @Execute = 'N' THEN NULL ELSE @Error END,
        ErrorMessage = @ErrorMessageOriginal
    WHERE ID = @ID
  END

  ReturnCode:
  IF @ReturnCode <> 0
  BEGIN
    RETURN @ReturnCode
  END

  ----------------------------------------------------------------------------------------------------

END
GO
/****** Object:  StoredProcedure [dbo].[DBPermissions]    Script Date: 9/7/2021 2:29:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************************************************************************************
sp_DBPermissions V6.0
Kenneth Fisher
  
http://www.sqlstudies.com
  
This stored procedure returns 3 data sets.  The first dataset is the list of database
principals, the second is role membership, and the third is object and database level
permissions.
     
The final 2 columns of each query are "Un-Do"/"Do" scripts.  For example removing a member
from a role or adding them to a role.  I am fairly confident in the role scripts, however, 
the scripts in the database principals query and database/object permissions query are 
works in progress.  In particular certificates, keys and column level permissions are not
scripted out.  Also while the scripts have worked flawlessly on the systems I've tested 
them on, these systems are fairly similar when it comes to security so I can't say that 
in a more complicated system there won't be the odd bug.
     
Standard disclaimer: You use scripts off of the web at your own risk.  I fully expect this
     script to work without issue but I've been known to be wrong before.
     
Parameters:
    @DBName
        If NULL use the current database, otherwise give permissions based on the parameter.
     
        There is a special case where you pass in ALL to the @DBName.  In this case the SP
        will loop through (yes I'm using a cursor) all of the DBs in sysdatabases and run
        the queries into temp tables before returning the results.  WARNINGS: If you use
        this option and have a large number of databases it will be SLOW.  If you use this
        option and don't specify any other parameters (say a specific @Principal) and have
        even a medium number of databases it will be SLOW.  Also the undo/do scripts do 
        not have USE statements in them so please take that into account.
    @Principal
        If NOT NULL then all three queries only pull for that database principal.  @Principal
        is a pattern check.  The queries check for any row where the passed in value exists.
        It uses the pattern '%' + @Principal + '%'
    @Role
        If NOT NULL then the roles query will pull members of the role.  If it is NOT NULL and
        @DBName is NULL then DB principal and permissions query will pull the principal row for
        the role and the permissions for the role.  @Role is a pattern check.  The queries 
        check for any row where the passed in value exists.  It uses the pattern '%' + @Role +
        '%'
    @Type
        If NOT NULL then all three queries will only pull principals of that type.  
        S = SQL login
        U = Windows login
        G = Windows group
        R = Server role
        C = Login mapped to a certificate
        K = Login mapped to an asymmetric key
    @ObjectName
        If NOT NULL then the third query will display permissions specific to the object 
        specified and the first two queries will display only those users with those specific
        permissions.  Unfortunately at this point only objects in sys.all_objects will work.
        This parameter uses the pattern '%' + @ObjectName + '%'
    @Permission
        If NOT NULL then the third query will display only permissions that match what is in
        the parameter.  The first two queries will display only those users with that specific
        permission.
    @LoginName
        If NOT NULL then each of the queries will only pull back database principals that
        have the same SID as a login that matches the pattern '%' + @LoginName + '%'
    @UseLikeSearch
        When this is set to 1 (the default) then the search parameters will use LIKE (and
        %'s will be added around the @Principal, @Role, @ObjectName, and @LoginName parameters).  
        When set to 0 searchs will use =.
    @IncludeMSShipped
        When this is set to 1 (the default) then all principals will be included.  When set 
        to 0 the fixed server roles and SA and Public principals will be excluded.
    @DropTempTables
        When this is set to 1 (the default) the temp tables used are dropped.  If it's 0
        then the tempt ables are kept for references after the code has finished.
        The temp tables are:
            ##DBPrincipals
            ##DBRoles 
            ##DBPermissions
    @Output
        What type of output is desired.
        Default - Either 'Default' or it doesn't match any of the allowed values then the SP
                    will return the standard 3 outputs.
        None - No output at all.  Usually used if you keeping the temp tables to do your own
                    reporting.
        CreateOnly - Only return the create scripts where they aren't NULL.
        DropOnly - Only return the drop scripts where they aren't NULL.
        ScriptsOnly - Return drop and create scripts where they aren't NULL.
        Report - Returns one output with one row per principal and a comma delimited list of
                    roles the principal is a member of and a comma delimited list of the 
                    individual permissions they have.
    @Print
        Defaults to 0, but if a 1 is passed in then the queries are not run but printed
        out instead.  This is primarily for debugging.
     
Data is ordered as follows
    1st result set: DBPrincipal
    2nd result set: RoleName, UserName if the parameter @Role is used else
                    UserName, RoleName
    3rd result set: ObjectName then Grantee_Name if the parameter @ObjectName
                    is used otherwise Grantee_Name, ObjectName
     
-- V2.0
-- 8/18/2013 – Create a stub if the SP doesn’t exist, then always do an alter
-- 8/18/2013 - Use instance collation for all concatenated strings
-- 9/04/2013 - dbo can’t be added or removed from roles.  Don’t script.
-- 9/04/2013 - Fix scripts for schema level permissions.
-- 9/04/2013 – Change print option to show values of variables not the 
--             Variable names.
-- V3.0
-- 10/5/2013 - Added @Type parameter to pull only principals of a given type.
-- 10/10/2013 - Added @ObjectName parameter to pull only permissions for a given object.
-- V4.0
-- 11/18/2013 - Added parameter names to sp_addrolemember and sp_droprolemember.
-- 11/19/2013 - Added an ORDER BY to each of the result sets.  See above for details.
-- 01/04/2014 - Add an ALL option to the DBName parameter.
-- V4.1
-- 02/07/2014 - Fix bug scripting permissions where object and schema have the same ID
-- 02/15/2014 - Add support for user defined types
-- 02/15/2014 - Fix: Add schema to object GRANT and REVOKE scripts
-- V5.0
-- 4/29/2014 - Fix: Removed extra print statements
-- 4/29/2014 - Fix: Added SET NOCOUNT ON
-- 4/29/2014 - Added a USE statement to the scripts when using the @DBName = 'All' option
-- 5/01/2014 - Added @Permission parameter
-- 5/14/2014 - Added additional permissions based on information from Kendal Van Dyke's
        post http://www.kendalvandyke.com/2014/02/using-sysobjects-when-scripting.html
-- 6/02/2014 - Added @LoginName parameter
-- V5.5
-- 7/15/2014 - Bunch of changes recommended by @SQLSoldier/"https://twitter.com/SQLSoldier"
                Primarily changing the strings to unicode & adding QUOTENAME in a few places
                I'd missed it.
-- V6.0
-- 10/19/2014 - Add @UserLikeSearch and @IncludeMSShipped parameters. 
-- 11/29/2016 - Fixed permissions for symmetric keys
--              Found and fixed by Brenda Grossnickle
-- 03/25/2017 - Move SID towards the end of the first output so the more important 
--              columns are closer to the front.
-- 03/25/2017 - Add IF Exists to drop and create user scripts
-- 03/25/2017 - Remove create/drop user scripts for guest, public, sys and INFORMATION_SCHEMA
-- 03/25/2017 - Add @DropTempTables to keep the temp tables after the SP is run.
-- 03/26/2017 - Add @Output to allow different types of output.
*********************************************************************************************/
     
CREATE PROCEDURE [dbo].[DBPermissions] 
(
    @DBName sysname = NULL, 
    @Principal sysname = NULL, 
    @Role sysname = NULL, 
    @Type nvarchar(30) = NULL,
    @ObjectName sysname = NULL,
    @Permission sysname = NULL,
    @LoginName sysname = NULL,
    @UseLikeSearch bit = 1,
    @IncludeMSShipped bit = 1,
    @DropTempTables bit = 1,
    @Output varchar(30) = 'Default',
    @Print bit = 0
)
AS
   
SET NOCOUNT ON
     
DECLARE @Collation nvarchar(75) 
SET @Collation = N' COLLATE ' + CAST(SERVERPROPERTY('Collation') AS nvarchar(50))
     
DECLARE @sql nvarchar(max)
DECLARE @sql2 nvarchar(max)
DECLARE @ObjectList nvarchar(max)
DECLARE @use nvarchar(500)
DECLARE @AllDBNames sysname
     
IF @DBName IS NULL OR @DBName = N'All'
    BEGIN
        SET @use = ''
        IF @DBName IS NULL
            SET @DBName = DB_NAME()
            --SELECT @DBName = db_name(database_id) 
            --FROM sys.dm_exec_requests 
            --WHERE session_id = @@SPID
    END
ELSE
--    IF EXISTS (SELECT 1 FROM sys.databases WHERE name = @DBName)
    IF db_id(@DBName) IS NOT NULL
        SET @use = N'USE ' + QUOTENAME(@DBName) + N';' + NCHAR(13)
    ELSE
        BEGIN
            RAISERROR (N'%s is not a valid database name.',
                            16, 
                            1,
                            @DBName)
            RETURN
        END
 
DECLARE @LikeOperator nvarchar(4)
 
IF @UseLikeSearch = 1
    SET @LikeOperator = N'LIKE'
ELSE
    SET @LikeOperator = N'='
     
IF @UseLikeSearch = 1
BEGIN
    IF LEN(ISNULL(@Principal,'')) > 0
        SET @Principal = N'%' + @Principal + N'%'
         
    IF LEN(ISNULL(@Role,'')) > 0
        SET @Role = N'%' + @Role + N'%'
     
    IF LEN(ISNULL(@ObjectName,'')) > 0
        SET @ObjectName = N'%' + @ObjectName + N'%'
   
    IF LEN(ISNULL(@LoginName,'')) > 0
        SET @LoginName = N'%' + @LoginName + N'%'
END
   
IF @Print = 1 AND @DBName = N'All'
    BEGIN
        PRINT 'DECLARE @AllDBNames sysname'
        PRINT 'SET @AllDBNames = ''master'''
        PRINT ''
    END
--=========================================================================
-- Database Principals
SET @sql =   
    N'SELECT ' + CASE WHEN @DBName = 'All' THEN N'@AllDBNames' ELSE N'''' + @DBName + N'''' END + N' AS DBName,' + 
    N'   DBPrincipals.principal_id AS DBPrincipalId, DBPrincipals.name AS DBPrincipal, SrvPrincipals.name AS SrvPrincipal, ' + NCHAR(13) + 
    N'   DBPrincipals.type, DBPrincipals.type_desc, DBPrincipals.default_schema_name, DBPrincipals.create_date, ' + NCHAR(13) + 
    N'   DBPrincipals.modify_date, DBPrincipals.is_fixed_role, ' + NCHAR(13) +
    N'   Authorizations.name AS RoleAuthorization, DBPrincipals.sid, ' + NCHAR(13) +  
    N'   CASE WHEN DBPrincipals.is_fixed_role = 0 AND DBPrincipals.name NOT IN (''dbo'',''guest'', ''INFORMATION_SCHEMA'', ''public'', ''sys'') THEN ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' + NCHAR(13) ELSE N'' END + 
    N'          ''IF DATABASE_PRINCIPAL_ID('''''' + DBPrincipals.name + '''''') IS NOT NULL '' + ' + NCHAR(13) + 
    N'           ''DROP '' + CASE DBPrincipals.[type] WHEN ''C'' THEN NULL ' + NCHAR(13) + 
    N'               WHEN ''K'' THEN NULL ' + NCHAR(13) + 
    N'               WHEN ''R'' THEN ''ROLE'' ' + NCHAR(13) + 
    N'               WHEN ''A'' THEN ''APPLICATION ROLE'' ' + NCHAR(13) + 
    N'               ELSE ''USER'' END + ' + NCHAR(13) + 
    N'           '' ''+QUOTENAME(DBPrincipals.name' + @Collation + N') + '';'' ELSE NULL END AS DropScript, ' + NCHAR(13) + 
    N'   CASE WHEN DBPrincipals.is_fixed_role = 0 AND DBPrincipals.name NOT IN (''dbo'',''guest'', ''INFORMATION_SCHEMA'', ''public'', ''sys'') THEN ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' +NCHAR(13) ELSE N'' END + 
    N'          ''IF DATABASE_PRINCIPAL_ID('''''' + DBPrincipals.name + '''''') IS NULL '' + ' + NCHAR(13) + 
    N'           ''CREATE '' + CASE DBPrincipals.[type] WHEN ''C'' THEN NULL ' + NCHAR(13) + 
    N'               WHEN ''K'' THEN NULL ' + NCHAR(13) + 
    N'               WHEN ''R'' THEN ''ROLE'' ' + NCHAR(13) + 
    N'               WHEN ''A'' THEN ''APPLICATION ROLE'' ' + NCHAR(13) + 
    N'               ELSE ''USER'' END + ' + NCHAR(13) + 
    N'           '' ''+QUOTENAME(DBPrincipals.name' + @Collation + N') END + ' + NCHAR(13) + 
    N'           CASE WHEN DBPrincipals.[type] = ''R'' THEN ' + NCHAR(13) + 
    N'               ISNULL('' AUTHORIZATION ''+QUOTENAME(Authorizations.name' + @Collation + N'),'''') ' + NCHAR(13) + 
    N'               WHEN DBPrincipals.[type] = ''A'' THEN ' + NCHAR(13) + 
    N'                   ''''  ' + NCHAR(13) + 
    N'               WHEN DBPrincipals.[type] NOT IN (''C'',''K'') THEN ' + NCHAR(13) + 
    N'                   ISNULL('' FOR LOGIN '' + 
                            QUOTENAME(SrvPrincipals.name' + @Collation + N'),'' WITHOUT LOGIN'') +  ' + NCHAR(13) + 
    N'                   ISNULL('' WITH DEFAULT_SCHEMA =  ''+
                            QUOTENAME(DBPrincipals.default_schema_name' + @Collation + N'),'''') ' + NCHAR(13) + 
    N'           ELSE '''' ' + NCHAR(13) + 
    N'           END + '';'' +  ' + NCHAR(13) + 
    N'           CASE WHEN DBPrincipals.[type] NOT IN (''C'',''K'',''R'',''A'') ' + NCHAR(13) + 
    N'               AND SrvPrincipals.name IS NULL ' + NCHAR(13) + 
    N'               AND DBPrincipals.sid IS NOT NULL ' + NCHAR(13) + 
    N'               AND DBPrincipals.sid NOT IN (0x00, 0x01)  ' + NCHAR(13) + 
    N'               THEN '' -- Possible missing server principal''  ' + NCHAR(13) + 
    N'               ELSE '''' END ' + NCHAR(13) + 
    N'       AS CreateScript ' + NCHAR(13) + 
    N'FROM sys.database_principals DBPrincipals ' + NCHAR(13) + 
    N'LEFT OUTER JOIN sys.database_principals Authorizations ' + NCHAR(13) + 
    N'   ON DBPrincipals.owning_principal_id = Authorizations.principal_id ' + NCHAR(13) + 
    N'LEFT OUTER JOIN sys.server_principals SrvPrincipals ' + NCHAR(13) + 
    N'   ON DBPrincipals.sid = SrvPrincipals.sid ' + NCHAR(13) + 
    N'   AND DBPrincipals.sid NOT IN (0x00, 0x01) ' + NCHAR(13) + 
    N'WHERE 1=1 '
     
IF LEN(ISNULL(@Principal,@Role)) > 0 
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND DBPrincipals.name ' + @LikeOperator + N' ' + 
            ISNULL(QUOTENAME(@Principal,N''''),QUOTENAME(@Role,'''')) 
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND DBPrincipals.name ' + @LikeOperator + N' ISNULL(@Principal,@Role) '
     
IF LEN(@Type) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND DBPrincipals.type ' + @LikeOperator + N' ' + QUOTENAME(@Type,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND DBPrincipals.type ' + @LikeOperator + N' @Type'
     
IF LEN(@LoginName) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND SrvPrincipals.name ' + @LikeOperator + N' ' + QUOTENAME(@LoginName,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND SrvPrincipals.name ' + @LikeOperator + N' @LoginName'
   
IF LEN(@ObjectName) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.all_objects [Objects] ' + NCHAR(13) + 
        N'               INNER JOIN sys.database_permissions Permission ' + NCHAR(13) +  
        N'                   ON Permission.major_id = [Objects].object_id ' + NCHAR(13) + 
        N'               WHERE Permission.major_id = [Objects].object_id ' + NCHAR(13) + 
        N'                 AND Permission.grantee_principal_id = DBPrincipals.principal_id ' + NCHAR(13)
           
        IF @Print = 1
            SET @sql = @sql + N'                 AND [Objects].name ' + @LikeOperator + N' ' + QUOTENAME(@ObjectName,'''') 
        ELSE
            SET @sql = @sql + N'                 AND [Objects].name ' + @LikeOperator + N' @ObjectName'
   
        SET @sql = @sql + N')'
    END
   
IF LEN(@Permission) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.database_permissions Permission ' + NCHAR(13) +  
        N'               WHERE Permission.grantee_principal_id = DBPrincipals.principal_id ' + NCHAR(13)
           
        IF @Print = 1
            SET @sql = @sql + N'                 AND Permission.permission_name ' + @LikeOperator + N' ' + QUOTENAME(@Permission,'''') 
        ELSE
            SET @sql = @sql + N'                 AND Permission.permission_name ' + @LikeOperator + N' @Permission'
   
        SET @sql = @sql + N')'
    END
 
IF @IncludeMSShipped = 0
    SET @sql = @sql + NCHAR(13) + N'  AND DBPrincipals.is_fixed_role = 0 ' + NCHAR(13) + 
                '  AND DBPrincipals.name NOT IN (''dbo'',''public'',''INFORMATION_SCHEMA'',''guest'',''sys'') '
 
IF @Print = 1
BEGIN
    PRINT N'-- Database Principals'
    PRINT CAST(@sql AS nvarchar(max))
    PRINT '' -- Spacing before the next print
    PRINT ''
END
ELSE
BEGIN
    IF object_id('tempdb..##DBPrincipals') IS NOT NULL
        DROP TABLE ##DBPrincipals
 
    -- Create temp table to store the data in
    CREATE TABLE ##DBPrincipals (
        DBName sysname NULL,
        DBPrincipalId int NULL,
        DBPrincipal sysname NULL,
        SrvPrincipal sysname NULL,
        type char(1) NULL,
        type_desc nchar(60) NULL,
        default_schema_name sysname NULL,
        create_date datetime NULL,
        modify_date datetime NULL,
        is_fixed_role bit NULL,
        RoleAuthorization sysname NULL,
        sid varbinary(85) NULL,
        DropScript nvarchar(max) NULL,
        CreateScript nvarchar(max) NULL
        )
     
    SET @sql =  @use + N'INSERT INTO ##DBPrincipals ' + NCHAR(13) + @sql
 
    IF @DBName = 'All'
        BEGIN
            -- Declare a READ_ONLY cursor to loop through the databases
            DECLARE cur_DBList CURSOR
            READ_ONLY
            FOR SELECT name FROM sys.databases ORDER BY name
     
            OPEN cur_DBList
     
            FETCH NEXT FROM cur_DBList INTO @AllDBNames
            WHILE (@@fetch_status <> -1)
            BEGIN
                IF (@@fetch_status <> -2)
                BEGIN
                    SET @sql2 = N'USE ' + QUOTENAME(@AllDBNames) + N';' + NCHAR(13) + @sql
                    EXEC sp_executesql @sql2, 
                        N'@Principal sysname, @Role sysname, @Type nvarchar(30), @ObjectName sysname, 
                        @AllDBNames sysname, @Permission sysname, @LoginName sysname', 
                        @Principal, @Role, @Type, @ObjectName, @AllDBNames, @Permission, @LoginName
                    -- PRINT @sql2
                END
                FETCH NEXT FROM cur_DBList INTO @AllDBNames
            END
     
            CLOSE cur_DBList
            DEALLOCATE cur_DBList
        END
    ELSE
        EXEC sp_executesql @sql, N'@Principal sysname, @Role sysname, @Type nvarchar(30), 
            @ObjectName sysname, @Permission sysname, @LoginName sysname', 
            @Principal, @Role, @Type, @ObjectName, @Permission, @LoginName
END 
--=========================================================================
-- Database Role Members
SET @sql =  
    N'SELECT ' + CASE WHEN @DBName = 'All' THEN N'@AllDBNames' ELSE N'''' + @DBName + N'''' END + N' AS DBName,' + 
    N' Users.principal_id AS UserPrincipalId, Users.name AS UserName, Roles.name AS RoleName, ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' + NCHAR(13) ELSE N'' END + 
    N'   CASE WHEN Users.is_fixed_role = 0 AND Users.name <> ''dbo'' THEN ' + NCHAR(13) + 
    N'   ''EXEC sp_droprolemember @rolename = ''+QUOTENAME(Roles.name' + @Collation + 
                N','''''''')+'', @membername = ''+QUOTENAME(CASE WHEN Users.name = ''dbo'' THEN NULL
                ELSE Users.name END' + @Collation + 
                N','''''''')+'';'' END AS DropScript, ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' + NCHAR(13) ELSE N'' END + 
    N'   CASE WHEN Users.is_fixed_role = 0 AND Users.name <> ''dbo'' THEN ' + NCHAR(13) + 
    N'   ''EXEC sp_addrolemember @rolename = ''+QUOTENAME(Roles.name' + @Collation + 
                N','''''''')+'', @membername = ''+QUOTENAME(CASE WHEN Users.name = ''dbo'' THEN NULL
                ELSE Users.name END' + @Collation + 
                N','''''''')+'';'' END AS AddScript ' + NCHAR(13) + 
    N'FROM sys.database_role_members RoleMembers ' + NCHAR(13) + 
    N'JOIN sys.database_principals Users ' + NCHAR(13) + 
    N'   ON RoleMembers.member_principal_id = Users.principal_id ' + NCHAR(13) + 
    N'JOIN sys.database_principals Roles ' + NCHAR(13) + 
    N'   ON RoleMembers.role_principal_id = Roles.principal_id ' + NCHAR(13) + 
    N'WHERE 1=1 '
         
IF LEN(ISNULL(@Principal,'')) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Users.name ' + @LikeOperator + N' '+QUOTENAME(@Principal,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Users.name ' + @LikeOperator + N' @Principal'
     
IF LEN(ISNULL(@Role,'')) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Roles.name ' + @LikeOperator + N' '+QUOTENAME(@Role,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Roles.name ' + @LikeOperator + N' @Role'
     
IF LEN(@Type) > 0 
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Users.type ' + @LikeOperator + N' ' + QUOTENAME(@Type,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Users.type ' + @LikeOperator + N' @Type'
   
IF LEN(@LoginName) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.server_principals SrvPrincipals ' + NCHAR(13) + 
        N'               WHERE Users.sid NOT IN (0x00, 0x01) ' + NCHAR(13) + 
        N'                 AND SrvPrincipals.sid = Users.sid ' + NCHAR(13) + 
        N'                 AND Users.type NOT IN (''R'') ' + NCHAR(13) 
        IF @Print = 1
            SET @sql = @sql + NCHAR(13) + '  AND SrvPrincipals.name ' + @LikeOperator + N' ' + QUOTENAME(@LoginName,'''')
        ELSE
            SET @sql = @sql + NCHAR(13) + '  AND SrvPrincipals.name ' + @LikeOperator + N' @LoginName'
   
        SET @sql = @sql + N')'
    END
   
IF LEN(@ObjectName) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.all_objects [Objects] ' + NCHAR(13) + 
        N'               INNER JOIN sys.database_permissions Permission ' + NCHAR(13) +  
        N'                   ON Permission.major_id = [Objects].object_id ' + NCHAR(13) + 
        N'               WHERE Permission.major_id = [Objects].object_id ' + NCHAR(13) + 
        N'                 AND Permission.grantee_principal_id = Users.principal_id ' + NCHAR(13)
           
        IF @Print = 1
            SET @sql = @sql + N'                 AND [Objects].name ' + @LikeOperator + N' ' + QUOTENAME(@ObjectName,'''') 
        ELSE
            SET @sql = @sql + N'                 AND [Objects].name ' + @LikeOperator + N' @ObjectName'
   
        SET @sql = @sql + N')'
    END
   
IF LEN(@Permission) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.database_permissions Permission ' + NCHAR(13) +  
        N'               WHERE Permission.grantee_principal_id = Users.principal_id ' + NCHAR(13)
           
        IF @Print = 1
            SET @sql = @sql + N'                 AND Permission.permission_name ' + @LikeOperator + N' ' + QUOTENAME(@Permission,'''') 
        ELSE
            SET @sql = @sql + N'                 AND Permission.permission_name ' + @LikeOperator + N' @Permission'
   
        SET @sql = @sql + N')'
    END
   
IF @IncludeMSShipped = 0
    SET @sql = @sql + NCHAR(13) + N'  AND Users.is_fixed_role = 0 ' + NCHAR(13) + 
                '  AND Users.name NOT IN (''dbo'',''public'',''INFORMATION_SCHEMA'',''guest'',''sys'') '
 
IF @Print = 1
BEGIN
    PRINT N'-- Database Role Members'
    PRINT CAST(@sql AS nvarchar(max))
    PRINT '' -- Spacing before the next print
    PRINT ''
END
ELSE
BEGIN
    IF object_id('tempdb..##DBRoles') IS NOT NULL
        DROP TABLE ##DBRoles
 
    -- Create temp table to store the data in
    CREATE TABLE ##DBRoles (
        DBName sysname NULL,
        UserPrincipalId int NULL,
        UserName sysname NULL,
        RoleName sysname NULL,
        DropScript nvarchar(max) NULL,
        AddScript nvarchar(max) NULL
        )
 
    SET @sql =  @use + NCHAR(13) + 'INSERT INTO ##DBRoles ' + NCHAR(13) + @sql
     
    IF @DBName = 'All'
        BEGIN
            -- Declare a READ_ONLY cursor to loop through the databases
            DECLARE cur_DBList CURSOR
            READ_ONLY
            FOR SELECT name FROM sys.databases ORDER BY name
     
            OPEN cur_DBList
     
            FETCH NEXT FROM cur_DBList INTO @AllDBNames
            WHILE (@@fetch_status <> -1)
            BEGIN
                IF (@@fetch_status <> -2)
                BEGIN
                    SET @sql2 = 'USE ' + QUOTENAME(@AllDBNames) + ';' + NCHAR(13) + @sql
                    EXEC sp_executesql @sql2, 
                        N'@Principal sysname, @Role sysname, @Type nvarchar(30), @ObjectName sysname, 
                        @AllDBNames sysname, @Permission sysname, @LoginName sysname', 
                        @Principal, @Role, @Type, @ObjectName, @AllDBNames, @Permission, @LoginName
                    -- PRINT @sql2
                END
                FETCH NEXT FROM cur_DBList INTO @AllDBNames
            END
     
            CLOSE cur_DBList
            DEALLOCATE cur_DBList
        END
    ELSE
        EXEC sp_executesql @sql, N'@Principal sysname, @Role sysname, @Type nvarchar(30), 
            @ObjectName sysname, @Permission sysname, @LoginName sysname', 
            @Principal, @Role, @Type, @ObjectName, @Permission, @LoginName
END
     
--=========================================================================
-- Database & object Permissions
SET @ObjectList =
    N'; WITH ObjectList AS (' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName , ' + NCHAR(13) + 
    N'       name ' + @Collation + ' AS name, ' + NCHAR(13) + 
    N'       database_id AS id, ' + NCHAR(13) + 
    N'       ''DATABASE'' AS class_desc,' + NCHAR(13) + 
    N'       '''' AS class ' + NCHAR(13) + 
    N'   FROM master.sys.databases' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT SCHEMA_NAME(sys.all_objects.schema_id) ' + @Collation + N' AS SchemaName,' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       object_id AS id, ' + NCHAR(13) + 
    N'       ''OBJECT_OR_COLUMN'' AS class_desc,' + NCHAR(13) + 
    N'       ''OBJECT'' AS class ' + NCHAR(13) + 
    N'   FROM sys.all_objects' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT name ' + @Collation + N' AS SchemaName, ' + NCHAR(13) + 
    N'       NULL AS name, ' + NCHAR(13) + 
    N'       schema_id AS id, ' + NCHAR(13) + 
    N'       ''SCHEMA'' AS class_desc,' + NCHAR(13) + 
    N'       ''SCHEMA'' AS class ' + NCHAR(13) + 
    N'   FROM sys.schemas' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       principal_id AS id, ' + NCHAR(13) + 
    N'       ''DATABASE_PRINCIPAL'' AS class_desc,' + NCHAR(13) + 
    N'       CASE type_desc ' + NCHAR(13) + 
    N'           WHEN ''APPLICATION_ROLE'' THEN ''APPLICATION ROLE'' ' + NCHAR(13) + 
    N'           WHEN ''DATABASE_ROLE'' THEN ''ROLE'' ' + NCHAR(13) + 
    N'           ELSE ''USER'' END AS class ' + NCHAR(13) + 
    N'   FROM sys.database_principals' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       assembly_id AS id, ' + NCHAR(13) + 
    N'       ''ASSEMBLY'' AS class_desc,' + NCHAR(13) + 
    N'       ''ASSEMBLY'' AS class ' + NCHAR(13) + 
    N'   FROM sys.assemblies' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) 
 
SET @ObjectList = @ObjectList + 
    N'   SELECT SCHEMA_NAME(sys.types.schema_id) ' + @Collation + N' AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       user_type_id AS id, ' + NCHAR(13) + 
    N'       ''TYPE'' AS class_desc,' + NCHAR(13) + 
    N'       ''TYPE'' AS class ' + NCHAR(13) + 
    N'   FROM sys.types' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT SCHEMA_NAME(schema_id) ' + @Collation + N' AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       xml_collection_id AS id, ' + NCHAR(13) + 
    N'       ''XML_SCHEMA_COLLECTION'' AS class_desc,' + NCHAR(13) + 
    N'       ''XML SCHEMA COLLECTION'' AS class ' + NCHAR(13) + 
    N'   FROM sys.xml_schema_collections' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       message_type_id AS id, ' + NCHAR(13) + 
    N'       ''MESSAGE_TYPE'' AS class_desc,' + NCHAR(13) + 
    N'       ''MESSAGE TYPE'' AS class ' + NCHAR(13) + 
    N'   FROM sys.service_message_types' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       service_contract_id AS id, ' + NCHAR(13) + 
    N'       ''SERVICE_CONTRACT'' AS class_desc,' + NCHAR(13) + 
    N'       ''CONTRACT'' AS class ' + NCHAR(13) + 
    N'   FROM sys.service_contracts' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       service_id AS id, ' + NCHAR(13) + 
    N'       ''SERVICE'' AS class_desc,' + NCHAR(13) + 
    N'       ''SERVICE'' AS class ' + NCHAR(13) + 
    N'   FROM sys.services' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       remote_service_binding_id AS id, ' + NCHAR(13) + 
    N'       ''REMOTE_SERVICE_BINDING'' AS class_desc,' + NCHAR(13) + 
    N'       ''REMOTE SERVICE BINDING'' AS class ' + NCHAR(13) + 
    N'   FROM sys.remote_service_bindings' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       route_id AS id, ' + NCHAR(13) + 
    N'       ''ROUTE'' AS class_desc,' + NCHAR(13) + 
    N'       ''ROUTE'' AS class ' + NCHAR(13) + 
    N'   FROM sys.routes' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       fulltext_catalog_id AS id, ' + NCHAR(13) + 
    N'       ''FULLTEXT_CATALOG'' AS class_desc,' + NCHAR(13) + 
    N'       ''FULLTEXT CATALOG'' AS class ' + NCHAR(13) + 
    N'   FROM sys.fulltext_catalogs' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       symmetric_key_id AS id, ' + NCHAR(13) + 
    N'       ''SYMMETRIC_KEYS'' AS class_desc,' + NCHAR(13) + 
    N'       ''SYMMETRIC KEY'' AS class ' + NCHAR(13) + 
    N'   FROM sys.symmetric_keys' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       certificate_id AS id, ' + NCHAR(13) + 
    N'       ''CERTIFICATE'' AS class_desc,' + NCHAR(13) + 
    N'       ''CERTIFICATE'' AS class ' + NCHAR(13) + 
    N'   FROM sys.certificates' + NCHAR(13) + 
    N'   UNION ALL' + NCHAR(13) + 
    N'   SELECT NULL AS SchemaName, ' + NCHAR(13) + 
    N'       name ' + @Collation + N' AS name, ' + NCHAR(13) + 
    N'       asymmetric_key_id AS id, ' + NCHAR(13) + 
    N'       ''ASYMMETRIC_KEY'' AS class_desc,' + NCHAR(13) + 
    N'       ''ASYMMETRIC KEY'' AS class ' + NCHAR(13) + 
    N'   FROM sys.asymmetric_keys' + NCHAR(13) +  
    N'   ) ' + NCHAR(13)
   
    SET @sql =
    N'SELECT ' + CASE WHEN @DBName = 'All' THEN N'@AllDBNames' ELSE N'''' + @DBName + N'''' END + N' AS DBName,' + NCHAR(13) + 
    N'   Grantee.principal_id AS GranteePrincipalId, Grantee.name AS GranteeName, Grantor.name AS GrantorName, ' + NCHAR(13) + 
    N'   Permission.class_desc, Permission.permission_name, ' + NCHAR(13) + 
    N'   ObjectList.name AS ObjectName, ' + NCHAR(13) + 
    N'   ObjectList.SchemaName, ' + NCHAR(13) + 
    N'   Permission.state_desc,  ' + NCHAR(13) + 
    N'   CASE WHEN Grantee.is_fixed_role = 0 AND Grantee.name <> ''dbo'' THEN ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' + NCHAR(13) ELSE N'' END + 
    N'   ''REVOKE '' + ' + NCHAR(13) + 
    N'   CASE WHEN Permission.[state]  = ''W'' THEN ''GRANT OPTION FOR '' ELSE '''' END + ' + NCHAR(13) + 
    N'   '' '' + Permission.permission_name' + @Collation + N' +  ' + NCHAR(13) + 
    N'       CASE WHEN Permission.major_id <> 0 THEN '' ON '' + ' + NCHAR(13) + 
    N'           ObjectList.class + ''::'' +  ' + NCHAR(13) + 
    N'           ISNULL(QUOTENAME(ObjectList.SchemaName),'''') + ' + NCHAR(13) + 
    N'           CASE WHEN ObjectList.SchemaName + ObjectList.name IS NULL THEN '''' ELSE ''.'' END + ' + NCHAR(13) + 
    N'           ISNULL(QUOTENAME(ObjectList.name),'''') ' + NCHAR(13) + 
    N'           ' + @Collation + ' + '' '' ELSE '''' END + ' + NCHAR(13) + 
    N'       '' FROM '' + QUOTENAME(Grantee.name' + @Collation + N')  + ''; '' END AS RevokeScript, ' + NCHAR(13) + 
    N'   CASE WHEN Grantee.is_fixed_role = 0 AND Grantee.name <> ''dbo'' THEN ' + NCHAR(13) + 
    CASE WHEN @DBName = 'All' THEN N'   ''USE '' + QUOTENAME(@AllDBNames) + ''; '' + ' + NCHAR(13) ELSE N'' END + 
    N'   CASE WHEN Permission.[state]  = ''W'' THEN ''GRANT'' ELSE Permission.state_desc' + @Collation + 
            N' END + ' + NCHAR(13) + 
    N'       '' '' + Permission.permission_name' + @Collation + N' + ' + NCHAR(13) + 
    N'       CASE WHEN Permission.major_id <> 0 THEN '' ON '' + ' + NCHAR(13) + 
    N'           ObjectList.class + ''::'' +  ' + NCHAR(13) + 
    N'           ISNULL(QUOTENAME(ObjectList.SchemaName),'''') + ' + NCHAR(13) + 
    N'           CASE WHEN ObjectList.SchemaName + ObjectList.name IS NULL THEN '''' ELSE ''.'' END + ' + NCHAR(13) + 
    N'           ISNULL(QUOTENAME(ObjectList.name),'''') ' + NCHAR(13) + 
    N'           ' + @Collation + N' + '' '' ELSE '''' END + ' + NCHAR(13) + 
    N'       '' TO '' + QUOTENAME(Grantee.name' + @Collation + N')  + '' '' +  ' + NCHAR(13) + 
    N'       CASE WHEN Permission.[state]  = ''W'' THEN '' WITH GRANT OPTION '' ELSE '''' END +  ' + NCHAR(13) + 
    N'       '' AS ''+ QUOTENAME(Grantor.name' + @Collation + N')+'';'' END AS GrantScript ' + NCHAR(13) + 
    N'FROM sys.database_permissions Permission ' + NCHAR(13) + 
    N'JOIN sys.database_principals Grantee ' + NCHAR(13) + 
    N'   ON Permission.grantee_principal_id = Grantee.principal_id ' + NCHAR(13) + 
    N'JOIN sys.database_principals Grantor ' + NCHAR(13) + 
    N'   ON Permission.grantor_principal_id = Grantor.principal_id ' + NCHAR(13) + 
    N'LEFT OUTER JOIN ObjectList ' + NCHAR(13) + 
    N'   ON Permission.major_id = ObjectList.id ' + NCHAR(13) + 
    N'   AND Permission.class_desc = ObjectList.class_desc ' + NCHAR(13) + 
    N'WHERE 1=1 '
     
IF LEN(ISNULL(@Principal,@Role)) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Grantee.name ' + @LikeOperator + N' ' + ISNULL(QUOTENAME(@Principal,''''),QUOTENAME(@Role,'''')) 
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Grantee.name ' + @LikeOperator + N' ISNULL(@Principal,@Role) '
             
IF LEN(@Type) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Grantee.type ' + @LikeOperator + N' ' + QUOTENAME(@Type,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Grantee.type ' + @LikeOperator + N' @Type'
     
IF LEN(@ObjectName) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND ObjectList.name ' + @LikeOperator + N' ' + QUOTENAME(@ObjectName,'''') 
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND ObjectList.name ' + @LikeOperator + N' @ObjectName '
     
IF LEN(@Permission) > 0
    IF @Print = 1
        SET @sql = @sql + NCHAR(13) + N'  AND Permission.permission_name ' + @LikeOperator + N' ' + QUOTENAME(@Permission,'''')
    ELSE
        SET @sql = @sql + NCHAR(13) + N'  AND Permission.permission_name ' + @LikeOperator + N' @Permission'
   
IF LEN(@LoginName) > 0
    BEGIN
        SET @sql = @sql + NCHAR(13) + 
        N'   AND EXISTS (SELECT 1 ' + NCHAR(13) + 
        N'               FROM sys.server_principals SrvPrincipals ' + NCHAR(13) + 
        N'               WHERE SrvPrincipals.sid = Grantee.sid ' + NCHAR(13) + 
        N'                 AND Grantee.sid NOT IN (0x00, 0x01) ' + NCHAR(13) + 
        N'                 AND Grantee.type NOT IN (''R'') ' + NCHAR(13) 
        IF @Print = 1
            SET @sql = @sql + NCHAR(13) + N'  AND SrvPrincipals.name ' + @LikeOperator + N' ' + QUOTENAME(@LoginName,'''')
        ELSE
            SET @sql = @sql + NCHAR(13) + N'  AND SrvPrincipals.name ' + @LikeOperator + N' @LoginName'
   
        SET @sql = @sql + ')'
    END
 
IF @IncludeMSShipped = 0
    SET @sql = @sql + NCHAR(13) + N'  AND Grantee.is_fixed_role = 0 ' + NCHAR(13) + 
                '  AND Grantee.name NOT IN (''dbo'',''public'',''INFORMATION_SCHEMA'',''guest'',''sys'') '
   
IF @Print = 1
    BEGIN
        PRINT '-- Database & object Permissions'
        PRINT CAST(@use AS nvarchar(max))
        PRINT CAST(@ObjectList AS nvarchar(max))
        PRINT CAST(@sql AS nvarchar(max))
    END
ELSE
BEGIN
    IF object_id('tempdb..##DBPermissions') IS NOT NULL
        DROP TABLE ##DBPermissions
 
    -- Create temp table to store the data in
    CREATE TABLE ##DBPermissions (
        DBName sysname NULL,
        GranteePrincipalId int NULL,
        GranteeName sysname NULL,
        GrantorName sysname NULL,
        class_desc nvarchar(60) NULL,
        permission_name nvarchar(128) NULL,
        ObjectName sysname NULL,
        SchemaName sysname NULL,
        state_desc nvarchar(60) NULL,
        RevokeScript nvarchar(max) NULL,
        GrantScript nvarchar(max) NULL
        )
     
    -- Add insert statement to @sql
    SET @sql =  @use + @ObjectList + 
                N'INSERT INTO ##DBPermissions ' + NCHAR(13) + 
                @sql
     
    IF @DBName = 'All'
        BEGIN
            -- Declare a READ_ONLY cursor to loop through the databases
            DECLARE cur_DBList CURSOR
            READ_ONLY
            FOR SELECT name FROM sys.databases ORDER BY name
     
            OPEN cur_DBList
     
            FETCH NEXT FROM cur_DBList INTO @AllDBNames
            WHILE (@@fetch_status <> -1)
            BEGIN
                IF (@@fetch_status <> -2)
                BEGIN
                    SET @sql2 = 'USE ' + QUOTENAME(@AllDBNames) + ';' + NCHAR(13) + @sql
                    EXEC sp_executesql @sql2, 
                        N'@Principal sysname, @Role sysname, @Type nvarchar(30), @ObjectName sysname, 
                            @AllDBNames sysname, @Permission sysname, @LoginName sysname', 
                        @Principal, @Role, @Type, @ObjectName, @AllDBNames, @Permission, @LoginName
                    -- PRINT @sql2
                END
                FETCH NEXT FROM cur_DBList INTO @AllDBNames
            END
     
            CLOSE cur_DBList
            DEALLOCATE cur_DBList
        END
    ELSE
        BEGIN
            EXEC sp_executesql @sql, N'@Principal sysname, @Role sysname, @Type nvarchar(30), 
                @ObjectName sysname, @Permission sysname, @LoginName sysname', 
                @Principal, @Role, @Type, @ObjectName, @Permission, @LoginName
        END
END
 
IF @Print <> 1
BEGIN
    IF @Output = 'None'
        PRINT ''
    ELSE IF @Output = 'CreateOnly'
    BEGIN
        SELECT CreateScript FROM ##DBPrincipals WHERE CreateScript IS NOT NULL
        SELECT AddScript FROM ##DBRoles WHERE AddScript IS NOT NULL
        SELECT GrantScript FROM ##DBPermissions WHERE GrantScript IS NOT NULL
    END
    ELSE IF @Output = 'DropOnly'
    BEGIN
        SELECT DropScript FROM ##DBPrincipals WHERE DropScript IS NOT NULL
        SELECT DropScript FROM ##DBRoles WHERE DropScript IS NOT NULL
        SELECT RevokeScript FROM ##DBPermissions WHERE RevokeScript IS NOT NULL
    END
    ELSE IF @Output = 'ScriptsOnly'
    BEGIN
        SELECT DropScript, CreateScript FROM ##DBPrincipals WHERE DropScript IS NOT NULL OR CreateScript IS NOT NULL
        SELECT DropScript, AddScript FROM ##DBRoles WHERE DropScript IS NOT NULL OR AddScript IS NOT NULL
        SELECT RevokeScript, GrantScript FROM ##DBPermissions WHERE RevokeScript IS NOT NULL OR GrantScript IS NOT NULL
    END
    ELSE IF @Output = 'Report'
    BEGIN
        SELECT DBName, DBPrincipal, SrvPrincipal, type, type_desc,
                STUFF((SELECT ', ' + ##DBRoles.RoleName
                        FROM ##DBRoles
                        WHERE ##DBPrincipals.DBName = ##DBRoles.DBName
                          AND ##DBPrincipals.DBPrincipalId = ##DBRoles.UserPrincipalId
                        ORDER BY ##DBRoles.RoleName
                        FOR XML PATH(''),TYPE).value('.','VARCHAR(MAX)')
                    , 1, 2, '') AS RoleMembership,
                STUFF((SELECT ', ' + ##DBPermissions.state_desc + ' ' + ##DBPermissions.permission_name + ' on ' + 
                            ISNULL('OBJECT:'+##DBPermissions.ObjectName, 'DATABASE:'+##DBPermissions.DBName)
                        FROM ##DBPermissions
                        WHERE ##DBPrincipals.DBName = ##DBPermissions.DBName
                          AND ##DBPrincipals.DBPrincipalId = ##DBPermissions.GranteePrincipalId
                        ORDER BY ##DBPermissions.state_desc, ISNULL(##DBPermissions.ObjectName, ##DBPermissions.DBName), ##DBPermissions.permission_name
                        FOR XML PATH(''),TYPE).value('.','VARCHAR(MAX)')
                    , 1, 2, '') AS DirectPermissions
        FROM ##DBPrincipals
        ORDER BY DBName, type, DBPrincipal
    END
    ELSE -- 'Default' or no match
    BEGIN
        SELECT DBName, DBPrincipal, SrvPrincipal, type, type_desc, default_schema_name, 
                create_date, modify_date, is_fixed_role, RoleAuthorization, sid, 
                DropScript, CreateScript
        FROM ##DBPrincipals ORDER BY DBName, DBPrincipal
        IF LEN(@Role) > 0
            SELECT DBName, UserName, RoleName, DropScript, AddScript 
            FROM ##DBRoles ORDER BY DBName, RoleName, UserName
        ELSE
            SELECT DBName, UserName, RoleName, DropScript, AddScript 
            FROM ##DBRoles ORDER BY DBName, UserName, RoleName
 
        IF LEN(@ObjectName) > 0
            SELECT DBName, GranteeName, GrantorName, class_desc, permission_name, ObjectName, 
                SchemaName, state_desc, RevokeScript, GrantScript 
            FROM ##DBPermissions ORDER BY DBName, ObjectName, GranteeName
        ELSE
            SELECT DBName, GranteeName, GrantorName, class_desc, permission_name, ObjectName, 
                SchemaName, state_desc, RevokeScript, GrantScript 
            FROM ##DBPermissions ORDER BY DBName, GranteeName, ObjectName
    END
 
    IF @DropTempTables = 1
    BEGIN
        DROP TABLE ##DBPrincipals
        DROP TABLE ##DBRoles
        DROP TABLE ##DBPermissions
    END
END
GO
/****** Object:  StoredProcedure [Detail].[CheckFreeSpace]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [Detail].[CheckFreeSpace] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

IF OBJECT_ID('DBMaint.Detail.FreeSpace', 'U') IS NULL
BEGIN
  CREATE TABLE DBMaint.Detail.FreeSpace(
Drive CHAR(10), 
PercentFreeSpace DECIMAL)
END
ELSE
BEGIN
    TRUNCATE TABLE DBMaint.Detail.FreeSpace
END

INSERT INTO DBMaint.Detail.FreeSpace
SELECT sub.drive, 
LEFT(sub.PercentFree,5) AS PercentFreeSpace
FROM
(SELECT DISTINCT
  vs.volume_mount_point AS [Drive],
  vs.logical_volume_name AS [DriveName],
  vs.total_bytes/1024/1024 AS [DriveSizeMB],
  vs.available_bytes/1024/1024 AS [DriveFreeSpaceMB],
  (CAST (vs.available_bytes AS DECIMAL(18,2)))/(CAST (vs.total_bytes AS DECIMAL(18,2)))*100 AS PercentFree  
FROM sys.master_files AS f
CROSS APPLY sys.dm_os_volume_stats(f.database_id, f.file_id) AS vs) sub
WHERE sub.PercentFree < 10

IF (SELECT COUNT(*) FROM DBMaint.Detail.FreeSpace) > 0
BEGIN

DECLARE @sub NVARCHAR(100)
SELECT @sub = N'Low Disk Space On ' + @@SERVERNAME
	EXEC msdb.dbo.sp_send_dbmail @profile_name = 'SQLAdmin',
								 @recipients = 'DELDLSQLAdmins@del.wa.gov',
							     @subject = @sub,
								 @query = N'SELECT * FROM DBMaint.Detail.FreeSpace;',
								 @attach_query_result_as_file = 0
								-- @query_attachment_filename = 'Test.txt'
END
END
GO
/****** Object:  StoredProcedure [Detail].[CheckLastRestore]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 09/13/2017
-- Description:	Will give you the list of backups that have occurred in the last week. 
-- Change Log: 9/13/2017 - Creation Date
-- =============================================
CREATE PROCEDURE [Detail].[CheckLastRestore]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT DISTINCT destination_database_name, 
                restore_date, 
                bs.backup_finish_date, 
                database_name        AS Source_database, 
                physical_device_name AS Backup_file_used_to_restore, 
                bs.user_name, 
                bs.machine_name 
FROM   msdb.dbo.restorehistory rh 
       INNER JOIN msdb.dbo.backupset bs 
               ON rh.backup_set_id = bs.backup_set_id 
       INNER JOIN msdb.dbo.backupmediafamily bmf 
               ON bs.media_set_id = bmf.media_set_id 
WHERE  rh.restore_date >= Dateadd(day, -7, Getdate()) 
ORDER  BY [rh].[restore_date] DESC 


END
GO
/****** Object:  StoredProcedure [Detail].[DatabaseVLFCount]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [Detail].[DatabaseVLFCount]
(
@SendToEmailAddress AS NVARCHAR(250) = 'DCYFDLDatabaseServerNotifications@dcyf.wa.gov'
,@MailProfileToUse NVARCHAR(100) = 'SQLAdmin'
,@VLFThreshold AS INT = 1000
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	/*Declare Working Tables*/
	DECLARE @VLFCount TABLE	(
	DBName VARCHAR(50)
	,Vlf_Count INT
	)
	
	/*Declare Working Variables*/
	DECLARE @TableCount INT --Use to hold the number of records from @VLFCount
	,@Subject AS NVARCHAR(250) --Subject of the email
	,@Message AS NVARCHAR(MAX) --Mesage body of the email
	
	/*Fill @VLFCount with databases that are above or equal to the VLF Threshold*/
	INSERT INTO @VLFCount
	(
	    DBName,
	    Vlf_Count
	)
	SELECT [name], COUNT(l.database_id)
	FROM sys.databases s
	CROSS APPLY sys.dm_db_log_info(s.database_id) l
	GROUP BY [name]
	HAVING COUNT(l.database_id) >= @VLFThreshold

	/*Fill @TableCount with the number of record in @VLFCount*/
	SELECT @TableCount = (SELECT COUNT(DBName) FROM @VLFCount)

	/*If there are records in the table, send an email with the database name, VLF count, and server name
	if there are no records do nothing*/

	IF @TableCount > 0
	BEGIN
		SET @Message = N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of database files below'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>Database Name</td>'
			+ N'<td>VLF Count</td>'
			+'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = [DBName]
					, ''
					, "td/@align" = 'CENTER'
					, td = CAST(Vlf_Count AS VARCHAR(10))
					FROM @VLFCount
					FOR
						XML PATH('tr')
							, TYPE) AS NVARCHAR(MAX)) 
			+ N'</table></div>';
	
			SET @Message = @Message
			--+ '</div>
			+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
			+ '<div style="margin-top:10px;"> '
			+ '<br>' + 'Above is a list of Databases that have more than ' + CAST(@VLFThreshold AS VARCHAR(10)) + ' VLFs on Server ' + @@SERVERNAME + '. 
			Please Take the appropriate action.</div>'
			--+ '<a href="mailto:' + @EmailAddressforReplys + '?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
			+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
			+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
			+ '</body></html>'

		IF @MailProfileToUse IS NULL
			BEGIN
				SELECT @MailProfileToUse = 'SQLAdmin'
			END

		EXEC msdb.dbo.sp_send_dbmail  
				@profile_name = @MailProfileToUse
				,@recipients = @SendToEmailAddress
				,@subject = @Subject
				,@body = @Message
				,@body_format = 'HTML' 
				,@importance = 'High'
				;
	END
END
GO
/****** Object:  StoredProcedure [Detail].[uspConfigruePermissionsByDatabase]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspConfigrueLoginsByDatabase]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
-- This procedure update/adds permissons based on a control table. Permissions can be set at the database
	or server level based on the needs.

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2021-05-07 - william.benson Created

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

-- This will set the permissions at the Server level
EXEC [Detail].[uspConfigruePermissionsByDatabase]
@Debug = 1
;

-- This will set the permissions at the database level
EXEC [Detail].[uspConfigruePermissionsByDatabase]
@DatabaseName = 'WaCompass'
,@Debug = 1
;

**************************************************************************************************/
CREATE PROC [Detail].[uspConfigruePermissionsByDatabase]
@DatabaseName NVARCHAR(250) = NULL
, @Debug BIT = 0

AS

BEGIN

SET NOCOUNT ON;

	DECLARE @ProcessCounter TINYINT = 1
	,@DatabaseCounter TINYINT = 1
	,@LoginToFixRecordCount TINYINT = 0
	,@DatabaseToFixTableCount TINYINT = 0
	,@LoginName sysname
	,@RoleMember sysname
	,@WithExecute BIT
	,@ViewDefinition BIT
	,@ServerName sysname
	,@SQLScript NVARCHAR(MAX)
	,@SQLScriptRole NVARCHAR(MAX)
	,@CurrnetDatabaseName NVARCHAR(250)
	,@PermissionsRecordId SMALLINT
	,@RunPermissionsFixScript BIT = 0
	,@RoleParmDefinition nvarchar(500)
	,@DoesRoleExists AS BIT = 0
    ,@SQLForRoleCheck VARCHAR(MAX)
    ,@ContinueRunningTheProcess BIT = 1
    ,@SQLCode VARCHAR(MAX)
    ,@DatabaseCurrentPermissionsCount INT
	;

	/** Used for the details of the exception **/
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	;

	
	DECLARE @DatabasePermissionsToFix TABLE(TableId int IDENTITY (1,1) NOT NULL, DatabaseName NVARCHAR(250) NOT NULL);
	DECLARE @LoginPermissonsToFix TABLE(TableId int IDENTITY (1,1) NOT NULL, LoginName NVARCHAR(100) NOT NULL, RoleMember NVARCHAR(100) NOT NULL, WithExcute BIT NOT NULL, ViewDefinition BIT NOT NULL, RecordId SMALLINT NOT NULL);
    DECLARE @DatabaseCurrentPermissions TABLE (TableId INT IDENTITY, LoginName NVARCHAR(150) ,RoleName NVARCHAR(150));
	
    
    SELECT @ServerName = @@SERVERNAME;

	IF @DatabaseName IS NULL
	BEGIN
		
		INSERT INTO @DatabasePermissionsToFix(DatabaseName)
		SELECT DISTINCT
		LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
		FROM [Config].[UserDatabasePermissions]
		WHERE [IsActive] = 1
		AND [ServerName] = @ServerName;

		/*
		INSERT INTO @DatabasePermissionsFix(DatabaseName, LoginName, RoleMember, WithExcute, ViewDefinition, RecordId)
		SELECT
		LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
		,LTRIM(RTRIM([LoginName])) AS [LoginName]
		,LTRIM(RTRIM([RoleMember])) AS [RoleMember]
		,[WithExcute]
		,[ViewDefinition]
		,[RecordId]
		FROM [Config].[DatabasePermissions]
		WHERE [IsActive] = 1
		AND [ServerName] = @ServerName;
		 */

		SELECT @DatabaseToFixTableCount = @@ROWCOUNT;
	END

	IF @DatabaseName IS NOT NULL
	BEGIN
		
		INSERT INTO @DatabasePermissionsToFix(DatabaseName)
		SELECT DISTINCT
		LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
		FROM [Config].[UserDatabasePermissions]
		WHERE [IsActive] = 1
		AND [ServerName] = @ServerName
		AND DatabaseName = @DatabaseName;

		/*
		INSERT INTO @DatabasePermissionsFix(DatabaseName, LoginName, RoleMember, WithExcute, ViewDefinition, RecordId)
		SELECT
		LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
		,LTRIM(RTRIM([LoginName])) AS [LoginName]
		,LTRIM(RTRIM([RoleMember])) AS [RoleMember]
		,[WithExcute]
		,[ViewDefinition]
		,[RecordId]
		FROM [Config].[DatabasePermissions]
		WHERE [IsActive] = 1
		AND [ServerName] = @ServerName
		AND DatabaseName = @DatabaseName;
		*/

		SELECT @DatabaseToFixTableCount = @@ROWCOUNT;
	END
	
	IF @Debug = 1
	BEGIN
		PRINT '------------ Debug Inoformation ----------------' ;
		PRINT '@ServerName: ' + ISNULL(CAST(@ServerName AS VARCHAR(100)), 'NULL') ;
		PRINT '@DatabaseToFixTableCount: ' + ISNULL(CAST(@DatabaseToFixTableCount AS VARCHAR(100)), 'NULL') ;
	END

	 /* Exit if there is nothing to fix*/
	IF @DatabaseToFixTableCount = 0
		BEGIN
				SELECT @ErrorMessage = 'No Database permissons to fix at this time'
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN;
		END	
	
	WHILE @DatabaseCounter <= @DatabaseToFixTableCount
		BEGIN

			IF @Debug = 1
			BEGIN
				PRINT '------------ Start Database Loop Info ----------------' ;
			END			
			
			SELECT
			@CurrnetDatabaseName = DatabaseName
			FROM @DatabasePermissionsToFix
			WHERE TableId = @DatabaseCounter;

			/* Check to see if the database exists on the server */
			IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @CurrnetDatabaseName)
				BEGIN
					SELECT @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @CurrnetDatabaseName + ')'
					RAISERROR (@ErrorMessage, 16, 1, 0, 0)
					--RETURN
				END

            SELECT @SQLForRoleCheck  = 'Use ' + @CurrnetDatabaseName + ';
            SELECT ISNULL(c.name, ''No MemberShip Assigned'') ''RoleName''
            ,a.name AS ''LoginName''
            FROM ' + @CurrnetDatabaseName + '.sys.database_principals a
            LEFT OUTER JOIN ' + @CurrnetDatabaseName+ '.sys.database_role_members b
            ON a.principal_id = b.member_principal_id
            LEFT OUTER JOIN ' + @CurrnetDatabaseName + '.sys.database_principals c
            ON b.role_principal_id = c.principal_id
            AND c.type = ''R''
            WHERE a.type IN (''S'',''U'',''G'')'
            ;

            IF @Debug = 1
			BEGIN
                PRINT '@RoleCheckSQ: ' + ISNULL(CAST(@SQLForRoleCheck AS VARCHAR(MAX)), 'NULL') ;
			END
            
            INSERT INTO  @DatabaseCurrentPermissions(RoleName, LoginName)
            EXECUTE (@SQLForRoleCheck); 
            
            SELECT @DatabaseCurrentPermissionsCount = @@ROWCOUNT;

            
            IF @Debug = 1
            BEGIN
    		    PRINT '@DatabaseCurrentPermissionsCount: ' + ISNULL(CAST(@DatabaseCurrentPermissionsCount AS VARCHAR(100)), 'NULL') ;
                --SELECT * FROM @DatabaseCurrentPermissions;
	        END
            
            INSERT INTO @LoginPermissonsToFix(LoginName, RoleMember, WithExcute, ViewDefinition, RecordId)
			SELECT
			LTRIM(RTRIM([UserCredentials])) AS [LoginName]
			,LTRIM(RTRIM([DatabaseRoleName])) AS [RoleMember]
			,[WithExcute]
			,[ViewDefinition]
			,[RecordId]
			FROM [Config].[UserDatabasePermissions]
			WHERE [IsActive] = 1
			AND [ServerName] = @ServerName
			AND DatabaseName = @CurrnetDatabaseName;

			SELECT @LoginToFixRecordCount = @@ROWCOUNT;

			WHILE @ProcessCounter <= @LoginToFixRecordCount
			BEGIN
			
				IF @Debug = 1
				BEGIN
					PRINT '------------ Start Login Loop Info ----------------' ;
				END
				
				SELECT @RunPermissionsFixScript = 1;
                SELECT @ContinueRunningTheProcess = 1
				
				SELECT
				@LoginName = LoginName
				, @RoleMember = RoleMember
				, @WithExecute = WithExcute
				, @ViewDefinition = ViewDefinition
				, @PermissionsRecordId = RecordId
				FROM @LoginPermissonsToFix
				WHERE TableId = @ProcessCounter;

				IF @Debug = 1
				BEGIN
					PRINT '@LoginName: ' + ISNULL(CAST(@LoginName AS VARCHAR(100)), 'NULL') ;
					PRINT '@RoleMember: ' + ISNULL(CAST(@RoleMember AS VARCHAR(100)), 'NULL') ;
					PRINT '@WithExecute: ' + ISNULL(CAST(@WithExecute AS VARCHAR(100)), 'NULL') ;
					PRINT '@ViewDefinition: ' + ISNULL(CAST(@ViewDefinition AS VARCHAR(100)), 'NULL') ;
					PRINT '@PermissionsRecordId: ' + ISNULL(CAST(@PermissionsRecordId AS VARCHAR(100)), 'NULL') ;
				END

                IF @Debug = 1
				BEGIN
					PRINT '------------------Checking login name at server level --------------------'
				END

                /* Check to see if the Login exists on the server */
				IF NOT EXISTS (SELECT name FROM [sys].[server_principals] WHERE name = @LoginName)
				BEGIN
					SELECT @RunPermissionsFixScript = 0;
					SELECT @ErrorMessage = 'One of the Logins specified does not exist, please check your spelling and try again (' + @LoginName + ')';
					RAISERROR (@ErrorMessage, 16, 1, 0, 0);
				END


                IF @Debug = 1
				BEGIN
				    PRINT '--------------------Check currnet permissions at database level ---------------------'
				END
					--RETURN
                
                IF @ContinueRunningTheProcess = 1
                BEGIN
                    /* Check to see if the login already has access to that role */
                    IF EXISTS(SELECT TOP 1 LoginName FROM @DatabaseCurrentPermissions WHERE LoginName = @LoginName AND RoleName = @RoleMember)
                    BEGIN
                        SELECT @RunPermissionsFixScript = 0,@ContinueRunningTheProcess = 0
                        SELECT @ErrorMessage = @LoginName + ' already is a member of ' + @RoleMember + ' role in the database ' + @CurrnetDatabaseName
					    RAISERROR (@ErrorMessage, 16, 1, 0, 0);
                   END
                END

                IF @Debug = 1
				BEGIN
				    PRINT '--------------------Check Login at the databse level ---------------------'
				END				
                
                IF @ContinueRunningTheProcess = 1
                BEGIN
                    /* Checks to see if the user is on the database, if it isn't, it adds the user to the database and then adds the role */
	                IF (SELECT COUNT(*) FROM @DatabaseCurrentPermissions WHERE [LoginName] = @LoginName ) = 0
		                BEGIN
		                    SELECT @SQLCode = 'USE '+ @DatabaseName + ';' + CHAR(13)
                            + 'CREATE USER [' + @LoginName + '] FOR LOGIN [' + @LoginName + '];';

	                        EXEC (@SQLCode)
                           
                            IF @Debug = 1
				            BEGIN
				                PRINT 'User ' + @LoginName + ' was created in ' + @DatabaseName + '.'
				            END
                            
		                END
                END

                IF @ContinueRunningTheProcess = 1
                BEGIN
                    /* Check to see if the role is already in the database */
	                IF @Debug = 1
						BEGIN
							PRINT '---------------------- Begin Role Check ---------------------'
						END
                    
                    SELECT @SQLScriptRole  = 'SELECT @DoesRoleExistsOut = COUNT(1) FROM ' + @DatabaseName + '.sys.database_principals WHERE [Name] = ' + CHAR(39) + @RoleMember + CHAR(39) + ' AND [Type] = ''R''';
				    SELECT @RoleParmDefinition = N'@DoesRoleExistsOut BIT OUTPUT';

                    EXECUTE sp_executesql @SQLScriptRole, @RoleParmDefinition, @DoesRoleExistsOut = @DoesRoleExists OUTPUT;
                    
				    IF @Debug = 1
				    BEGIN
					    PRINT '@SQLScriptRole: ' + ISNULL(CAST(@SQLScriptRole AS VARCHAR(MAX)), 'NULL') ;
					    PRINT '@DoesRoleExists: ' + ISNULL(CAST(@DoesRoleExists AS VARCHAR(100)), 'NULL') ;
					    PRINT '@RunPermissionsFixScript: ' + ISNULL(CAST(@RunPermissionsFixScript AS VARCHAR(100)), 'NULL') ;
					    --SELECT @SQLScriptRole AS SQLScriptRole
				    END
                    
                    IF @DoesRoleExists = 0
				    BEGIN
					    SELECT @RunPermissionsFixScript = 0, @ContinueRunningTheProcess = 0;
					    SELECT @ErrorMessage = 'The database role does not exists (' + @RoleMember + ')';
					    RAISERROR (@ErrorMessage, 16, 1, 0, 0);
					
					    IF @Debug = 1
						    BEGIN
							    PRINT '---------------------- End Role Check ---------------------'
						    END
					    --RETURN
				    END
                END
				
				IF @RunPermissionsFixScript = 1 AND @ContinueRunningTheProcess = 1
				BEGIN TRY
					SELECT @SQLScript = 'USE '+ @DatabaseName + ';' + CHAR(13)

					--exec sp_executesql @sql

							
					SELECT @SQLScript = @SQLScript + 'EXEC ' + @DatabaseName +  '.sys.sp_addrolemember N' + '''' + @RoleMember + '''' + ', N' + ''''  + @LoginName  + '''' + ';' + CHAR(13) + CHAR(13)
	
					IF @WithExecute = 1 
					BEGIN
						SELECT @SQLScript = @SQLScript + 'GRANT execute to ' + '['  + @LoginName  + ']' + ';'  + CHAR(13) 
					END

					IF @ViewDefinition = 1 
					BEGIN
						SELECT @SQLScript = @SQLScript + 'USE ' +@databasename + ';' + CHAR(13) +
						'GRANT view definition to ' + '['  + @LoginName  + ']' + ';'
					END
	
					IF @Debug = 1
					BEGIN
						PRINT '@SQLScript: ' + ISNULL(CAST(@SQLScript AS VARCHAR(MAX)), 'NULL') ;
                        PRINT '---------------------- Running SQL Script -------------------'
					END

					EXEC (@SQLScript);


				END TRY
				BEGIN CATCH
		 
					/** Grab specific information about the error/object **/
					SELECT @ErrorSeverity = ERROR_SEVERITY()
					, @ErrorMessage = ERROR_MESSAGE()
					, @E_DatabaseName = DB_NAME()
					, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
					, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
					, @E_ErrorLineNumber = ERROR_LINE();                   
                
					SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ') (DatabaseName ' + @DatabaseName + ')'
						+ ' (LoginName ' + @LoginName + ')' + ' (RoleMember ' + @RoleMember + ')'
                                                                                                                                                     
					/** Raise the error message **/
					RAISERROR (@ErrMsg, 18, 1) ;		
		
				END CATCH


				IF @Debug = 1
				BEGIN
					PRINT(@SQLScript)
					PRINT '@ProcessCounter: ' + ISNULL(CAST(@ProcessCounter AS VARCHAR(100)), 'NULL') ;
					PRINT '---------------------- End SQL Script ---------------------'
				END
										
				/* update the last time permissons where set */
				UPDATE src
				SET [LastAssignedDatetime] = SYSDATETIME()
				FROM [Config].[UserDatabasePermissions] AS src
				WHERE RecordId = @PermissionsRecordId
				;

				SELECT @ProcessCounter = @ProcessCounter + 1;

				IF @Debug = 1
				BEGIN
					PRINT '---------------------- End Login Loop ---------------------'
				END

			END /* @ProcessCounter <= @LoginToFixRecordCount */
	
		SELECT @DatabaseCounter = @DatabaseCounter + 1

		IF @Debug = 1
		BEGIN
			PRINT '@DatabaseCounter: ' + ISNULL(CAST(@DatabaseCounter AS VARCHAR(100)), 'NULL') ;
			PRINT '------------ End Database Loop ------------------' ;
		END

	END /* @DatabaseCounter <= @DatabaseToFixTableCount */

	IF @Debug = 1
	BEGIN
		PRINT '------------ End Inoformation ------------------' ;
	END
	
END
GO
/****** Object:  StoredProcedure [Detail].[uspDatabaseFileSizeGet]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspDatabaseFileSizeGet]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--This procesure pulls a list of files sizes (Row/Log) and inserts the data into a table for tracking

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-06-11: Created by William Benson (DEL)

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

EXEC [Detail].[uspDatabaseFileSizeGet]
GO

**************************************************************************************************/
CREATE PROCEDURE [Detail].[uspDatabaseFileSizeGet]

AS

BEGIN

	SET NOCOUNT ON;

	/** Used for the details of the exception **/
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT;

	BEGIN TRY

		INSERT INTO [Detail].[DatabaseFileSizes]
		([ServerName]
		,[DatabaseId]
		,[DatabaseName]
		,[FileId]
		,[FileName]
		,[TypeOfFile]
		,[PhysicalFileName]
		,[Size]
		,[MaxSize]
		,[FileSizeMB]
		,[SpaceUsedMB]
		,[FreeSpaceMB]
		,[SizeCheckDatetime])
		exec sp_msforeachdb 
		'use [?];
		SELECT
		@@SERVERNAME AS ServerName
		,DB_ID() AS DatabaseId  
		,DB_NAME() AS DatabaseName
		,[file_id] AS FileId
		,[Name] AS FileName
		,[type_desc] AS TypeOfFile
		,physical_name AS PhysicalName
		,SUM(SIZE) AS FileSize
		,SUM(MAX_SIZE) AS MaxSize
		,sum(size)/128.0 AS FileSizeMB 
		,SUM(CAST(FILEPROPERTY(name,''SpaceUsed'') AS INT))/128.0 as SpaceUsedMB
		,SUM(size)/128.0 - sum(CAST(FILEPROPERTY(name,''SpaceUsed'') AS INT))/128.0 AS FreeSpaceMB
		,GETDATE() AS SizeCheckDatetime  
		FROM sys.database_files 
		--where type=1
		GROUP BY [file_id], [name], [type_desc], [physical_name];'
		;

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
/****** Object:  StoredProcedure [Detail].[uspDatabaseFileSizeNotifications]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspDatabaseFileSizeNotifications]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
-- Checks the Database file size log table and send notifications based on limits

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-07-05 - Created by william.benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

EXEC [Detail].[uspDatabaseFileSizeNotifications]
@Debug = 1

**************************************************************************************************/
CREATE PROCEDURE [Detail].[uspDatabaseFileSizeNotifications]
@TypeOfFileToCheck NVARCHAR(100) = 'LOG'
,@SendToEmailAddress AS NVARCHAR(250) = 'DCYFDLDatabaseServerNotifications@dcyf.wa.gov'
,@EmailAddressforReplys AS NVARCHAR(250) = 'DCYFDLDatabaseAdmins@dcyf.wa.gov'
,@MailProfileToUse NVARCHAR(100) = 'SQLAdmin'
,@FilterDaysToCheck SMALLINT = -2
,@GrowthPercentCheck DECIMAL(10,4) = 50.00
,@Debug BIT = 0

AS

BEGIN
	SET NOCOUNT ON;

	DECLARE @StartDate AS DATETIME
	,@DabaseFileSizeCount SMALLINT
	,@Subject AS NVARCHAR(250) --Subject of the email
	,@Message AS NVARCHAR(MAX) --Mesage body of the email
	,@ServerName AS VARCHAR(50)
	,@SendEmail BIT = 0
	;

	DECLARE @tblDabaseFileSizeDetail AS TABLE (ServerName NVARCHAR(250), DatabaseName NVARCHAR(250), [FileName] NVARCHAR(250), TypeOfFile NVARCHAR(20)
		, FileSizeGrowth DECIMAL(10,4), [FreePctMB] DECIMAL(10,2));

	SELECT @StartDate = CONVERT(CHAR(10), SYSDATETIME(),121)
	,@ServerName = @@SERVERNAME
	;

		IF @Debug = 1
	BEGIN
		PRINT '------------ Debug Inoformation ----------------' ;
		PRINT '@StartDate: ' + ISNULL(CAST(@StartDate AS VARCHAR(100)), 'NULL') ;	
		PRINT '@FilterDaysToCheck: ' + ISNULL(CAST(@FilterDaysToCheck AS VARCHAR(100)), 'NULL') ;	
		PRINT '@GrowthPercentCheck: ' + ISNULL(CAST(@GrowthPercentCheck AS VARCHAR(100)), 'NULL') ;	
		PRINT '@ServerName: ' + ISNULL(CAST(@ServerName AS VARCHAR(100)), 'NULL') ;	
		PRINT '@SendToEmailAddress: ' + ISNULL(CAST(@SendToEmailAddress AS VARCHAR(100)), 'NULL') ;	
		PRINT '@EmailAddressforReplys: ' + ISNULL(CAST(@EmailAddressforReplys AS VARCHAR(100)), 'NULL') ;	
		PRINT '@MailProfileToUse: ' + ISNULL(CAST(@MailProfileToUse AS VARCHAR(100)), 'NULL') ;	
	END

	;
	WITH cteLogFileGrowth AS (
	SELECT
	[RecordId]
	,[ServerName]
	,[DatabaseId]
	,[DatabaseName]
	,[FileId]
	,[FileName]
	,[TypeOfFile]
	,[PrevsDayFileSizeMB]
	,[FileSizeMB]
	,CASE WHEN [PrevsDayFileSizeMB] = 0 THEN 0.0
		WHEN [PrevsDayFileSizeMB] > 0 THEN (([FileSizeMB] - [PrevsDayFileSizeMB]) / [FileSizeMB]) * 100.00
		ELSE NULL
	END AS FileSizeGrowth
	,[FreePctMB]
	,[SizeCheckDatetime]
	FROM (
		SELECT
		[RecordId]
		,[ServerName]
		,[DatabaseId]
		,[DatabaseName]
		,[FileId]
		,[FileName]
		,[TypeOfFile]
		,[FileSizeMB]
		,LAG([FileSizeMB], 1,0) OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime])  AS PrevsDayFileSizeMB
		,CONVERT(DECIMAL(10,2),([FreeSpaceMB] / [FileSizeMB]) * 100.00) AS [FreePctMB]
		,[SizeCheckDatetime]
		,RANK() OVER (PARTITION BY [ServerName],[DatabaseName],[FileName] ORDER BY [SizeCheckDatetime] DESC) AS RecordRank
		FROM [DBMaint].[Detail].[DatabaseFileSizes]
		WHERE TypeOfFile = @TypeOfFileToCheck
			AND SizeCheckDatetime >= DATEADD(DAY, @FilterDaysToCheck, @StartDate)
		--AND DatabaseName IN ('Attendance')
		) AS tblDetailInfo
	WHERE tblDetailInfo.RecordRank = 1
	)
	INSERT INTO @tblDabaseFileSizeDetail(ServerName,DatabaseName,[FileName],[TypeOfFile],[FreePctMB],[FileSizeGrowth])
	SELECT
	ServerName
	,DatabaseName
	,[FileName]
	,TypeOfFile
	,FreePctMB
	,FileSizeGrowth
	FROM cteLogFileGrowth
	WHERE FileSizeGrowth >= @GrowthPercentCheck
	ORDER BY [ServerName],[DatabaseName],[SizeCheckDatetime] DESC

	SELECT @DabaseFileSizeCount = @@ROWCOUNT

	IF @Debug = 1
	BEGIN
		PRINT '@DabaseFileSizeCount: ' + ISNULL(CAST(@DabaseFileSizeCount AS VARCHAR(100)), 'NULL') ;
	END


	IF @DabaseFileSizeCount > 0
	BEGIN
		--SET @Subject = @ServerType + ' || SQL Server Job Failure: ' + @JobName + ' on ' + @ServerName ;
		SET @Subject = 'Database File Size Increase Report'
            
		--SET @Message = '<html>' + '<body style="font: 12px Arial;">'
		--	+ '<div id="intro2" style="width:670px;">The job ' + @JobName + ' failed on '
		--	+ @ServerName + '.' + '<br><br>' ;
            
		SET @Message = N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of database files below'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>Server Name</td>'
			+ N'<td>Database Name</td>'
			+ N'<td>File Name</td>'
			+ N'<td>Type Of File</td>'
			+ N'<td>File Size Growth(MB)</td>'
			+ N'<td>Percent Free Space(MB)</td>'
			+'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = [ServerName]
					, ''
					, "td/@align" = 'CENTER'
					, td = [DatabaseName]
					, ''
					, "td/@align" = 'CENTER'
					, td = [FileName]
					, ''
					, "td/@align" = 'CENTER'
					, td = [TypeOfFile]
					, ''
					, "td/@align" = 'CENTER'
					, td = COALESCE(CAST([FileSizeGrowth] AS VARCHAR(10)), 'N/A')
					, ''
					, "td/@align" = 'CENTER'
					, td = COALESCE(CAST(FreePctMB AS VARCHAR(5)), 'N/A')
					FROM @tblDabaseFileSizeDetail
					ORDER BY ServerName,DatabaseName,[FileName],TypeOfFile,FileSizeGrowth DESC
					FOR
						XML PATH('tr')
							, TYPE) AS NVARCHAR(MAX)) 
			+ N'</table></div>';

		SET @Message = @Message
			--+ '</div>
			+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
			+ '<div style="margin-top:10px;"> '
			+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators</div>'
			--+ '<a href="mailto:' + @EmailAddressforReplys + '?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
			+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
			+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
			+ '</body></html>'
			--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 

	
			/* If no mail profile was passed in @MailProfileToUse then we set it to a defaul */ --this could be changed to a configuration table
		IF @MailProfileToUse IS NULL
		BEGIN
			SELECT @MailProfileToUse = 'SQLAdmin'
		END

		IF @Debug = 1
		BEGIN
			PRINT '@Subject: ' + ISNULL(CAST(@Subject AS VARCHAR(MAX)), 'NULL') ;
			PRINT '@Message: ' + ISNULL(CAST(@SendEmail AS VARCHAR(MAX)), 'NULL') ;
		END
			

		/* If the messase is not null and we have an operator email set the system to send the email */
		IF @Message IS NOT NULL AND @SendToEmailAddress IS NOT NULL
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
				,@recipients = @SendToEmailAddress
				,@subject = @Subject
				,@body = @Message
				,@body_format = 'HTML' 
				,@importance = 'High'
				;

		END
	
	END

	IF @Debug = 1
	BEGIN
		PRINT '------------ End Inoformation ------------------' ;
	END

END
GO
/****** Object:  StoredProcedure [Detail].[uspVersionNumberIns]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspVersionNumberIns]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
-- Adds the release number of the latest DBMaint Octo deployment

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
3/30/2021 - Created by Charles Wolff

4/6/2021 - CW added a few functionality bit. The first bit checks to see if the octo variable'
being past is a value or the variable name. Also added an OUTPUT value because DevOps needs 
a way for Octopus Delply to know if the PROC succeeded or failed. 
5/25/2021 - William.Benson updated the check preocess to look and see if the version is numeric also

changed the message to be set in the if blocks.

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

DECLARE @MyOutputStatus BIT
, @MyOutPutMessage  VARCHAR(200)

DECLARE @MyVersionNumner VARCHAR(25) = 'aa.3.apple.23325abc1'

SET NOCOUNT ON;

EXEC [Detail].[uspVersionNumberIns]
@VersionNum = @MyVersionNumner
,@Debug = 1
,@CompletionStatus = @MyOutputStatus OUTPUT
,@CompletionMessage = @MyOutPutMessage OUTPUT


SELECT @MyOutputStatus AS MyOutputStatus, @MyOutPutMessage AS MyOutPutMessage

**************************************************************************************************/

CREATE PROCEDURE [Detail].[uspVersionNumberIns]
   (@VersionNum VARCHAR(25)
   ,@Debug BIT = 0
   ,@CompletionStatus BIT OUTPUT
   ,@CompletionMessage NVARCHAR(200) OUTPUT
   )

AS
BEGIN
	BEGIN TRY

    SET NOCOUNT ON;

    DECLARE @ProcessStatus BIT = 0
    ,@ProcessMessage NVARCHAR(200) = NULL
    ,@TableInsertCount TINYINT = 0
    ,@VersionNumberCheck VARCHAR(25) = NULL
	
    /* Used for the details of the exception */
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	, @Outcome VARCHAR(100)
	, @ErrorDetails VARCHAR(100);
	

    SELECT @VersionNumberCheck = REPLACE(@VersionNum,'.','');

    IF @Debug = 1
    BEGIN
        PRINT ('------------Begin DEBUG-----------');
        PRINT '@VersionNum: ' + ISNULL(CAST(@VersionNum AS VARCHAR(100)), 'NULL');
        PRINT '@VersionNumberCheck: ' + ISNULL(CAST(@VersionNumberCheck AS VARCHAR(100)), 'NULL');
    END     
    
    IF ISNUMERIC(@VersionNumberCheck) <> 1 OR CHARINDEX(@VersionNum, '#') > 0
		BEGIN
        
            SELECT @ProcessStatus = 0;
			
            SELECT @ProcessMessage = N'The input value @VersionNum is ' + @VersionNum + ', this means that Octo did not grab the correct version number, please fix and try again';

            IF @Debug = 1
            BEGIN
                PRINT 'Debug Message @ProcessStatus: ' + ISNULL(CAST(@ProcessStatus AS VARCHAR(100)), 'NULL');
                PRINT 'Debug Message @ProcessMessage: ' + ISNULL(CAST(@ProcessMessage AS VARCHAR(200)), 'NULL');
            END

		END    
    
    IF ISNUMERIC(@VersionNumberCheck) = 1
		BEGIN

			TRUNCATE TABLE Detail.VersionNumber;

			INSERT INTO [Detail].[VersionNumber]([VersionNumber])
			VALUES(@VersionNum);

            SELECT @TableInsertCount = @@ROWCOUNT;

			SELECT @ProcessStatus = 1;
            
            SELECT @ProcessMessage= N'The version number that was inserted is ' + @VersionNum;

            IF @Debug = 1
            BEGIN
                PRINT '@TableInsertCount: ' + ISNULL(CAST(@TableInsertCount AS VARCHAR(100)), 'NULL');
            END

		END
	
        IF @ProcessStatus IS NULL
        BEGIN
            SELECT @ProcessStatus = 0
        END

        IF @ProcessMessage IS NULL
        BEGIN
            SELECT @ProcessMessage 'Something went wrong some where and we could not find a value'
        END
        
        
        SELECT @CompletionStatus = @ProcessStatus
        , @CompletionMessage = @ProcessMessage;

        IF @Debug = 1
		BEGIN
            PRINT '@ProcessStatus: ' + ISNULL(CAST(@CompletionStatus AS VARCHAR(100)), 'NULL');
            PRINT '@ProcessMessage: ' + ISNULL(CAST(@CompletionMessage AS VARCHAR(200)), 'NULL');
			PRINT ('------------END DEBUG-----------')
        END

	END TRY
	BEGIN CATCH
		SELECT @CompletionStatus = 0
		
        /*Update The backup Table with Result*/
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE(); 		         
		  
		SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;
		
	END CATCH

END
GO
/****** Object:  StoredProcedure [DR].[RestoreScriptGenie]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************************************************************************************
Restore Script Generator v1.05 (2013-01-15)
(C) 2012, Paul Brewer

Feedback: mailto:paulbrewer@yahoo.co.uk
Updates: http://paul.dynalias.com/sql

License:
Restore Script Genie is free to download and use for personal, educational, and internal
corporate purposes, provided that this header is preserved. Redistribution or sale
of sp_RestoreScriptGenie, in whole or in part, is prohibited without the author's express
written consent.

Usage examples:

sp_RestoreScriptGenie
  No parameters = Generates RESTORE commands for all USER databases, from actual backup files to existing file locations to most current time, consistency checks, CHECKSUM where possible

sp_RestoreScriptGenie @Database = 'db_workspace', @StopAt = '2012-12-23 12:01:00.000', @StandbyMode = 1
  Generates RESTORE commands for a specific database from the most recent full backup + most recent differential + transaction log backups before to STOPAT.
  Databases left in STANDBY
  Ignores COPY_ONLY backups, restores to default file locations from default backup file.

sp_RestoreScriptGenie @Database = 'db_workspace', @StopAt = '2012-12-23 12:31:00.000', @ToFileFolder = 'c:\temp\', @ToLogFolder = 'c:\temp\' , @BackupDeviceFolder = 'c:\backup\'
  Overrides data file folder, log file folder and backup file folder.
  Generates RESTORE commands for a specific database from most recent full backup, most recent differential + transaction log backups before STOPAT.
  Ignores COPY_ONLY backups, includes WITH MOVE to simulate a restore to a test environment with different folder mapping.

CHANGE LOG:
December 23, 2012 - V1.01 - Release
January 4,2013  - V1.02 - LSN Checks + Bug fix to STOPAT date format
January 11,2013  - V1.03 - SQL Server 2005 compatibility (backup compression problem) & @StandbyMode for stepping through log restores with a readable database
January 14, 2013 - V1.04 - Cope with up to 10 striped backup files
January 15, 2013 - V1.05 - Format of constructed restore script, enclose database name in [ ]
*********************************************************************************************/

CREATE PROC [DR].[RestoreScriptGenie]
(
  @Database SYSNAME = NULL,
  @ToFileFolder VARCHAR(2000) = NULL,
  @ToLogFolder VARCHAR(2000) = NULL,
  @BackupDeviceFolder VARCHAR(2000) = NULL,
  @StopAt DATETIME = NULL,
  @StandbyMode BIT = 0,
  @IncludeSystemBackups BIT = 0
)

/***********************************************************************************************
  @Database - If left blank, it will create restore scripts for all datases.
				Unsure if you can put more than one DB in the list
  @ToFileFolder - The place where the .MDF/.NDF files will go. 
  @ToLogFolder - The place where the Log files will go
  @BackupDeviceFolder - Where the backups are located. 
  @StopAt DATETIME - This is for a Point In Time restore. Time format needs to be like this 'YYYY-MM-DD HH:MM:SS'
					Please note, that the time section is in 24 hour time format, not 12 hour time format. 
  @StandbyMode - Will leave a database in a Standby Mode
  @IncludeSystemBackups - Tells the script to include or exclude the System DB's. 
)

*************************************************************************************************/
AS
BEGIN

SET NOCOUNT ON;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET QUOTED_IDENTIFIER ON;
SET ANSI_PADDING ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET ANSI_WARNINGS ON;
SET NUMERIC_ROUNDABORT OFF;
SET ARITHABORT ON;

IF ISNULL(@StopAt,'') = ''
  SET @StopAt = GETDATE();

--------------------------------------------------------------------------------------------------------------
-- Full backup UNION Differential Backup UNION Log Backup
--------------------------------------------------------------------------------------------------------------
WITH CTE
(
   database_name
  ,current_compatibility_level
  ,Last_LSN
  ,current_is_read_only
  ,current_state_desc
  ,current_recovery_model_desc
  ,has_backup_checksums
  ,backup_size
  ,[type]
  ,backupmediasetid
  ,family_sequence_number
  ,backupfinishdate
  ,physical_device_name
  ,position
)
AS
(
--------------------------------------------------------------------------------------------------------------
-- Full backup (most current or immediately before @StopAt if supplied)
--------------------------------------------------------------------------------------------------------------

SELECT
   bs.database_name
  ,d.[compatibility_level] AS current_compatibility_level
  ,bs.last_lsn
  ,d.[is_read_only] AS current_is_read_only
  ,d.[state_desc] AS current_state_desc
  ,d.[recovery_model_desc] current_recovery_model_desc
  ,bs.has_backup_checksums
  ,bs.backup_size AS backup_size
  ,'D' AS [type]
  ,bs.media_set_id AS backupmediasetid
  ,mf.family_sequence_number
  ,x.backup_finish_date AS backupfinishdate
  ,mf.physical_device_name
  ,bs.position
FROM msdb.dbo.backupset bs

INNER JOIN sys.databases d
  ON bs.database_name = d.name

INNER JOIN
(
  SELECT
    database_name
   ,MAX(backup_finish_date) backup_finish_date
  FROM msdb.dbo.backupset a
  JOIN msdb.dbo.backupmediafamily b
  ON a.media_set_id = b.media_set_id
  WHERE a.[type] = 'D'
  AND b.[Device_Type] = 2
  AND a.is_copy_only = 0
  AND a.backup_finish_date <= ISNULL(@StopAt,a.backup_finish_date)
  GROUP BY database_name
) x
  ON x.database_name = bs.database_name
  AND x.backup_finish_date = bs.backup_finish_date

JOIN msdb.dbo.backupmediafamily mf
  ON mf.media_set_id = bs.media_set_id
  AND mf.family_sequence_number BETWEEN bs.first_family_number AND bs.last_family_number

WHERE bs.type = 'D'
AND mf.physical_device_name NOT IN ('Nul', 'Nul:')

--------------------------------------------------------------------------------------------------------------
-- Differential backup (most current or immediately before @StopAt if supplied)
--------------------------------------------------------------------------------------------------------------
UNION

SELECT
   bs.database_name
  ,d.[compatibility_level] AS current_compatibility_level
  ,bs.last_lsn
  ,d.[is_read_only] AS current_is_read_only
  ,d.[state_desc] AS current_state_desc
  ,d.[recovery_model_desc] current_recovery_model_desc
  ,bs.has_backup_checksums
  ,bs.backup_size AS backup_size
  ,'I' AS [type]
  ,bs.media_set_id AS backupmediasetid
  ,mf.family_sequence_number
  ,x.backup_finish_date AS backupfinishdate
  ,mf.physical_device_name
  ,bs.position
FROM msdb.dbo.backupset bs

INNER JOIN sys.databases d
  ON bs.database_name = d.name

INNER JOIN
(
  SELECT
    database_name
   ,MAX(backup_finish_date) backup_finish_date
  FROM msdb.dbo.backupset a
  JOIN msdb.dbo.backupmediafamily b
  ON a.media_set_id = b.media_set_id
  WHERE a.[type] = 'I'
  AND b.[Device_Type] = 2
  AND a.is_copy_only = 0
  AND a.backup_finish_date <= ISNULL(@StopAt,GETDATE())
  GROUP BY database_name
) x
  ON x.database_name = bs.database_name
  AND x.backup_finish_date = bs.backup_finish_date

JOIN msdb.dbo.backupmediafamily mf
  ON mf.media_set_id = bs.media_set_id
  AND mf.family_sequence_number BETWEEN bs.first_family_number AND bs.last_family_number

WHERE bs.type = 'I'
AND mf.physical_device_name NOT IN ('Nul', 'Nul:')
AND bs.backup_finish_date <= ISNULL(@StopAt,GETDATE())

--------------------------------------------------------------------------------------------------------------
-- Log file backups after 1st full backup before @STOPAT, before next full backup after 1st full backup
--------------------------------------------------------------------------------------------------------------
UNION

SELECT
   bs.database_name
  ,d.[compatibility_level] AS current_compatibility_level
  ,bs.last_lsn
  ,d.[is_read_only] AS current_is_read_only
  ,d.[state_desc] AS current_state_desc
  ,d.[recovery_model_desc] current_recovery_model_desc
  ,bs.has_backup_checksums
  ,bs.backup_size AS backup_size
  ,'L' AS [type]
  ,bs.media_set_id AS backupmediasetid
  ,mf.family_sequence_number
  ,bs.backup_finish_date AS backupfinishdate
  ,mf.physical_device_name
  ,bs.position

FROM msdb.dbo.backupset bs

INNER JOIN sys.databases d
  ON bs.database_name = d.name

JOIN msdb.dbo.backupmediafamily mf
  ON mf.media_set_id = bs.media_set_id
  AND mf.family_sequence_number BETWEEN bs.first_family_number AND bs.last_family_number

LEFT OUTER JOIN
(
  SELECT
    database_name
   ,MAX(backup_finish_date) backup_finish_date
  FROM msdb.dbo.backupset a
  JOIN msdb.dbo.backupmediafamily b
  ON a.media_set_id = b.media_set_id
  WHERE a.[type] = 'D'
  AND b.[Device_Type] = 2
  AND a.is_copy_only = 0
  AND a.backup_finish_date <= ISNULL(@StopAt,a.backup_finish_date)
  GROUP BY database_name
) y
  ON bs.database_name = y.Database_name

LEFT OUTER JOIN
(
  SELECT
    database_name
   ,MIN(backup_finish_date) backup_finish_date
  FROM msdb.dbo.backupset a
  JOIN msdb.dbo.backupmediafamily b
   ON a.media_set_id = b.media_set_id
  WHERE a.[type] = 'D'
  AND b.[Device_Type] = 2

  AND a.is_copy_only = 0
  AND a.backup_finish_date > ISNULL(@StopAt,'1 Jan, 1900')
  GROUP BY database_name
) z
  ON bs.database_name = z.database_name

WHERE bs.backup_finish_date > y.backup_finish_date
AND bs.backup_finish_date < ISNULL(z.backup_finish_date,GETDATE())
AND mf.physical_device_name NOT IN ('Nul', 'Nul:')
AND bs.type = 'L'
AND mf.device_type = 2
)

---------------------------------------------------------------
-- Result set below is based on CTE above
---------------------------------------------------------------

SELECT
  a.Command AS TSQL_RestoreCommand_CopyPaste
FROM
(

--------------------------------------------------------------------
-- Most recent full backup
--------------------------------------------------------------------

SELECT
  ';RESTORE DATABASE [' + d.[name] + ']' + SPACE(1) +
  'FROM DISK = ' + '''' +
  CASE ISNULL(@BackupDeviceFolder,'Actual')
    WHEN 'Actual' THEN CTE.physical_device_name
    ELSE @BackupDeviceFolder + SUBSTRING(CTE.physical_device_name,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 1)
  END + '''' + SPACE(1) +

  -- Striped backup files
  CASE ISNULL(Stripe2.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe2.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe2.physical_device_name,LEN(Stripe2.physical_device_name) - CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe3.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe3.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe3.physical_device_name,LEN(Stripe3.physical_device_name) - CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe4.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe4.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe4.physical_device_name,LEN(Stripe4.physical_device_name) - CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe5.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe5.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe5.physical_device_name,LEN(Stripe5.physical_device_name) - CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe6.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe6.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe6.physical_device_name,LEN(Stripe6.physical_device_name) - CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe7.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe7.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe7.physical_device_name,LEN(Stripe7.physical_device_name) - CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe8.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe8.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe8.physical_device_name,LEN(Stripe8.physical_device_name) - CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe9.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe9.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe9.physical_device_name,LEN(Stripe9.physical_device_name) - CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe10.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe10.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe10.physical_device_name,LEN(Stripe10.physical_device_name) - CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 1) END + ''''
  END +

  'WITH REPLACE, FILE = ' + CAST(CTE.Position AS VARCHAR(5)) + ',' +
  CASE CTE.has_backup_checksums WHEN 1 THEN 'CHECKSUM,' ELSE ' ' END +

  CASE @StandbyMode WHEN 0 THEN 'NORECOVERY,' ELSE 'STANDBY =N' + '''' + ISNULL(@BackupDeviceFolder,SUBSTRING(CTE.physical_device_name,1,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name)))) + '\' + d.name + '_ROLLBACK_UNDO.bak ' + '''' + ',' END + SPACE(1) +

  'STATS=10,' + SPACE(1) +
  'MOVE ' + '''' + x.LogicalName + '''' + ' TO ' +
  '''' +
  CASE ISNULL(@ToFileFolder,'Actual')
    WHEN 'Actual' THEN x.PhysicalName
    ELSE @ToFileFolder + SUBSTRING(x.PhysicalName,LEN(x.PhysicalName) - CHARINDEX('\',REVERSE(x.PhysicalName),1) + 2,CHARINDEX('\',REVERSE(x.PhysicalName),1) + 1)
  END + '''' + ',' + SPACE(1) +

  'MOVE ' + '''' + y.LogicalName + '''' + ' TO ' +
  '''' +
  CASE ISNULL(@ToLogFolder,'Actual')
    WHEN 'Actual' THEN y.PhysicalName
    ELSE @ToLogFolder + SUBSTRING(y.PhysicalName,LEN(y.PhysicalName) - CHARINDEX('\',REVERSE(y.PhysicalName),1) + 2,CHARINDEX('\',REVERSE(y.PhysicalName),1) + 1)
  END + '''' AS Command,
  1 AS Sequence,
  d.name AS database_name,
  CTE.physical_device_name AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.databases d
JOIN
(
  SELECT
    DB_NAME(mf.database_id) AS name
   ,mf.Physical_Name AS PhysicalName
   ,mf.Name AS LogicalName
  FROM sys.master_files mf
  WHERE type_desc = 'ROWS'
  AND mf.file_id = 1
) x
ON d.name = x.name

JOIN
(
  SELECT
    DB_NAME(mf.database_id) AS name, type_desc
   ,mf.Physical_Name PhysicalName
   ,mf.Name AS LogicalName
  FROM sys.master_files mf
  WHERE type_desc = 'LOG'
) y
ON d.name = y.name

JOIN CTE
  ON CTE.database_name = d.name

-- Striped backup files (caters for up to 10)
LEFT OUTER JOIN CTE AS Stripe2
  ON Stripe2.database_name = d.name
  AND Stripe2.backupmediasetid = CTE.backupmediasetid
  AND Stripe2.family_sequence_number = 2

LEFT OUTER JOIN CTE AS Stripe3
  ON Stripe3.database_name = d.name
  AND Stripe3.backupmediasetid = CTE.backupmediasetid
  AND Stripe3.family_sequence_number = 3

LEFT OUTER JOIN CTE AS Stripe4
  ON Stripe4.database_name = d.name
  AND Stripe4.backupmediasetid = CTE.backupmediasetid
  AND Stripe4.family_sequence_number = 4

LEFT OUTER JOIN CTE AS Stripe5
  ON Stripe5.database_name = d.name
  AND Stripe5.backupmediasetid = CTE.backupmediasetid
  AND Stripe5.family_sequence_number = 5

LEFT OUTER JOIN CTE AS Stripe6
  ON Stripe6.database_name = d.name
  AND Stripe6.backupmediasetid = CTE.backupmediasetid
  AND Stripe6.family_sequence_number = 6

LEFT OUTER JOIN CTE AS Stripe7
  ON Stripe7.database_name = d.name
  AND Stripe7.backupmediasetid = CTE.backupmediasetid
  AND Stripe7.family_sequence_number = 7

LEFT OUTER JOIN CTE AS Stripe8
  ON Stripe8.database_name = d.name
  AND Stripe8.backupmediasetid = CTE.backupmediasetid
  AND Stripe8.family_sequence_number = 8

LEFT OUTER JOIN CTE AS Stripe9
  ON Stripe9.database_name = d.name
  AND Stripe9.backupmediasetid = CTE.backupmediasetid
  AND Stripe9.family_sequence_number = 9

LEFT OUTER JOIN CTE AS Stripe10
  ON Stripe10.database_name = d.name
  AND Stripe10.backupmediasetid = CTE.backupmediasetid
  AND Stripe10.family_sequence_number = 10

WHERE CTE.[type] = 'D'
AND CTE.family_sequence_number = 1

--------------------------------------------------------------------
-- Most recent differential backup
--------------------------------------------------------------------
UNION

SELECT
  ';RESTORE DATABASE [' + d.[name] + ']' + SPACE(1) +
  'FROM DISK = ' + '''' +
  CASE ISNULL(@BackupDeviceFolder,'Actual')
    WHEN 'Actual' THEN CTE.physical_device_name
    ELSE @BackupDeviceFolder + SUBSTRING(CTE.physical_device_name,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 1)
  END + '''' + SPACE(1) +

  -- Striped backup files
  CASE ISNULL(Stripe2.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe2.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe2.physical_device_name,LEN(Stripe2.physical_device_name) - CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe3.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe3.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe3.physical_device_name,LEN(Stripe3.physical_device_name) - CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe4.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe4.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe4.physical_device_name,LEN(Stripe4.physical_device_name) - CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe5.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe5.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe5.physical_device_name,LEN(Stripe5.physical_device_name) - CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe6.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe6.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe6.physical_device_name,LEN(Stripe6.physical_device_name) - CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe7.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe7.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe7.physical_device_name,LEN(Stripe7.physical_device_name) - CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe8.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe8.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe8.physical_device_name,LEN(Stripe8.physical_device_name) - CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe9.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe9.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe9.physical_device_name,LEN(Stripe9.physical_device_name) - CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe10.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe10.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe10.physical_device_name,LEN(Stripe10.physical_device_name) - CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 1) END + ''''
  END +

  'WITH REPLACE, FILE = ' + CAST(CTE.Position AS VARCHAR(5)) + ',' +
  CASE CTE.has_backup_checksums WHEN 1 THEN 'CHECKSUM,' ELSE ' ' END +

  CASE @StandbyMode WHEN 0 THEN 'NORECOVERY,' ELSE 'STANDBY =N' + '''' + ISNULL(@BackupDeviceFolder,SUBSTRING(CTE.physical_device_name,1,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name)))) + '\' + d.name + '_ROLLBACK_UNDO.bak ' + ''''  + ',' END + SPACE(1) +

  'STATS=10,' + SPACE(1) +
  'MOVE ' + '''' + x.LogicalName + '''' + ' TO ' +
  '''' +
   CASE ISNULL(@ToFileFolder,'Actual')
    WHEN 'Actual' THEN x.PhysicalName
    ELSE @ToFileFolder + SUBSTRING(x.PhysicalName,LEN(x.PhysicalName) - CHARINDEX('\',REVERSE(x.PhysicalName),1) + 2,CHARINDEX('\',REVERSE(x.PhysicalName),1) + 1)
  END + '''' + ',' + SPACE(1) +

  'MOVE ' + '''' + y.LogicalName + '''' + ' TO ' +
  '''' +
  CASE ISNULL(@ToLogFolder,'Actual')
    WHEN 'Actual' THEN y.PhysicalName
    ELSE @ToLogFolder + SUBSTRING(y.PhysicalName,LEN(y.PhysicalName) - CHARINDEX('\',REVERSE(y.PhysicalName),1) + 2,CHARINDEX('\',REVERSE(y.PhysicalName),1) + 1)
  END + '''' AS Command,
  32769/2 AS Sequence,
  d.name AS database_name,
  CTE.physical_device_name AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.databases d

JOIN CTE
  ON CTE.database_name = d.name

-- Striped backup files (caters for up to 10)
LEFT OUTER JOIN CTE AS Stripe2
  ON Stripe2.database_name = d.name
  AND Stripe2.backupmediasetid = CTE.backupmediasetid
  AND Stripe2.family_sequence_number = 2

LEFT OUTER JOIN CTE AS Stripe3
  ON Stripe3.database_name = d.name
  AND Stripe3.backupmediasetid = CTE.backupmediasetid
  AND Stripe3.family_sequence_number = 3

LEFT OUTER JOIN CTE AS Stripe4
  ON Stripe4.database_name = d.name
  AND Stripe4.backupmediasetid = CTE.backupmediasetid
  AND Stripe4.family_sequence_number = 4

LEFT OUTER JOIN CTE AS Stripe5
  ON Stripe5.database_name = d.name
  AND Stripe5.backupmediasetid = CTE.backupmediasetid
  AND Stripe5.family_sequence_number = 5

LEFT OUTER JOIN CTE AS Stripe6
  ON Stripe6.database_name = d.name
  AND Stripe6.backupmediasetid = CTE.backupmediasetid
  AND Stripe6.family_sequence_number = 6

LEFT OUTER JOIN CTE AS Stripe7
  ON Stripe7.database_name = d.name
  AND Stripe7.backupmediasetid = CTE.backupmediasetid
  AND Stripe7.family_sequence_number = 7

LEFT OUTER JOIN CTE AS Stripe8
  ON Stripe8.database_name = d.name
  AND Stripe8.backupmediasetid = CTE.backupmediasetid
  AND Stripe8.family_sequence_number = 8

LEFT OUTER JOIN CTE AS Stripe9
  ON Stripe9.database_name = d.name
  AND Stripe9.backupmediasetid = CTE.backupmediasetid
  AND Stripe9.family_sequence_number = 9

LEFT OUTER JOIN CTE AS Stripe10
  ON Stripe10.database_name = d.name
  AND Stripe10.backupmediasetid = CTE.backupmediasetid
  AND Stripe10.family_sequence_number = 10

JOIN
(
  SELECT
    DB_NAME(mf.database_id) AS name
   ,mf.Physical_Name AS PhysicalName
   ,mf.Name AS LogicalName
  FROM sys.master_files mf
  WHERE type_desc = 'ROWS'
  AND mf.file_id = 1
) x
ON d.name = x.name

JOIN
(
  SELECT
    DB_NAME(mf.database_id) AS name, type_desc
   ,mf.Physical_Name PhysicalName
   ,mf.Name AS LogicalName
  FROM sys.master_files mf
  WHERE type_desc = 'LOG'
) y
ON d.name = y.name

JOIN
(
  SELECT
   database_name,
   Last_LSN,
   backupfinishdate
  FROM CTE
  WHERE [Type] = 'D'
) z
  ON CTE.database_name = z.database_name

WHERE CTE.[type] = 'I'
AND CTE.backupfinishdate > z.backupfinishdate -- Differential backup was after selected full backup
AND CTE.Last_LSN > z.Last_LSN -- Differential Last LSN > Full Last LSN
AND CTE.backupfinishdate < @StopAt
AND CTE.family_sequence_number = 1

-----------------------------------------------------------------------------------------------------------------------------
UNION -- Restore Log backups taken since most recent full, these are filtered in the CTE to those after the full backup date
-----------------------------------------------------------------------------------------------------------------------------

SELECT
  ';RESTORE LOG [' + d.[name] + ']' + SPACE(1) +
  'FROM DISK = ' + '''' + --CTE.physical_device_name + '''' + SPACE(1) +
  CASE ISNULL(@BackupDeviceFolder,'Actual')
   WHEN 'Actual' THEN CTE.physical_device_name
   ELSE @BackupDeviceFolder + SUBSTRING(CTE.physical_device_name,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(CTE.physical_device_name),1) + 1)
  END + '''' +

  -- Striped backup files
  CASE ISNULL(Stripe2.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe2.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe2.physical_device_name,LEN(Stripe2.physical_device_name) - CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe2.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe3.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe3.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe3.physical_device_name,LEN(Stripe3.physical_device_name) - CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe3.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe4.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe4.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe4.physical_device_name,LEN(Stripe4.physical_device_name) - CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe4.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe5.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe5.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe5.physical_device_name,LEN(Stripe5.physical_device_name) - CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe5.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe6.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe6.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe6.physical_device_name,LEN(Stripe6.physical_device_name) - CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe6.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe7.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe7.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe7.physical_device_name,LEN(Stripe7.physical_device_name) - CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe7.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe8.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe8.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe8.physical_device_name,LEN(Stripe8.physical_device_name) - CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe8.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe9.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe9.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe9.physical_device_name,LEN(Stripe9.physical_device_name) - CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe9.physical_device_name),1) + 1) END + ''''
  END +

  CASE ISNULL(Stripe10.physical_device_name,'')
    WHEN '' THEN ''
    ELSE  ', DISK = ' + '''' + CASE ISNULL(@BackupDeviceFolder,'Actual') WHEN 'Actual' THEN Stripe10.physical_device_name ELSE @BackupDeviceFolder + SUBSTRING(Stripe10.physical_device_name,LEN(Stripe10.physical_device_name) - CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 2,CHARINDEX('\',REVERSE(Stripe10.physical_device_name),1) + 1) END + ''''
  END +

  CASE @StandbyMode WHEN 0 THEN ' WITH NORECOVERY,' ELSE ' WITH STANDBY =N' + '''' + ISNULL(@BackupDeviceFolder,SUBSTRING(CTE.physical_device_name,1,LEN(CTE.physical_device_name) - CHARINDEX('\',REVERSE(CTE.physical_device_name)))) + '\' + d.name + '_ROLLBACK_UNDO.bak ' + ''''  + ',' END + SPACE(1) +

  CASE CTE.has_backup_checksums WHEN 1 THEN ' CHECKSUM,' ELSE ' ' END +
 
  + 'FILE = ' + CAST(CTE.Position AS VARCHAR(5)) +
  CASE CTE.backupfinishdate
    WHEN z.backupfinishdate THEN ' ,STOPAT = ' + '''' + CONVERT(VARCHAR(21),@StopAt,120) + ''''
    ELSE ' '
  END
  AS Command,
  32769 AS Sequence,
  d.name AS database_name,
  CTE.physical_device_name AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.databases d

JOIN CTE
  ON CTE.database_name = d.name

-- Striped backup files (caters for up to 10)
LEFT OUTER JOIN CTE AS Stripe2
  ON Stripe2.database_name = d.name
  AND Stripe2.backupmediasetid = CTE.backupmediasetid
  AND Stripe2.family_sequence_number = 2

LEFT OUTER JOIN CTE AS Stripe3
  ON Stripe3.database_name = d.name
  AND Stripe3.backupmediasetid = CTE.backupmediasetid
  AND Stripe3.family_sequence_number = 3

LEFT OUTER JOIN CTE AS Stripe4
  ON Stripe4.database_name = d.name
  AND Stripe4.backupmediasetid = CTE.backupmediasetid
  AND Stripe4.family_sequence_number = 4

LEFT OUTER JOIN CTE AS Stripe5
  ON Stripe5.database_name = d.name
  AND Stripe5.backupmediasetid = CTE.backupmediasetid
  AND Stripe5.family_sequence_number = 5

LEFT OUTER JOIN CTE AS Stripe6
  ON Stripe6.database_name = d.name
  AND Stripe6.backupmediasetid = CTE.backupmediasetid
  AND Stripe6.family_sequence_number = 6

LEFT OUTER JOIN CTE AS Stripe7
  ON Stripe7.database_name = d.name
  AND Stripe7.backupmediasetid = CTE.backupmediasetid
  AND Stripe7.family_sequence_number = 7

LEFT OUTER JOIN CTE AS Stripe8
  ON Stripe8.database_name = d.name
  AND Stripe8.backupmediasetid = CTE.backupmediasetid
  AND Stripe8.family_sequence_number = 8

LEFT OUTER JOIN CTE AS Stripe9
  ON Stripe9.database_name = d.name
  AND Stripe9.backupmediasetid = CTE.backupmediasetid
  AND Stripe9.family_sequence_number = 9

LEFT OUTER JOIN CTE AS Stripe10
  ON Stripe10.database_name = d.name
  AND Stripe10.backupmediasetid = CTE.backupmediasetid
  AND Stripe10.family_sequence_number = 10

LEFT OUTER JOIN  -- Next full backup after STOPAT
(
  SELECT
   database_name, MIN(BackupFinishDate) AS backup_finish_date
  FROM CTE
  WHERE type = 'D'
  AND backupfinishdate > @StopAt
  GROUP BY database_name

) x
  ON x.database_name = CTE.database_name

LEFT OUTER JOIN -- Highest differential backup date
(
  SELECT database_name, MAX(backupfinishdate) AS backupfinishdate
  FROM CTE
  WHERE CTE.type = 'I'
  AND CTE.backupfinishdate < @StandbyMode
  GROUP BY database_name
) y
  ON y.database_name = CTE.database_name

LEFT OUTER JOIN -- First log file after STOPAT
(
  SELECT database_name, MIN(backupfinishdate) AS backupfinishdate
  FROM CTE
  WHERE CTE.type = 'L'
  AND backupfinishdate > @StopAt
  GROUP BY database_name
) z
  ON z.database_name = CTE.database_name

JOIN
(
  SELECT
   database_name,
   MAX(Last_LSN) AS Last_LSN
  FROM CTE
  WHERE CTE.backupfinishdate < ISNULL(@StopAt,GETDATE())
  AND CTE.Type IN ('D','I')
  GROUP BY database_name
) x1
  ON CTE.database_name = x1.database_name

WHERE CTE.[type] = 'L'
AND CTE.backupfinishdate <= ISNULL(x.backup_finish_date,'31 Dec, 2199') -- Less than next full backup
AND CTE.backupfinishdate >= ISNULL(y.backupfinishdate, CTE.backupfinishdate) --Great than or equal to last differential backup
AND CTE.backupfinishdate <= ISNULL(z.backupfinishdate, CTE.backupfinishdate) -- Less than or equal to last file file in recovery chain (IE Log Backup datetime might be after STOPAT)
AND CTE.Last_LSN > x1.Last_LSN -- Differential or Full Last LSN < Log Last LSN
AND CTE.family_sequence_number = 1

--------------------------------------------------------------------
UNION -- Restore WITH RECOVERY
--------------------------------------------------------------------
SELECT
  ';RESTORE DATABASE [' + d.[name] + ']' + SPACE(1) + 'WITH RECOVERY' AS Command,
  32771 AS Sequence,
  d.name AS database_name,
  '' AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.databases d

JOIN CTE
  ON CTE.database_name = d.name

WHERE CTE.[type] = 'D'
AND @StandbyMode = 0

--------------------------------------------------------------------
UNION -- CHECKDB
--------------------------------------------------------------------
SELECT
  ';DBCC CHECKDB(' + '''' + d.[name] + '''' + ') WITH NO_INFOMSGS IF @@ERROR > 0 PRINT N''CONSISTENCY PROBLEMS IN DATABASE : ' + d.name + ''' ELSE PRINT N''CONSISTENCY GOOD IN DATABASE : ' + d.name + '''' AS Command,
  32772 AS Sequence,
  d.name AS database_name,
  '' AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.databases d

JOIN CTE
  ON CTE.database_name = d.name

WHERE CTE.[type] = 'D'
AND @StandbyMode = 0

---------------------------------------------------------------------------------------------------------------------------------------------------
UNION -- MOVE full backup secondary data files, allows for up to 32769/2 file groups
---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT
  ', MOVE ' + '''' + b.name + '''' + ' TO ' +
  '''' +
  CASE ISNULL(@ToFileFolder,'Actual')
    WHEN 'Actual' THEN b.physical_name
    ELSE @ToFileFolder + SUBSTRING(b.Physical_Name,LEN(b.Physical_Name) - CHARINDEX('\',REVERSE(b.Physical_Name),1) + 2,CHARINDEX('\',REVERSE(b.Physical_Name),1) + 1)
  END + '''',
  b.file_id AS Sequence,
  DB_NAME(b.database_id) AS database_name,
  '' AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.master_files b
INNER JOIN CTE
  ON CTE.database_name = DB_NAME(b.database_id)

WHERE CTE.[type] = 'D'
AND b.type_desc = 'ROWS'
AND b.file_id > 2

---------------------------------------------------------------------------------------------------------------------------------------------------
UNION -- MOVE differential backup secondary data files, allows for up to 32769/2 file groups
---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT
  ', MOVE ' + '''' + b.name + '''' + ' TO ' +
  '''' +
  CASE ISNULL(@ToFileFolder,'Actual')
    WHEN 'Actual' THEN b.physical_name
    ELSE @ToFileFolder + SUBSTRING(b.Physical_Name,LEN(b.Physical_Name) - CHARINDEX('\',REVERSE(b.Physical_Name),1) + 2,CHARINDEX('\',REVERSE(b.Physical_Name),1) + 1)
  END + '''',
  ((b.file_id) + (32769/2)) AS Sequence,
  DB_NAME(b.database_id) AS database_name,
  '' AS BackupDevice,
  CTE.backupfinishdate,
  CTE.backup_size

FROM sys.master_files b
INNER JOIN CTE
  ON CTE.database_name = DB_NAME(b.database_id)

WHERE CTE.[type] = 'I'
AND b.type_desc = 'ROWS'
AND b.file_id > 2
AND CTE.backupfinishdate < @StopAt
) a

WHERE a.database_name = ISNULL(@database,a.database_name)
AND (@IncludeSystemBackups = 1 OR a.database_name NOT IN('master','model','msdb'))

ORDER BY
  database_name,
  sequence,
  backupfinishdate

END
GO
/****** Object:  StoredProcedure [JobNotifications].[uspSendJobFailureWithSSISDDetail]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[JobNotification].[spSendJobFailureWithSSISDDetail]

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
EXEC [DBMaint].[JobNotifications].[spSendJobFailureWithSSISDDetail]
@JobUniqueId = JobID
,@LastRunDate = @JobStartDate
,@LastRunTime = @JobStartTime
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-02-21: Created by william benson
2018-04-13: updated the the job history to look for sysj.run_time >= job start time  and < currnet time as int
2020-02-07: added the ability to send it to the service desk to the axosoft queue via the service desk

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
Run Time = 0.1
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
Example: To send an email based on a job id and specific run time
EXEC [JobNotifications].[spSendJobFailureWithSSISDDetail]
	@JobUniqueId = '775A3E4A-2C3E-4222-98F2-9FE898255722'
	,@Debug = 1
	,@LastRunDate = '20180221'
	,@LastRunTime = '153827'

Example: To send an email based on a job id and specific run time and see debug information
EXEC [JobNotifications].[spSendJobFailureWithSSISDDetail]
	@JobUniqueId = '6D76DA37-A71D-4113-B56A-AC2F3F95C812'
	,@LastRunDate = '20180221'
	,@LastRunTime = '153827'
	,@Debug = 1

Example: To send an email based on a job id and most recent job run and send a copy of the email to additional people
EXEC [JobNotification].[spSendJobFailureWithSSISDDetail]
	@JobUniqueId = '6D76DA37-A71D-4113-B56A-AC2F3F95C812'
	,@AdditionalRecipientsEmailAddress = 'John.Doe@SomeEmailAddress.com;Jane.Doe@SomeEmailAddress.com'

**************************************************************************************************/
CREATE PROCEDURE [JobNotifications].[uspSendJobFailureWithSSISDDetail]
	@JobUniqueId UNIQUEIDENTIFIER
	,@LastRunDate VARCHAR(10) = NULL
	,@LastRunTime VARCHAR(6) = NULL
	,@MailProfile NVARCHAR(250) = 'DCYF Database Server Notifications'
	,@AdditionalRecipientsEmailAddress AS VARCHAR(MAX) = ';'
	,@SendToServiceDesk BIT = 0
	,@ServiceDeskEmailAddress  NVARCHAR(250) = 'dcyf.servicedesk@dcyf.wa.gov'
	,@ServiceDeskDatabaseTeamQueue NVARCHAR(250) = 'Database Integration Team Q: '
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
	,@MailProfileToUse AS NVARCHAR(250);
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
	--Change this to use [DBMaint].[Lookup].[Server]
	SELECT @ServerType = CASE @@SERVERNAME WHEN 'DELOLYDB12007' THEN 'DEV ETL Server'
		WHEN 'DELOLYDB12008' THEN 'UAT ETL Server'
		WHEN 'DELOLYDB12009' THEN 'Prod ETL Server'
		ELSE 'DCYF SQL Server'
	END
	,@ServerName = @@SERVERNAME ;

    /*
    SELECT 
    svr.[ServerName]
    , env.EnvironmentName
    , clf.ClassificationName
    FROM [DBMaint].[Lookup].[Server] AS svr
    INNER JOIN [Lookup].[Environment] AS env
    ON svr.EnvironmentId = env.RecordId
    AND env.IsActive = 1
    INNER JOIN [Lookup].[Classification] AS clf
    ON clf.RecordId = svr.ClassificationId
    AND clf.IsActive = 1
    WHERE svr.ServerName = @@SERVERNAME
    AND svr.IsActive = 1
    */

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

		EXEC [Utilities].[uspCheckMailProfileToUse]
		@MailProfileToSearchFor = @MailProfile
		,@ProfileNameToUse = @MailProfileToUse OUTPUT;
			
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

	IF @SendToServiceDesk = 1
	BEGIN
		
		SET @Subject = @ServiceDeskDatabaseTeamQueue + @ServerType + ' || SQL Server Job Failure: ' + @JobName + ' on ' + @ServerName ;

		EXEC msdb.dbo.sp_send_dbmail  
		    @profile_name = @MailProfileToUse
		    ,@recipients = @ServiceDeskEmailAddress 
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
/****** Object:  StoredProcedure [JobNotifications].[uspSendLongRunningJobInfo]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--EXEC [JobNotifications].[uspSendLongRunningJobInfo]SET QUOTED_IDENTIFIER ON
--SET ANSI_NULLS ON
--GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[JobNotifications].[spSendLongRunningJobInfo]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Variables:
@MinHistExecutions - Minimum number of job executions we want to consider 
@MinAvgSecsDuration - Threshold for minimum job duration we care to monitor
@HistoryStartDate - Start date for historical average
@HistoryEndDate - End date for historical average
 
These variables allow for us to control a couple of factors. First
we can focus on jobs that are running long enough on average for
us to be concerned with (say, 30 seconds or more). Second, we can
avoid being alerted by jobs that have run so few times that the
average and standard deviations are not quite stable yet. This script
leaves these variables at 1.0, but I would advise you alter them
upwards after testing.
 
Returns: One result set containing a list of jobs that
are currently running and are running longer than two standard deviations 
away from their historical average. The "Min Threshold" column
represents the average plus two standard deviations. 

note [1] - comment this line and note [2] line if you want to report on all history for jobs
note [2] - comment just this line is you want to report on running and non-running jobs
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-12-08: Created by william benson
2021-03-04: William.Benson - Change the where clause to use AvgDuration so that it wont report out untill the job is actually past the average

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

EXEC [JobNotifications].[spSendLongRunningJobInfo]
@HistoryStartDate = '2018-11-01'
, @HistoryEndDate = '2018-12-08'
, @MinHistExecutions = 6.0
, @MinAvgSecsDuration = 900.0
, @MailProfile = 'DCYF Database Server Notifications'
, @EmailRecipients = 'William.Benson@dcyf.wa.gov' --'dcyfdldatabaseservernotifications@dcyf.wa.gov'
**************************************************************************************************/
CREATE   PROCEDURE [JobNotifications].[uspSendLongRunningJobInfo]
@HistoryStartDate DATETIME 
  ,@HistoryEndDate DATETIME  
  ,@MinHistExecutions INT 
  ,@MinAvgSecsDuration INT
  ,@MailProfile NVARCHAR(250) = NULL
  ,@EmailRecipients NVARCHAR(MAX)
  ,@Debug BIT = 0

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE
	@CountOfLongRunningJobs INT 
	,@Subject AS VARCHAR(250) --Subject of the email
	,@Message AS NVARCHAR(MAX) --Mesage body of the email
	,@SendEmail BIT = 0
	,@M_ErrorMessage NVARCHAR(250)
	,@ServerType AS VARCHAR(50)
	,@ServerName AS VARCHAR(50)
	,@MailProfileToUse AS NVARCHAR(250);
	;
 
    DECLARE @RunningJobs TABLE (
    [JobId] UNIQUEIDENTIFIER NOT NULL
    ,[ExecutionDate] DATETIME2(4) NOT NULL
    ,[CurrentExecutedStepId] TINYINT NULL
    ,[JobStepName] sysname NULL
    )

	DECLARE @LongRunningJobs TABLE (
	[JobId] UNIQUEIDENTIFIER NOT NULL
	,[JobName] NVARCHAR(250)
    ,[CurrentExecutionDate] DATETIME2(4) NULL
	,[ExecutionDate] DATETIME
	,[HistoricalAvgDurationSecs] DECIMAL(10,2)
	,[MinThreshholdSecs] DECIMAL(10,2)
	);

    INSERT INTO @RunningJobs
    (
        JobId
      , ExecutionDate
      , CurrentExecutedStepId
      , JobStepName
    )
    SELECT
    ja.job_id,
    ja.start_execution_date,      
    ISNULL(last_executed_step_id,0)+1 AS current_executed_step_id,
    Js.step_name
    FROM msdb.dbo.sysjobactivity ja 
    LEFT JOIN msdb.dbo.sysjobhistory jh 
    ON ja.job_history_id = jh.instance_id
    JOIN msdb.dbo.sysjobs j 
    ON ja.job_id = j.job_id
    JOIN msdb.dbo.sysjobsteps js
    ON ja.job_id = js.job_id
    AND ISNULL(ja.last_executed_step_id,0)+1 = js.step_id
    WHERE ja.session_id = (SELECT TOP 1 session_id FROM msdb.dbo.syssessions ORDER BY agent_start_date DESC)
    AND start_execution_date is not null
    AND stop_execution_date is null;
 
	;WITH JobHistData AS
	(
	  SELECT job_id
	 ,date_executed = msdb.dbo.agent_datetime(run_date, run_time)
	 ,secs_duration = run_duration/10000*3600 + run_duration%10000/100*60 + run_duration%100
	  FROM msdb.dbo.sysjobhistory
	  WHERE step_id = 0   --Job Outcome
	  AND run_status = 1  --Succeeded
	)
	,JobHistStats AS
	(
	  SELECT
	  job_id
	  ,AvgDuration = AVG(secs_duration*1.)
	  ,AvgPlus2StDev = AVG(secs_duration*1.) + 2*stdevp(secs_duration)
	  FROM JobHistData
	  WHERE date_executed >= DATEADD(day, DATEDIFF(day,'19000101',@HistoryStartDate),'19000101')
	  AND date_executed < DATEADD(day, 1 + DATEDIFF(day,'19000101',@HistoryEndDate),'19000101') GROUP BY job_id HAVING COUNT(*) >= @MinHistExecutions
	  AND AVG(secs_duration*1.) >= @MinAvgSecsDuration
	)
	INSERT INTO @LongRunningJobs(
	[JobId]
	,[JobName]
    ,[CurrentExecutionDate]
	,[ExecutionDate]
	,[HistoricalAvgDurationSecs]
	,[MinThreshholdSecs]
	)
	SELECT
	jd.job_id
	,j.name AS [JobName]
    ,crj.ExecutionDate AS CurrentExecutionDate
	,MAX(act.start_execution_date) AS [ExecutionDate]
	,AvgDuration AS [HistoricalAvgDurationSecs]
	,AvgPlus2StDev AS [MinThreshholdSecs]
	FROM JobHistData jd
   	JOIN JobHistStats jhs
		ON jd.job_id = jhs.job_id
	JOIN msdb..sysjobs j 
		ON jd.job_id = j.job_id
	JOIN @RunningJobs crj
		ON crj.jobid = jd.job_id --see note [1] above
	LEFT OUTER JOIN msdb..sysjobactivity AS act
		ON act.job_id = jd.job_id
	--AND act.stop_execution_date IS NULL
	AND act.start_execution_date IS NOT NULL
	--WHERE DATEDIFF(SS, act.start_execution_date, GETDATE()) > AvgPlus2StDev
    WHERE DATEDIFF(SS, act.start_execution_date, GETDATE()) > AvgDuration
		--AND crj.job_state = 1 --see note [2] above
	GROUP BY jd.job_id, j.[name],crj.ExecutionDate
	, AvgDuration
	, AvgPlus2StDev
	;

	SELECT @CountOfLongRunningJobs = @@ROWCOUNT;

	IF @CountOfLongRunningJobs > 0
	BEGIN

		/* Set the type of server for the email as well as the server name */ 
		/* this could be changed to use a configuration table on the server. */
		SELECT @ServerType = CASE @@SERVERNAME WHEN 'DELOLYDB12007' THEN 'DEV ETL Server'
		WHEN 'DELOLYDB12008' THEN 'UAT ETL Server'
		WHEN 'DELOLYDB12009' THEN 'Prod ETL Server'
		ELSE @@SERVERNAME
		END
		,@ServerName = @@SERVERNAME ;
		
		
		SET @Subject = @ServerType + ' ||  Long Running Job Notifications on ' + @ServerName ;
            
		SET @Message = '<html>' + '<body style="font: 12px Arial;">'
			+ '<div id="intro2" style="width:670px;">Below is a list of long running jobs on on '
			+ @ServerName + '.' + '<br><br>' ;
            
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of jobs that are running longer than expected'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>Job Name</td>'
			+ N'<td>Execution Date</td>'
			+ N'<td>Historical Avg Duration Secs</td>'
			+ N'<td>Min Threshhold Secs</td>'
			+ N'<td>Current Running Time</td>'
			+'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = [JobName]
					, ''
					, "td/@align" = 'Center'
					, td = FORMAT ([CurrentExecutionDate], 'MM/dd/yyyy hh:mm:ss tt') --FORMAT(ExecutionDate, 'd', 'en-US' )FORMAT(CAST(ExecutionDate AS DATETIME), 'MM/dd/yyy') --CONVERT(DATETIME, ExecutionDate,20)
					, ''
					, "td/@align" = 'Center'
					, td = ETLLog.Utilities.udfFormatTime([HistoricalAvgDurationSecs], 'S', '%D% Day %H% Hr %M% Min %S% Sec')
					, ''
					, "td/@align" = 'Center' --[MinThreshholdSecs]
					, td = ETLLog.Utilities.udfFormatTime([MinThreshholdSecs], 'S', '%D% Day %H% Hr %M% Min %S% Sec')
                    , ''
					, "td/@align" = 'Center' --[MinThreshholdSecs]
					, td = ETLLog.Utilities.udfFormatTime(DATEDIFF(SECOND,[CurrentExecutionDate],SYSDATETIME()), 'S', '%D% Day %H% Hr %M% Min %S% Sec')
					FROM
					@LongRunningJobs
					ORDER BY
					[JobName]
			FOR
					XML PATH('tr')
						, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;			

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

	END

	IF @Message IS NOT NULL AND @Subject IS NOT NULL AND @EmailRecipients IS NOT NULL
	BEGIN
		SELECT @SendEmail = 1
	END

	IF @SendEmail = 1
	BEGIN

		EXEC [Utilities].[uspCheckMailProfileToUse]
		@MailProfileToSearchFor = @MailProfile
		,@ProfileNameToUse = @MailProfileToUse OUTPUT;

		EXEC msdb.dbo.sp_send_dbmail  
		    @profile_name = @MailProfileToUse
		    ,@recipients = @EmailRecipients 
			--,@copy_recipients = @AdditionalRecipientsEmailAddress 
		    ,@subject = @Subject
			,@body = @Message
			,@body_format = 'HTML' 
			,@importance = 'High'
			;

	END

END
GO
/****** Object:  StoredProcedure [Logging].[LogNewExecution]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [Logging].[LogNewExecution]
(
 @ExecutionName            VARCHAR(512),     
    @StartTime                DATETIME2 = null
)
AS
BEGIN

INSERT into DBMaint.Logging.[ExecutionLog] (
    ExecutionName, 
    SQLLogin, 
    ClientNetAddress, 
    ClientHostName, 
    ClientProgramName, 
    StartTime
)
SELECT
    @ExecutionName,
    s.login_name,
    c.client_net_address,
    s.[host_name],
    s.program_name,
    ISNULL(@StartTime,SYSDATETIME())
from sys.dm_exec_sessions s
left join sys.dm_exec_connections c
on s.session_id = c.session_id
WHERE s.session_id = @@spid 

END
GO
/****** Object:  StoredProcedure [Maintenance].[AddLoginByName]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Charles Wolff
-- Create date: 07-22-2016
-- Description:	This is to replace the Add_Login_ByName stored procedure. The issue with the old one is it is dependant upon being on certain servers.
--              I am going to build this to be useful for any server.
CREATE           PROCEDURE [Maintenance].[AddLoginByName]
(
 @DBInclude NVARCHAR(MAX)
 ,@LoginName sysname
 ,@RoleMember sysname = 'db_datareader'
 ,@WithExecute BIT = 0
 ,@ViewDefinition BIT = 0
 ,@Showplan BIT = 1
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--declare working variables
DECLARE @createfunction VARCHAR(MAX)
DECLARE @sql VARCHAR(MAX)
DECLARE @rowcount INT
DECLARE @numberofrecords INT
DECLARE @databasename VARCHAR(100)
DECLARE @ErrorMessage NVARCHAR(4000)
DECLARE @RoleCheckSQL VARCHAR(MAX)


--create working tables

CREATE TABLE #PermissionDB
(
    rowid INT IDENTITY (1,1),
	databseName NVARCHAR(250),
)


TRUNCATE TABLE DBMaint.Maintenance.[DatabasePermissionsTMP]

	--Take the list of databases from @DBInclude and put them in a table.

	INSERT INTO #PermissionDB
	        ( databseName )
	SELECT * FROM dbo.fnSplitString(@DBInclude,',')


	--Loop through the table and add the login to the database

SET @numberofrecords = (SELECT MAX(rowid) FROM #PermissionDB)
SET @RowCount = (SELECT MIN(rowid) FROM #PermissionDB)
	
	SELECT @sql = ''
	
	WHILE @rowcount <= @numberofrecords
	BEGIN
	    SELECT @DatabaseName = databseName
			FROM #PermissionDB
			WHERE rowid = @RowCount


	--Insert Records into DatabasePermissionTMP

TRUNCATE TABLE DBMaint.Maintenance.[DatabasePermissionsTMP]

SELECT @RoleCheckSQL  = 'Use ' + @databasename + ';
SELECT DB_NAME() AS ''DatabaseName''
,ISNULL(c.name, ''No MemberShip Assigned'') ''RoleName''
,a.name AS ''LoginName''
FROM ' + @databasename+ '.sys.database_principals a
LEFT OUTER JOIN ' + @databasename+ '.sys.database_role_members b
ON a.principal_id = b.member_principal_id
LEFT OUTER JOIN ' + @databasename+ '.sys.database_principals c
ON b.role_principal_id = c.principal_id
AND c.type = ''R''
WHERE a.type IN (''S'',''U'',''G'')'



INSERT INTO  DBMaint.[Maintenance].[DatabasePermissionsTMP]
(DatabaseName,
RoleName,
LoginName)
EXECUTE (@RoleCheckSQL)

--SELECT * FROM DBMaint.[dbo].[DatabasePermissionsTMP]
	
	
	IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
		BEGIN
				SET @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @databasename + ')'
				RAISERROR (@ErrorMessage, 16, 1, 0, 0)
				RETURN
		END
	
	--Checks to see if the User is on the database with the specific Role you are trying to add
	IF (SELECT COUNT(*) FROM DBMaint.Maintenance.[DatabasePermissionsTMP] WHERE [DatabaseName] = @databasename AND [RoleName] = @RoleMember AND [LoginName] = @LoginName ) > 0
	BEGIN
		PRINT (@LoginName + ' Already has ' + @RoleMember + ' on the Database ' + @databasename)
		SELECT @sql = 'USE '+ @DatabaseName + ';'
	END
	ELSE
	IF (SELECT COUNT(*) FROM DBMaint.Maintenance.[DatabasePermissionsTMP] WHERE [DatabaseName] = @databasename AND [LoginName] = @LoginName AND [RoleName] = 'No Membership Assigned') >= 1 
			BEGIN
			    SELECT @sql = 'USE '+ @DatabaseName + ';'
			--exec sp_executesql @sql

			SELECT @sql = @sql +  'EXEC ' + @DatabaseName +  '.sys.sp_addrolemember N' + '''' + @RoleMember + '''' + ', N' + ''''  + @LoginName  + '''' + ';'
			
			PRINT (@LoginName + ' was on ' + @databasename + ' but wasn''t assigned a membership. It has been granted ' + @RoleMember + ' on database ' + @databasename)
			END
	ELSE
	--Checks to see if the user is on the database, if it isn't, it adds the user to the database and then adds the role
	IF (SELECT COUNT(*) FROM DBMaint.Maintenance.[DatabasePermissionsTMP] WHERE [DatabaseName] = @databasename AND [LoginName] = @LoginName ) = 0
		BEGIN
		    SELECT @sql = 'USE '+ @DatabaseName + ';'
			--exec sp_executesql @sql

			SELECT @sql = @sql +  ' CREATE USER [' + @LoginName + '] FOR LOGIN [' + @LoginName + ']; 
			EXEC ' + @DatabaseName +  '.sys.sp_addrolemember N' + '''' + @RoleMember + '''' + ', N' + ''''  + @LoginName  + '''' + ';' 

			PRINT (@LoginName + ' has been added to ' + @databasename + ' and been given ' + @RoleMember)
		END
	ELSE
	--Check to see if the user is on the database, if it is, it adds the role to the user.
	IF (SELECT COUNT(*) FROM DBMaint.Maintenance.[DatabasePermissionsTMP] WHERE [DatabaseName] = @databasename AND [LoginName] = @LoginName ) >= 1
		BEGIN
			SELECT @sql = 'USE '+ @DatabaseName + ';'
			--exec sp_executesql @sql

			SELECT @sql = @sql +  'EXEC ' + @DatabaseName +  '.sys.sp_addrolemember N' + '''' + @RoleMember + '''' + ', N' + ''''  + @LoginName  + '''' + ';'
			
			PRINT (@LoginName + ' has been granted ' + @RoleMember + ' on database ' + @databasename)
		END
	
	
	--Grant With execute permissions to the user on the database
	IF @WithExecute = 1 
	BEGIN
		SELECT @sql = @sql + '; grant execute to ' + '['  + @LoginName  + ']' + ';'
		
	END
	
	--PRINT	@sql
	--grant view definition to the database to the user name
	IF @ViewDefinition = 1 
	BEGIN
		SELECT @sql = @sql + ';USE ' +@databasename + '; grant view definition to ' + '['  + @LoginName  + ']' + ';'
		
	END
	--Grant SHOWPLAN permissions
	IF @Showplan = 1
	BEGIN
	    SELECT @sql = @sql + '; grant SHOWPLAN to ' + '['  + @LoginName  + ']' + ';'
	END

	
	EXEC (@sql)

	SET @rowcount = @rowcount + 1;
	END

END
GO
/****** Object:  StoredProcedure [Maintenance].[AddSQLAgentNotification]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 9/13/2017
-- Description:	This job will go through all SQL Agent jobs and find the ones that don't have notification set up
--				and set up notification. Please note, that the Operator Name needs to be a valid SQL Agent operator
--				or the query will fail. 
-- Change Log: 9/13/2017 - Creation Date
-- =============================================
CREATE PROCEDURE [Maintenance].[AddSQLAgentNotification] 
(
@OperatorName VARCHAR(50) = 'TaskMan'
)
AS
BEGIN

	SET NOCOUNT ON;

DECLARE @operator INT 

SET @operator = (SELECT id 
                 FROM   msdb.dbo.sysoperators 
                 WHERE  NAME = @OperatorName) 

UPDATE S 
SET    S.[notify_level_email] = 2, 
       S.[notify_email_operator_id] = @operator  
FROM   msdb.dbo.sysjobs S 
WHERE  S.[notify_level_email] = 0 
       AND S.[enabled] = 1; 
END
GO
/****** Object:  StoredProcedure [Maintenance].[ChangeDBOwnerAllDB]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 9/13/2017
-- Description:	This stored procedure will go through all of the databases and change the owner from whatever it is
--				to be owned by whatever accont is put into the input parameter. This shouldn't cause any security risks because the SA account is disabled. 
--				Also, this does not currently take into account if an application needs a different owner, 
--				if a situation like that arises, it needs to be added to the SPROC
-- ChangeLog: 9/13/2017 - Creation Date
-- =============================================

CREATE    PROCEDURE [Maintenance].[ChangeDBOwnerAllDB]
(
@Owner VARCHAR(50) = 'SA'
)
AS
BEGIN

SET NOCOUNT ON 
 
DECLARE @UserName VARCHAR(50), @DBID INT, @DBName VARCHAR(50), @sql VARCHAR(MAX)
 
SET @UserName = @Owner
 
CREATE TABLE #Databases(ID INT IDENTITY(1,1), DBName VARCHAR(50))
 
INSERT INTO #Databases 
SELECT d.[name]
FROM sys.databases AS d 
WHERE d.owner_sid <> SUSER_SID(@UserName)
AND d.name NOT IN ('master','tempdb','model','msdb','distribution')
AND d.[state] = 0 --this makes it so it only changes databases in an online state. 
AND d.is_read_only = 0
 
SET @DBID = 1
 
WHILE EXISTS (SELECT * FROM #Databases WHERE ID = @DBID)
 
BEGIN
	
	SELECT @DBName = DBName FROM #Databases WHERE ID = @DBID
	SET @sql = 'USE ' + @DBName +'
	EXEC sp_changedbowner ''' + @UserName + ''''
	
	EXEC (@sql)
	
	PRINT 'The owner of ' + @DBName + ' has been changed to ' + @UserName
	
	SET @DBID = @DBID + 1
	
END
 
DROP TABLE #Databases

END
GO
/****** Object:  StoredProcedure [Maintenance].[ChangeSqlAgentOwnerAll]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Charles Wolff
-- Create date: 9/13/2017
-- Description:	This will change the owner of all SQL Agent jobs that currently are not owned by SA
--				If the job is already owned by SA, it will leave the job alone
-- Change Log:  9/13/2017 - Creation Date
-- =============================================
CREATE   PROCEDURE [Maintenance].[ChangeSqlAgentOwnerAll] (@OwnerName VARCHAR(25) = 'SA') 
AS 
  BEGIN 
      -- SET NOCOUNT ON added to prevent extra result sets from 
      -- interfering with SELECT statements. 
      SET NOCOUNT ON; 

      DECLARE @name_holder VARCHAR(1000) 
      DECLARE my_cursor CURSOR FOR 
        SELECT [NAME] 
        FROM   msdb..sysjobs 
        WHERE  owner_sid <> SUSER_SID(@OwnerName)

      --SELECT j.name FROM msdb..sysjobs j left outer JOIN Master.dbo.syslogins l ON j.owner_sid = l.sid where l.name <> 'sa'
      OPEN my_cursor 

      FETCH NEXT FROM my_cursor INTO @name_holder 

      WHILE ( @@FETCH_STATUS <> -1 ) 
        BEGIN 
            EXEC msdb..Sp_update_job 
              @job_name = @name_holder, 
              @owner_login_name = @OwnerName 

            FETCH NEXT FROM my_cursor INTO @name_holder 
        END 

      CLOSE my_cursor 

      DEALLOCATE my_cursor 
  END
GO
/****** Object:  StoredProcedure [Maintenance].[DatabaseIntegrityCheck]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Maintenance].[DatabaseIntegrityCheck]

@Databases nvarchar(max) = NULL,
@CheckCommands nvarchar(max) = 'CHECKDB',
@PhysicalOnly nvarchar(max) = 'N',
@NoIndex nvarchar(max) = 'N',
@ExtendedLogicalChecks nvarchar(max) = 'N',
@TabLock nvarchar(max) = 'N',
@FileGroups nvarchar(max) = NULL,
@Objects nvarchar(max) = NULL,
@MaxDOP int = NULL,
@AvailabilityGroups nvarchar(max) = NULL,
@AvailabilityGroupReplicas nvarchar(max) = 'ALL',
@Updateability nvarchar(max) = 'ALL',
@TimeLimit int = NULL,
@LockTimeout int = NULL,
@LockMessageSeverity int = 16,
@DatabaseOrder nvarchar(max) = NULL,
@DatabasesInParallel nvarchar(max) = 'N',
@LogToTable nvarchar(max) = 'N',
@Execute nvarchar(max) = 'Y'

AS

BEGIN

  ----------------------------------------------------------------------------------------------------
  --// Source:  https://ola.hallengren.com                                                        //--
  --// License: https://ola.hallengren.com/license.html                                           //--
  --// GitHub:  https://github.com/olahallengren/sql-server-maintenance-solution                  //--
  --// Version: 2019-06-14 00:05:34                                                               //--
  ----------------------------------------------------------------------------------------------------

  SET NOCOUNT ON

  DECLARE @StartMessage nvarchar(max)
  DECLARE @EndMessage nvarchar(max)
  DECLARE @DatabaseMessage nvarchar(max)
  DECLARE @ErrorMessage nvarchar(max)
  DECLARE @Severity int

  DECLARE @StartTime datetime
  DECLARE @SchemaName nvarchar(max)
  DECLARE @ObjectName nvarchar(max)
  DECLARE @VersionTimestamp nvarchar(max)
  DECLARE @Parameters nvarchar(max)

  DECLARE @Version numeric(18,10)
  DECLARE @HostPlatform nvarchar(max)
  DECLARE @AmazonRDS bit

  DECLARE @QueueID int
  DECLARE @QueueStartTime datetime

  DECLARE @CurrentDBID int
  DECLARE @CurrentDatabaseName nvarchar(max)

  DECLARE @CurrentDatabaseID int
  DECLARE @CurrentUserAccess nvarchar(max)
  DECLARE @CurrentIsReadOnly bit
  DECLARE @CurrentDatabaseState nvarchar(max)
  DECLARE @CurrentInStandby bit
  DECLARE @CurrentRecoveryModel nvarchar(max)

  DECLARE @CurrentIsDatabaseAccessible bit
  DECLARE @CurrentAvailabilityGroup nvarchar(max)
  DECLARE @CurrentAvailabilityGroupRole nvarchar(max)
  DECLARE @CurrentAvailabilityGroupBackupPreference nvarchar(max)
  DECLARE @CurrentIsPreferredBackupReplica bit
  DECLARE @CurrentDatabaseMirroringRole nvarchar(max)

  DECLARE @CurrentFGID int
  DECLARE @CurrentFileGroupID int
  DECLARE @CurrentFileGroupName nvarchar(max)
  DECLARE @CurrentFileGroupExists bit

  DECLARE @CurrentOID int
  DECLARE @CurrentSchemaID int
  DECLARE @CurrentSchemaName nvarchar(max)
  DECLARE @CurrentObjectID int
  DECLARE @CurrentObjectName nvarchar(max)
  DECLARE @CurrentObjectType nvarchar(max)
  DECLARE @CurrentObjectExists bit

  DECLARE @CurrentCommand01 nvarchar(max)
  DECLARE @CurrentCommand02 nvarchar(max)
  DECLARE @CurrentCommand03 nvarchar(max)
  DECLARE @CurrentCommand04 nvarchar(max)
  DECLARE @CurrentCommand05 nvarchar(max)
  DECLARE @CurrentCommand06 nvarchar(max)
  DECLARE @CurrentCommand07 nvarchar(max)
  DECLARE @CurrentCommand08 nvarchar(max)
  DECLARE @CurrentCommand09 nvarchar(max)

  DECLARE @CurrentCommandOutput01 int
  DECLARE @CurrentCommandOutput04 int
  DECLARE @CurrentCommandOutput05 int
  DECLARE @CurrentCommandOutput08 int
  DECLARE @CurrentCommandOutput09 int

  DECLARE @CurrentCommandType01 nvarchar(max)
  DECLARE @CurrentCommandType04 nvarchar(max)
  DECLARE @CurrentCommandType05 nvarchar(max)
  DECLARE @CurrentCommandType08 nvarchar(max)
  DECLARE @CurrentCommandType09 nvarchar(max)

  DECLARE @tmpDatabases TABLE (ID int IDENTITY,
                               DatabaseName nvarchar(max),
                               DatabaseType nvarchar(max),
                               AvailabilityGroup bit,
                               [Snapshot] bit,
                               StartPosition int,
                               LastCommandTime datetime,
                               DatabaseSize bigint,
                               LastGoodCheckDbTime datetime,
                               [Order] int,
                               Selected bit,
                               Completed bit,
                               PRIMARY KEY(Selected, Completed, [Order], ID))

  DECLARE @tmpAvailabilityGroups TABLE (ID int IDENTITY PRIMARY KEY,
                                        AvailabilityGroupName nvarchar(max),
                                        StartPosition int,
                                        Selected bit)

  DECLARE @tmpDatabasesAvailabilityGroups TABLE (DatabaseName nvarchar(max),
                                                 AvailabilityGroupName nvarchar(max))

  DECLARE @tmpFileGroups TABLE (ID int IDENTITY,
                                FileGroupID int,
                                FileGroupName nvarchar(max),
                                StartPosition int,
                                [Order] int,
                                Selected bit,
                                Completed bit,
                                PRIMARY KEY(Selected, Completed, [Order], ID))

  DECLARE @tmpObjects TABLE (ID int IDENTITY,
                             SchemaID int,
                             SchemaName nvarchar(max),
                             ObjectID int,
                             ObjectName nvarchar(max),
                             ObjectType nvarchar(max),
                             StartPosition int,
                             [Order] int,
                             Selected bit,
                             Completed bit,
                             PRIMARY KEY(Selected, Completed, [Order], ID))

  DECLARE @SelectedDatabases TABLE (DatabaseName nvarchar(max),
                                    DatabaseType nvarchar(max),
                                    AvailabilityGroup nvarchar(max),
                                    StartPosition int,
                                    Selected bit)

  DECLARE @SelectedAvailabilityGroups TABLE (AvailabilityGroupName nvarchar(max),
                                             StartPosition int,
                                             Selected bit)

  DECLARE @SelectedFileGroups TABLE (DatabaseName nvarchar(max),
                                     FileGroupName nvarchar(max),
                                     StartPosition int,
                                     Selected bit)

  DECLARE @SelectedObjects TABLE (DatabaseName nvarchar(max),
                                  SchemaName nvarchar(max),
                                  ObjectName nvarchar(max),
                                  StartPosition int,
                                  Selected bit)

  DECLARE @SelectedCheckCommands TABLE (CheckCommand nvarchar(max))

  DECLARE @Error int
  DECLARE @ReturnCode int

  DECLARE @EmptyLine nvarchar(max)

  SET @Error = 0
  SET @ReturnCode = 0

  SET @EmptyLine = CHAR(9)

  SET @Version = CAST(LEFT(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)),CHARINDEX('.',CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))) - 1) + '.' + REPLACE(RIGHT(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)), LEN(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))) - CHARINDEX('.',CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)))),'.','') AS numeric(18,10))

  IF @Version >= 14
  BEGIN
    SELECT @HostPlatform = host_platform
    FROM sys.dm_os_host_info
  END
  ELSE
  BEGIN
    SET @HostPlatform = 'Windows'
  END

  SET @AmazonRDS = CASE WHEN DB_ID('rdsadmin') IS NOT NULL AND SUSER_SNAME(0x01) = 'rdsa' THEN 1 ELSE 0 END

  ----------------------------------------------------------------------------------------------------
  --// Log initial information                                                                    //--
  ----------------------------------------------------------------------------------------------------

  SET @StartTime = GETDATE()
  SET @SchemaName = (SELECT schemas.name FROM sys.schemas schemas INNER JOIN sys.objects objects ON schemas.[schema_id] = objects.[schema_id] WHERE [object_id] = @@PROCID)
  SET @ObjectName = OBJECT_NAME(@@PROCID)
  SET @VersionTimestamp = SUBSTRING(OBJECT_DEFINITION(@@PROCID),CHARINDEX('--// Version: ',OBJECT_DEFINITION(@@PROCID)) + LEN('--// Version: ') + 1, 19)

  SET @Parameters = '@Databases = ' + ISNULL('''' + REPLACE(@Databases,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @CheckCommands = ' + ISNULL('''' + REPLACE(@CheckCommands,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @PhysicalOnly = ' + ISNULL('''' + REPLACE(@PhysicalOnly,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @NoIndex = ' + ISNULL('''' + REPLACE(@NoIndex,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @ExtendedLogicalChecks = ' + ISNULL('''' + REPLACE(@ExtendedLogicalChecks,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @TabLock = ' + ISNULL('''' + REPLACE(@TabLock,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @FileGroups = ' + ISNULL('''' + REPLACE(@FileGroups,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Objects = ' + ISNULL('''' + REPLACE(@Objects,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @MaxDOP = ' + ISNULL(CAST(@MaxDOP AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @AvailabilityGroups = ' + ISNULL('''' + REPLACE(@AvailabilityGroups,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @AvailabilityGroupReplicas = ' + ISNULL('''' + REPLACE(@AvailabilityGroupReplicas,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Updateability = ' + ISNULL('''' + REPLACE(@Updateability,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @TimeLimit = ' + ISNULL(CAST(@TimeLimit AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @LockTimeout = ' + ISNULL(CAST(@LockTimeout AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @LockMessageSeverity = ' + ISNULL(CAST(@LockMessageSeverity AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @DatabaseOrder = ' + ISNULL('''' + REPLACE(@DatabaseOrder,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @DatabasesInParallel = ' + ISNULL('''' + REPLACE(@DatabasesInParallel,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @LogToTable = ' + ISNULL('''' + REPLACE(@LogToTable,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Execute = ' + ISNULL('''' + REPLACE(@Execute,'''','''''') + '''','NULL')

  SET @StartMessage = 'Date and time: ' + CONVERT(nvarchar,@StartTime,120)
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Server: ' + CAST(SERVERPROPERTY('ServerName') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Version: ' + CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Edition: ' + CAST(SERVERPROPERTY('Edition') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Platform: ' + @HostPlatform
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Procedure: ' + QUOTENAME(DB_NAME(DB_ID())) + '.' + QUOTENAME(@SchemaName) + '.' + QUOTENAME(@ObjectName)
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Parameters: ' + @Parameters
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Version: ' + @VersionTimestamp
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Source: https://ola.hallengren.com'
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  RAISERROR(@EmptyLine,10,1) WITH NOWAIT

  ----------------------------------------------------------------------------------------------------
  --// Check core requirements                                                                    //--
  ----------------------------------------------------------------------------------------------------

  IF NOT (SELECT [compatibility_level] FROM sys.databases WHERE database_id = DB_ID()) >= 90
  BEGIN
    SET @ErrorMessage = 'The database ' + QUOTENAME(DB_NAME(DB_ID())) + ' has to be in compatibility level 90 or higher.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_ansi_nulls FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'ANSI_NULLS has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_quoted_identifier FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'QUOTED_IDENTIFIER has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'P' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandExecute')
  BEGIN
    SET @ErrorMessage = 'The stored procedure CommandExecute is missing. Download https://ola.hallengren.com/scripts/CommandExecute.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'P' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandExecute' AND OBJECT_DEFINITION(objects.[object_id]) NOT LIKE '%@LockMessageSeverity%')
  BEGIN
    SET @ErrorMessage = 'The stored procedure CommandExecute needs to be updated. Download https://ola.hallengren.com/scripts/CommandExecute.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandLog')
  BEGIN
    SET @ErrorMessage = 'The table CommandLog is missing. Download https://ola.hallengren.com/scripts/CommandLog.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'Queue')
  BEGIN
    SET @ErrorMessage = 'The table Queue is missing. Download https://ola.hallengren.com/scripts/Queue.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'QueueDatabase')
  BEGIN
    SET @ErrorMessage = 'The table QueueDatabase is missing. Download https://ola.hallengren.com/scripts/QueueDatabase.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @@TRANCOUNT <> 0
  BEGIN
    SET @ErrorMessage = 'The transaction count is not 0.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ReturnCode = @Error
    GOTO Logging
  END

  ----------------------------------------------------------------------------------------------------
  --// Select databases                                                                           //--
  ----------------------------------------------------------------------------------------------------

  SET @Databases = REPLACE(@Databases, CHAR(10), '')
  SET @Databases = REPLACE(@Databases, CHAR(13), '')

  WHILE CHARINDEX(', ',@Databases) > 0 SET @Databases = REPLACE(@Databases,', ',',')
  WHILE CHARINDEX(' ,',@Databases) > 0 SET @Databases = REPLACE(@Databases,' ,',',')

  SET @Databases = LTRIM(RTRIM(@Databases));

  WITH Databases1 (StartPosition, EndPosition, DatabaseItem) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Databases, 1), 0), LEN(@Databases) + 1) AS EndPosition,
         SUBSTRING(@Databases, 1, ISNULL(NULLIF(CHARINDEX(',', @Databases, 1), 0), LEN(@Databases) + 1) - 1) AS DatabaseItem
  WHERE @Databases IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Databases, EndPosition + 1), 0), LEN(@Databases) + 1) AS EndPosition,
         SUBSTRING(@Databases, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @Databases, EndPosition + 1), 0), LEN(@Databases) + 1) - EndPosition - 1) AS DatabaseItem
  FROM Databases1
  WHERE EndPosition < LEN(@Databases) + 1
  ),
  Databases2 (DatabaseItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN DatabaseItem LIKE '-%' THEN RIGHT(DatabaseItem,LEN(DatabaseItem) - 1) ELSE DatabaseItem END AS DatabaseItem,
         StartPosition,
         CASE WHEN DatabaseItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
  FROM Databases1
  ),
  Databases3 (DatabaseItem, DatabaseType, AvailabilityGroup, StartPosition, Selected) AS
  (
  SELECT CASE WHEN DatabaseItem IN('ALL_DATABASES','SYSTEM_DATABASES','USER_DATABASES','AVAILABILITY_GROUP_DATABASES') THEN '%' ELSE DatabaseItem END AS DatabaseItem,
         CASE WHEN DatabaseItem = 'SYSTEM_DATABASES' THEN 'S' WHEN DatabaseItem = 'USER_DATABASES' THEN 'U' ELSE NULL END AS DatabaseType,
         CASE WHEN DatabaseItem = 'AVAILABILITY_GROUP_DATABASES' THEN 1 ELSE NULL END AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases2
  ),
  Databases4 (DatabaseName, DatabaseType, AvailabilityGroup, StartPosition, Selected) AS
  (
  SELECT CASE WHEN LEFT(DatabaseItem,1) = '[' AND RIGHT(DatabaseItem,1) = ']' THEN PARSENAME(DatabaseItem,1) ELSE DatabaseItem END AS DatabaseItem,
         DatabaseType,
         AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases3
  )
  INSERT INTO @SelectedDatabases (DatabaseName, DatabaseType, AvailabilityGroup, StartPosition, Selected)
  SELECT DatabaseName,
         DatabaseType,
         AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases4
  OPTION (MAXRECURSION 0)

  IF @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
  BEGIN
    INSERT INTO @tmpAvailabilityGroups (AvailabilityGroupName, Selected)
    SELECT name AS AvailabilityGroupName,
           0 AS Selected
    FROM sys.availability_groups

    INSERT INTO @tmpDatabasesAvailabilityGroups (DatabaseName, AvailabilityGroupName)
    SELECT databases.name,
           availability_groups.name
    FROM sys.databases databases
    INNER JOIN sys.dm_hadr_availability_replica_states dm_hadr_availability_replica_states ON databases.replica_id = dm_hadr_availability_replica_states.replica_id
    INNER JOIN sys.availability_groups availability_groups ON dm_hadr_availability_replica_states.group_id = availability_groups.group_id
  END

  INSERT INTO @tmpDatabases (DatabaseName, DatabaseType, AvailabilityGroup, [Snapshot], [Order], Selected, Completed)
  SELECT [name] AS DatabaseName,
         CASE WHEN name IN('master','msdb','model') OR is_distributor = 1 THEN 'S' ELSE 'U' END AS DatabaseType,
         NULL AS AvailabilityGroup,
         CASE WHEN source_database_id IS NOT NULL THEN 1 ELSE 0 END AS [Snapshot],
         0 AS [Order],
         0 AS Selected,
         0 AS Completed
  FROM sys.databases
  ORDER BY [name] ASC

  UPDATE tmpDatabases
  SET AvailabilityGroup = CASE WHEN EXISTS (SELECT * FROM @tmpDatabasesAvailabilityGroups WHERE DatabaseName = tmpDatabases.DatabaseName) THEN 1 ELSE 0 END
  FROM @tmpDatabases tmpDatabases

  UPDATE tmpDatabases
  SET tmpDatabases.Selected = SelectedDatabases.Selected
  FROM @tmpDatabases tmpDatabases
  INNER JOIN @SelectedDatabases SelectedDatabases
  ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
  AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
  AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
  AND NOT ((tmpDatabases.DatabaseName = 'tempdb' OR tmpDatabases.[Snapshot] = 1) AND tmpDatabases.DatabaseName <> SelectedDatabases.DatabaseName)
  WHERE SelectedDatabases.Selected = 1

  UPDATE tmpDatabases
  SET tmpDatabases.Selected = SelectedDatabases.Selected
  FROM @tmpDatabases tmpDatabases
  INNER JOIN @SelectedDatabases SelectedDatabases
  ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
  AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
  AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
  AND NOT ((tmpDatabases.DatabaseName = 'tempdb' OR tmpDatabases.[Snapshot] = 1) AND tmpDatabases.DatabaseName <> SelectedDatabases.DatabaseName)
  WHERE SelectedDatabases.Selected = 0

  UPDATE tmpDatabases
  SET tmpDatabases.StartPosition = SelectedDatabases2.StartPosition
  FROM @tmpDatabases tmpDatabases
  INNER JOIN (SELECT tmpDatabases.DatabaseName, MIN(SelectedDatabases.StartPosition) AS StartPosition
              FROM @tmpDatabases tmpDatabases
              INNER JOIN @SelectedDatabases SelectedDatabases
              ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
              AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
              AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
              WHERE SelectedDatabases.Selected = 1
              GROUP BY tmpDatabases.DatabaseName) SelectedDatabases2
  ON tmpDatabases.DatabaseName = SelectedDatabases2.DatabaseName

  IF @Databases IS NOT NULL AND (NOT EXISTS(SELECT * FROM @SelectedDatabases) OR EXISTS(SELECT * FROM @SelectedDatabases WHERE DatabaseName IS NULL OR DatabaseName = ''))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Databases is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Select availability groups                                                                 //--
  ----------------------------------------------------------------------------------------------------

  IF @AvailabilityGroups IS NOT NULL AND @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
  BEGIN

    SET @AvailabilityGroups = REPLACE(@AvailabilityGroups, CHAR(10), '')
    SET @AvailabilityGroups = REPLACE(@AvailabilityGroups, CHAR(13), '')

    WHILE CHARINDEX(', ',@AvailabilityGroups) > 0 SET @AvailabilityGroups = REPLACE(@AvailabilityGroups,', ',',')
    WHILE CHARINDEX(' ,',@AvailabilityGroups) > 0 SET @AvailabilityGroups = REPLACE(@AvailabilityGroups,' ,',',')

    SET @AvailabilityGroups = LTRIM(RTRIM(@AvailabilityGroups));

    WITH AvailabilityGroups1 (StartPosition, EndPosition, AvailabilityGroupItem) AS
    (
    SELECT 1 AS StartPosition,
           ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, 1), 0), LEN(@AvailabilityGroups) + 1) AS EndPosition,
           SUBSTRING(@AvailabilityGroups, 1, ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, 1), 0), LEN(@AvailabilityGroups) + 1) - 1) AS AvailabilityGroupItem
    WHERE @AvailabilityGroups IS NOT NULL
    UNION ALL
    SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
           ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, EndPosition + 1), 0), LEN(@AvailabilityGroups) + 1) AS EndPosition,
           SUBSTRING(@AvailabilityGroups, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, EndPosition + 1), 0), LEN(@AvailabilityGroups) + 1) - EndPosition - 1) AS AvailabilityGroupItem
    FROM AvailabilityGroups1
    WHERE EndPosition < LEN(@AvailabilityGroups) + 1
    ),
    AvailabilityGroups2 (AvailabilityGroupItem, StartPosition, Selected) AS
    (
    SELECT CASE WHEN AvailabilityGroupItem LIKE '-%' THEN RIGHT(AvailabilityGroupItem,LEN(AvailabilityGroupItem) - 1) ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           CASE WHEN AvailabilityGroupItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
    FROM AvailabilityGroups1
    ),
    AvailabilityGroups3 (AvailabilityGroupItem, StartPosition, Selected) AS
    (
    SELECT CASE WHEN AvailabilityGroupItem = 'ALL_AVAILABILITY_GROUPS' THEN '%' ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           Selected
    FROM AvailabilityGroups2
    ),
    AvailabilityGroups4 (AvailabilityGroupName, StartPosition, Selected) AS
    (
    SELECT CASE WHEN LEFT(AvailabilityGroupItem,1) = '[' AND RIGHT(AvailabilityGroupItem,1) = ']' THEN PARSENAME(AvailabilityGroupItem,1) ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           Selected
    FROM AvailabilityGroups3
    )
    INSERT INTO @SelectedAvailabilityGroups (AvailabilityGroupName, StartPosition, Selected)
    SELECT AvailabilityGroupName, StartPosition, Selected
    FROM AvailabilityGroups4
    OPTION (MAXRECURSION 0)

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.Selected = SelectedAvailabilityGroups.Selected
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
    ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
    WHERE SelectedAvailabilityGroups.Selected = 1

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.Selected = SelectedAvailabilityGroups.Selected
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
    ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
    WHERE SelectedAvailabilityGroups.Selected = 0

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.StartPosition = SelectedAvailabilityGroups2.StartPosition
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN (SELECT tmpAvailabilityGroups.AvailabilityGroupName, MIN(SelectedAvailabilityGroups.StartPosition) AS StartPosition
                FROM @tmpAvailabilityGroups tmpAvailabilityGroups
                INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
                ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
                WHERE SelectedAvailabilityGroups.Selected = 1
                GROUP BY tmpAvailabilityGroups.AvailabilityGroupName) SelectedAvailabilityGroups2
    ON tmpAvailabilityGroups.AvailabilityGroupName = SelectedAvailabilityGroups2.AvailabilityGroupName

    UPDATE tmpDatabases
    SET tmpDatabases.StartPosition = tmpAvailabilityGroups.StartPosition,
        tmpDatabases.Selected = 1
    FROM @tmpDatabases tmpDatabases
    INNER JOIN @tmpDatabasesAvailabilityGroups tmpDatabasesAvailabilityGroups ON tmpDatabases.DatabaseName = tmpDatabasesAvailabilityGroups.DatabaseName
    INNER JOIN @tmpAvailabilityGroups tmpAvailabilityGroups ON tmpDatabasesAvailabilityGroups.AvailabilityGroupName = tmpAvailabilityGroups.AvailabilityGroupName
    WHERE tmpAvailabilityGroups.Selected = 1

  END

  IF @AvailabilityGroups IS NOT NULL AND (NOT EXISTS(SELECT * FROM @SelectedAvailabilityGroups) OR EXISTS(SELECT * FROM @SelectedAvailabilityGroups WHERE AvailabilityGroupName IS NULL OR AvailabilityGroupName = '') OR @Version < 11 OR SERVERPROPERTY('IsHadrEnabled') = 0)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @AvailabilityGroups is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF (@Databases IS NULL AND @AvailabilityGroups IS NULL)
  BEGIN
    SET @ErrorMessage = 'You need to specify one of the parameters @Databases and @AvailabilityGroups.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF (@Databases IS NOT NULL AND @AvailabilityGroups IS NOT NULL)
  BEGIN
    SET @ErrorMessage = 'You can only specify one of the parameters @Databases and @AvailabilityGroups.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Select filegroups                                                                          //--
  ----------------------------------------------------------------------------------------------------

  SET @FileGroups = REPLACE(@FileGroups, CHAR(10), '')
  SET @FileGroups = REPLACE(@FileGroups, CHAR(13), '')

  WHILE CHARINDEX(', ',@FileGroups) > 0 SET @FileGroups = REPLACE(@FileGroups,', ',',')
  WHILE CHARINDEX(' ,',@FileGroups) > 0 SET @FileGroups = REPLACE(@FileGroups,' ,',',')

  SET @FileGroups = LTRIM(RTRIM(@FileGroups));

  WITH FileGroups1 (StartPosition, EndPosition, FileGroupItem) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FileGroups, 1), 0), LEN(@FileGroups) + 1) AS EndPosition,
         SUBSTRING(@FileGroups, 1, ISNULL(NULLIF(CHARINDEX(',', @FileGroups, 1), 0), LEN(@FileGroups) + 1) - 1) AS FileGroupItem
  WHERE @FileGroups IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FileGroups, EndPosition + 1), 0), LEN(@FileGroups) + 1) AS EndPosition,
         SUBSTRING(@FileGroups, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @FileGroups, EndPosition + 1), 0), LEN(@FileGroups) + 1) - EndPosition - 1) AS FileGroupItem
  FROM FileGroups1
  WHERE EndPosition < LEN(@FileGroups) + 1
  ),
  FileGroups2 (FileGroupItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN FileGroupItem LIKE '-%' THEN RIGHT(FileGroupItem,LEN(FileGroupItem) - 1) ELSE FileGroupItem END AS FileGroupItem,
         StartPosition,
         CASE WHEN FileGroupItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
  FROM FileGroups1
  ),
  FileGroups3 (FileGroupItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN FileGroupItem = 'ALL_FILEGROUPS' THEN '%.%' ELSE FileGroupItem END AS FileGroupItem,
         StartPosition,
         Selected
  FROM FileGroups2
  ),
  FileGroups4 (DatabaseName, FileGroupName, StartPosition, Selected) AS
  (
  SELECT CASE WHEN PARSENAME(FileGroupItem,4) IS NULL AND PARSENAME(FileGroupItem,3) IS NULL THEN PARSENAME(FileGroupItem,2) ELSE NULL END AS DatabaseName,
         CASE WHEN PARSENAME(FileGroupItem,4) IS NULL AND PARSENAME(FileGroupItem,3) IS NULL THEN PARSENAME(FileGroupItem,1) ELSE NULL END AS FileGroupName,
         StartPosition,
         Selected
  FROM FileGroups3
  )
  INSERT INTO @SelectedFileGroups (DatabaseName, FileGroupName, StartPosition, Selected)
  SELECT DatabaseName, FileGroupName, StartPosition, Selected
  FROM FileGroups4
  OPTION (MAXRECURSION 0)

  ----------------------------------------------------------------------------------------------------
  --// Select objects                                                                             //--
  ----------------------------------------------------------------------------------------------------

  SET @Objects = REPLACE(@Objects, CHAR(10), '')
  SET @Objects = REPLACE(@Objects, CHAR(13), '')

  WHILE CHARINDEX(', ',@Objects) > 0 SET @Objects = REPLACE(@Objects,', ',',')
  WHILE CHARINDEX(' ,',@Objects) > 0 SET @Objects = REPLACE(@Objects,' ,',',')

  SET @Objects = LTRIM(RTRIM(@Objects));

  WITH Objects1 (StartPosition, EndPosition, ObjectItem) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Objects, 1), 0), LEN(@Objects) + 1) AS EndPosition,
         SUBSTRING(@Objects, 1, ISNULL(NULLIF(CHARINDEX(',', @Objects, 1), 0), LEN(@Objects) + 1) - 1) AS ObjectItem
  WHERE @Objects IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Objects, EndPosition + 1), 0), LEN(@Objects) + 1) AS EndPosition,
         SUBSTRING(@Objects, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @Objects, EndPosition + 1), 0), LEN(@Objects) + 1) - EndPosition - 1) AS ObjectItem
  FROM Objects1
  WHERE EndPosition < LEN(@Objects) + 1
  ),
  Objects2 (ObjectItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN ObjectItem LIKE '-%' THEN RIGHT(ObjectItem,LEN(ObjectItem) - 1) ELSE ObjectItem END AS ObjectItem,
          StartPosition,
         CASE WHEN ObjectItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
  FROM Objects1
  ),
  Objects3 (ObjectItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN ObjectItem = 'ALL_OBJECTS' THEN '%.%.%' ELSE ObjectItem END AS ObjectItem,
         StartPosition,
         Selected
  FROM Objects2
  ),
  Objects4 (DatabaseName, SchemaName, ObjectName, StartPosition, Selected) AS
  (
  SELECT CASE WHEN PARSENAME(ObjectItem,4) IS NULL THEN PARSENAME(ObjectItem,3) ELSE NULL END AS DatabaseName,
         CASE WHEN PARSENAME(ObjectItem,4) IS NULL THEN PARSENAME(ObjectItem,2) ELSE NULL END AS SchemaName,
         CASE WHEN PARSENAME(ObjectItem,4) IS NULL THEN PARSENAME(ObjectItem,1) ELSE NULL END AS ObjectName,
         StartPosition,
         Selected
  FROM Objects3
  )
  INSERT INTO @SelectedObjects (DatabaseName, SchemaName, ObjectName, StartPosition, Selected)
  SELECT DatabaseName, SchemaName, ObjectName, StartPosition, Selected
  FROM Objects4
  OPTION (MAXRECURSION 0);

  ----------------------------------------------------------------------------------------------------
  --// Select check commands                                                                      //--
  ----------------------------------------------------------------------------------------------------

  WITH CheckCommands (StartPosition, EndPosition, CheckCommand) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @CheckCommands, 1), 0), LEN(@CheckCommands) + 1) AS EndPosition,
         SUBSTRING(@CheckCommands, 1, ISNULL(NULLIF(CHARINDEX(',', @CheckCommands, 1), 0), LEN(@CheckCommands) + 1) - 1) AS CheckCommand
  WHERE @CheckCommands IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @CheckCommands, EndPosition + 1), 0), LEN(@CheckCommands) + 1) AS EndPosition,
         SUBSTRING(@CheckCommands, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @CheckCommands, EndPosition + 1), 0), LEN(@CheckCommands) + 1) - EndPosition - 1) AS CheckCommand
  FROM CheckCommands
  WHERE EndPosition < LEN(@CheckCommands) + 1
  )
  INSERT INTO @SelectedCheckCommands (CheckCommand)
  SELECT CheckCommand
  FROM CheckCommands
  OPTION (MAXRECURSION 0)

  ----------------------------------------------------------------------------------------------------
  --// Check input parameters                                                                     //--
  ----------------------------------------------------------------------------------------------------

  IF EXISTS (SELECT * FROM @SelectedCheckCommands WHERE CheckCommand NOT IN('CHECKDB','CHECKFILEGROUP','CHECKALLOC','CHECKTABLE','CHECKCATALOG')) OR EXISTS (SELECT * FROM @SelectedCheckCommands GROUP BY CheckCommand HAVING COUNT(*) > 1) OR NOT EXISTS (SELECT * FROM @SelectedCheckCommands) OR (EXISTS (SELECT * FROM @SelectedCheckCommands WHERE CheckCommand IN('CHECKDB')) AND EXISTS (SELECT CheckCommand FROM @SelectedCheckCommands WHERE CheckCommand IN('CHECKFILEGROUP','CHECKALLOC','CHECKTABLE','CHECKCATALOG'))) OR (EXISTS (SELECT * FROM @SelectedCheckCommands WHERE CheckCommand IN('CHECKFILEGROUP')) AND EXISTS (SELECT CheckCommand FROM @SelectedCheckCommands WHERE CheckCommand IN('CHECKALLOC','CHECKTABLE')))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @CheckCommands is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @PhysicalOnly NOT IN ('Y','N') OR @PhysicalOnly IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @PhysicalOnly is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @NoIndex NOT IN ('Y','N') OR @NoIndex IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @NoIndex is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @ExtendedLogicalChecks NOT IN ('Y','N') OR @ExtendedLogicalChecks IS NULL OR (@ExtendedLogicalChecks = 'Y' AND NOT @Version >= 10) OR (@PhysicalOnly = 'Y' AND @ExtendedLogicalChecks = 'Y')
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @ExtendedLogicalChecks is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @TabLock NOT IN ('Y','N') OR @TabLock IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @TabLock is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS(SELECT * FROM @SelectedFileGroups WHERE DatabaseName IS NULL OR FileGroupName IS NULL) OR (@FileGroups IS NOT NULL AND NOT EXISTS(SELECT * FROM @SelectedFileGroups)) OR (@FileGroups IS NOT NULL AND NOT EXISTS (SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKFILEGROUP'))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FileGroups is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS(SELECT * FROM @SelectedObjects WHERE DatabaseName IS NULL OR SchemaName IS NULL OR ObjectName IS NULL) OR (@Objects IS NOT NULL AND NOT EXISTS(SELECT * FROM @SelectedObjects)) OR (@Objects IS NOT NULL AND NOT EXISTS (SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKTABLE'))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Objects is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @MaxDOP < 0 OR @MaxDOP > 64 OR (@MaxDOP IS NOT NULL AND NOT (@Version >= 12.050000 OR SERVERPROPERTY('EngineEdition') IN (5, 8)))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @MaxDOP is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @AvailabilityGroupReplicas NOT IN('ALL','PRIMARY','SECONDARY','PREFERRED_BACKUP_REPLICA') OR @AvailabilityGroupReplicas IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @AvailabilityGroupReplicas is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Updateability NOT IN('READ_ONLY','READ_WRITE','ALL') OR @Updateability IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Updateability is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @TimeLimit < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @TimeLimit is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LockTimeout < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LockTimeout is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LockMessageSeverity NOT IN(10,16)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LockMessageSeverity is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabaseOrder NOT IN('DATABASE_NAME_ASC','DATABASE_NAME_DESC','DATABASE_SIZE_ASC','DATABASE_SIZE_DESC','DATABASE_LAST_GOOD_CHECK_ASC','DATABASE_LAST_GOOD_CHECK_DESC','REPLICA_LAST_GOOD_CHECK_ASC','REPLICA_LAST_GOOD_CHECK_DESC') OR (@DatabaseOrder IN('DATABASE_LAST_GOOD_CHECK_ASC','DATABASE_LAST_GOOD_CHECK_DESC') AND NOT ((@Version >= 12.06024 AND @Version < 13) OR (@Version >= 13.05026 AND @Version < 14) OR @Version >= 14.0302916)) OR (@DatabaseOrder IN('REPLICA_LAST_GOOD_CHECK_ASC','REPLICA_LAST_GOOD_CHECK_DESC') AND @LogToTable = 'N') OR (@DatabaseOrder IN('DATABASE_LAST_GOOD_CHECK_ASC','DATABASE_LAST_GOOD_CHECK_DESC','REPLICA_LAST_GOOD_CHECK_ASC','REPLICA_LAST_GOOD_CHECK_DESC') AND @CheckCommands <> 'CHECKDB') OR (@DatabaseOrder IS NOT NULL AND SERVERPROPERTY('EngineEdition') = 5)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @DatabaseOrder is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel NOT IN('Y','N') OR @DatabasesInParallel IS NULL OR (@DatabasesInParallel = 'Y' AND SERVERPROPERTY('EngineEdition') = 5)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @DatabasesInParallel is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable NOT IN('Y','N') OR @LogToTable IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LogToTable is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Execute NOT IN('Y','N') OR @Execute IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Execute is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ErrorMessage = 'The documentation is available at https://ola.hallengren.com/sql-server-integrity-check.html.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
    SET @ReturnCode = @Error
    GOTO Logging
  END

  ----------------------------------------------------------------------------------------------------
  --// Check that selected databases and availability groups exist                                //--
  ----------------------------------------------------------------------------------------------------

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedDatabases
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases in the @Databases parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedFileGroups
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases in the @FileGroups parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedObjects
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases in the @Objects parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(AvailabilityGroupName) + ', '
  FROM @SelectedAvailabilityGroups
  WHERE AvailabilityGroupName NOT LIKE '%[%]%'
  AND AvailabilityGroupName NOT IN (SELECT AvailabilityGroupName FROM @tmpAvailabilityGroups)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following availability groups do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedFileGroups
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName IN (SELECT DatabaseName FROM @tmpDatabases)
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases WHERE Selected = 1)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases have been selected in the @FileGroups parameter, but not in the @Databases or @AvailabilityGroups parameters: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedObjects
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName IN (SELECT DatabaseName FROM @tmpDatabases)
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases WHERE Selected = 1)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases have been selected in the @Objects parameter, but not in the @Databases or @AvailabilityGroups parameters: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Check @@SERVERNAME                                                                         //--
  ----------------------------------------------------------------------------------------------------

  IF @@SERVERNAME <> CAST(SERVERPROPERTY('ServerName') AS nvarchar(max)) AND SERVERPROPERTY('IsHadrEnabled') = 1
  BEGIN
    SET @ErrorMessage = 'The @@SERVERNAME does not match SERVERPROPERTY(''ServerName''). See ' + CASE WHEN SERVERPROPERTY('IsClustered') = 0 THEN 'https://docs.microsoft.com/en-us/sql/database-engine/install-windows/rename-a-computer-that-hosts-a-stand-alone-instance-of-sql-server' WHEN SERVERPROPERTY('IsClustered') = 1 THEN 'https://docs.microsoft.com/en-us/sql/sql-server/failover-clusters/install/rename-a-sql-server-failover-cluster-instance' END + '.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Update database order                                                                      //--
  ----------------------------------------------------------------------------------------------------

  IF @DatabaseOrder IN('DATABASE_SIZE_ASC','DATABASE_SIZE_DESC')
  BEGIN
    UPDATE tmpDatabases
    SET DatabaseSize = (SELECT SUM(size) FROM sys.master_files WHERE [type] = 0 AND database_id = DB_ID(tmpDatabases.DatabaseName))
    FROM @tmpDatabases tmpDatabases
  END

  IF @DatabaseOrder IN('DATABASE_LAST_GOOD_CHECK_ASC','DATABASE_LAST_GOOD_CHECK_DESC')
  BEGIN
    UPDATE tmpDatabases
    SET LastGoodCheckDbTime = NULLIF(CAST(DATABASEPROPERTYEX (DatabaseName,'LastGoodCheckDbTime') AS datetime),'1900-01-01 00:00:00.000')
    FROM @tmpDatabases tmpDatabases
  END

  IF @DatabaseOrder IN('REPLICA_LAST_GOOD_CHECK_ASC','REPLICA_LAST_GOOD_CHECK_DESC')
  BEGIN
    UPDATE tmpDatabases
    SET LastCommandTime = MaxStartTime
    FROM @tmpDatabases tmpDatabases
    INNER JOIN (SELECT DatabaseName, MAX(StartTime) AS MaxStartTime
                FROM dbo.CommandLog
                WHERE CommandType = 'DBCC_CHECKDB'
                AND ErrorNumber = 0
                GROUP BY DatabaseName) CommandLog
    ON tmpDatabases.DatabaseName = CommandLog.DatabaseName COLLATE DATABASE_DEFAULT
  END

  IF @DatabaseOrder IS NULL
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY StartPosition ASC, DatabaseName ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_NAME_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseName ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_NAME_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseName DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_SIZE_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseSize ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_SIZE_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseSize DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_LAST_GOOD_CHECK_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY LastGoodCheckDbTime ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_LAST_GOOD_CHECK_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY LastGoodCheckDbTime DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'REPLICA_LAST_GOOD_CHECK_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY LastCommandTime ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'REPLICA_LAST_GOOD_CHECK_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY LastCommandTime DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END

  ----------------------------------------------------------------------------------------------------
  --// Update the queue                                                                           //--
  ----------------------------------------------------------------------------------------------------

  IF @DatabasesInParallel = 'Y'
  BEGIN

    BEGIN TRY

      SELECT @QueueID = QueueID
      FROM dbo.[Queue]
      WHERE SchemaName = @SchemaName
      AND ObjectName = @ObjectName
      AND [Parameters] = @Parameters

      IF @QueueID IS NULL
      BEGIN
        BEGIN TRANSACTION

        SELECT @QueueID = QueueID
        FROM dbo.[Queue] WITH (UPDLOCK, TABLOCK)
        WHERE SchemaName = @SchemaName
        AND ObjectName = @ObjectName
        AND [Parameters] = @Parameters

        IF @QueueID IS NULL
        BEGIN
          INSERT INTO dbo.[Queue] (SchemaName, ObjectName, [Parameters])
          SELECT @SchemaName, @ObjectName, @Parameters

          SET @QueueID = SCOPE_IDENTITY()
        END

        COMMIT TRANSACTION
      END

      BEGIN TRANSACTION

      UPDATE [Queue]
      SET QueueStartTime = GETDATE(),
          SessionID = @@SPID,
          RequestID = (SELECT request_id FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          RequestStartTime = (SELECT start_time FROM sys.dm_exec_requests WHERE session_id = @@SPID)
      FROM dbo.[Queue] [Queue]
      WHERE QueueID = @QueueID
      AND NOT EXISTS (SELECT *
                      FROM sys.dm_exec_requests
                      WHERE session_id = [Queue].SessionID
                      AND request_id = [Queue].RequestID
                      AND start_time = [Queue].RequestStartTime)
      AND NOT EXISTS (SELECT *
                      FROM dbo.QueueDatabase QueueDatabase
                      INNER JOIN sys.dm_exec_requests ON QueueDatabase.SessionID = session_id AND QueueDatabase.RequestID = request_id AND QueueDatabase.RequestStartTime = start_time
                      WHERE QueueDatabase.QueueID = @QueueID)

      IF @@ROWCOUNT = 1
      BEGIN
        INSERT INTO dbo.QueueDatabase (QueueID, DatabaseName)
        SELECT @QueueID AS QueueID,
               DatabaseName
        FROM @tmpDatabases tmpDatabases
        WHERE Selected = 1
        AND NOT EXISTS (SELECT * FROM dbo.QueueDatabase WHERE DatabaseName = tmpDatabases.DatabaseName AND QueueID = @QueueID)

        DELETE QueueDatabase
        FROM dbo.QueueDatabase QueueDatabase
        WHERE QueueID = @QueueID
        AND NOT EXISTS (SELECT * FROM @tmpDatabases tmpDatabases WHERE DatabaseName = QueueDatabase.DatabaseName AND Selected = 1)

        UPDATE QueueDatabase
        SET DatabaseOrder = tmpDatabases.[Order]
        FROM dbo.QueueDatabase QueueDatabase
        INNER JOIN @tmpDatabases tmpDatabases ON QueueDatabase.DatabaseName = tmpDatabases.DatabaseName
        WHERE QueueID = @QueueID
      END

      COMMIT TRANSACTION

      SELECT @QueueStartTime = QueueStartTime
      FROM dbo.[Queue]
      WHERE QueueID = @QueueID

    END TRY

    BEGIN CATCH
      IF XACT_STATE() <> 0
      BEGIN
        ROLLBACK TRANSACTION
      END
      SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'')
      RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
      RAISERROR(@EmptyLine,10,1) WITH NOWAIT
      SET @ReturnCode = ERROR_NUMBER()
      GOTO Logging
    END CATCH

  END

  ----------------------------------------------------------------------------------------------------
  --// Execute commands                                                                           //--
  ----------------------------------------------------------------------------------------------------

  WHILE (1 = 1)
  BEGIN

    IF @DatabasesInParallel = 'Y'
    BEGIN
      UPDATE QueueDatabase
      SET DatabaseStartTime = NULL,
          SessionID = NULL,
          RequestID = NULL,
          RequestStartTime = NULL
      FROM dbo.QueueDatabase QueueDatabase
      WHERE QueueID = @QueueID
      AND DatabaseStartTime IS NOT NULL
      AND DatabaseEndTime IS NULL
      AND NOT EXISTS (SELECT * FROM sys.dm_exec_requests WHERE session_id = QueueDatabase.SessionID AND request_id = QueueDatabase.RequestID AND start_time = QueueDatabase.RequestStartTime)

      UPDATE QueueDatabase
      SET DatabaseStartTime = GETDATE(),
          DatabaseEndTime = NULL,
          SessionID = @@SPID,
          RequestID = (SELECT request_id FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          RequestStartTime = (SELECT start_time FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          @CurrentDatabaseName = DatabaseName
      FROM (SELECT TOP 1 DatabaseStartTime,
                         DatabaseEndTime,
                         SessionID,
                         RequestID,
                         RequestStartTime,
                         DatabaseName
            FROM dbo.QueueDatabase
            WHERE QueueID = @QueueID
            AND (DatabaseStartTime < @QueueStartTime OR DatabaseStartTime IS NULL)
            AND NOT (DatabaseStartTime IS NOT NULL AND DatabaseEndTime IS NULL)
            ORDER BY DatabaseOrder ASC
            ) QueueDatabase
    END
    ELSE
    BEGIN
      SELECT TOP 1 @CurrentDBID = ID,
                   @CurrentDatabaseName = DatabaseName
      FROM @tmpDatabases
      WHERE Selected = 1
      AND Completed = 0
      ORDER BY [Order] ASC
    END

    IF @@ROWCOUNT = 0
    BEGIN
     BREAK
    END

    SELECT @CurrentDatabaseID = database_id,
           @CurrentUserAccess = user_access_desc,
           @CurrentIsReadOnly = is_read_only,
           @CurrentDatabaseState = state_desc,
           @CurrentInStandby = is_in_standby,
           @CurrentRecoveryModel = recovery_model_desc
    FROM sys.databases
    WHERE [name] = @CurrentDatabaseName

    IF @CurrentDatabaseState = 'ONLINE' AND SERVERPROPERTY('EngineEdition') <> 5
    BEGIN
      IF EXISTS (SELECT * FROM sys.database_recovery_status WHERE database_id = @CurrentDatabaseID AND database_guid IS NOT NULL)
      BEGIN
        SET @CurrentIsDatabaseAccessible = 1
      END
      ELSE
      BEGIN
        SET @CurrentIsDatabaseAccessible = 0
      END
    END

    IF @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
    BEGIN
      SELECT @CurrentAvailabilityGroup = availability_groups.name,
             @CurrentAvailabilityGroupRole = dm_hadr_availability_replica_states.role_desc,
             @CurrentAvailabilityGroupBackupPreference = UPPER(availability_groups.automated_backup_preference_desc)
      FROM sys.databases databases
      INNER JOIN sys.dm_hadr_availability_replica_states dm_hadr_availability_replica_states ON databases.replica_id = dm_hadr_availability_replica_states.replica_id
      INNER JOIN sys.availability_groups availability_groups ON dm_hadr_availability_replica_states.group_id = availability_groups.group_id
      WHERE databases.name = @CurrentDatabaseName
    END

    IF @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1 AND @CurrentAvailabilityGroup IS NOT NULL AND @AvailabilityGroupReplicas = 'PREFERRED_BACKUP_REPLICA'
    BEGIN
      SELECT @CurrentIsPreferredBackupReplica = sys.fn_hadr_backup_is_preferred_replica(@CurrentDatabaseName)
    END

    IF SERVERPROPERTY('EngineEdition') <> 5
    BEGIN
      SELECT @CurrentDatabaseMirroringRole = UPPER(mirroring_role_desc)
      FROM sys.database_mirroring
      WHERE database_id = @CurrentDatabaseID
    END

    SET @DatabaseMessage = 'Date and time: ' + CONVERT(nvarchar,GETDATE(),120)
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Database: ' + QUOTENAME(@CurrentDatabaseName)
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'State: ' + @CurrentDatabaseState
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Standby: ' + CASE WHEN @CurrentInStandby = 1 THEN 'Yes' ELSE 'No' END
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Updateability: ' + CASE WHEN @CurrentIsReadOnly = 1 THEN 'READ_ONLY' WHEN  @CurrentIsReadOnly = 0 THEN 'READ_WRITE' END
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'User access: ' + @CurrentUserAccess
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    IF @CurrentIsDatabaseAccessible IS NOT NULL
    BEGIN
      SET @DatabaseMessage = 'Is accessible: ' + CASE WHEN @CurrentIsDatabaseAccessible = 1 THEN 'Yes' ELSE 'No' END
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
    END

    SET @DatabaseMessage = 'Recovery model: ' + @CurrentRecoveryModel
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    IF @CurrentAvailabilityGroup IS NOT NULL
    BEGIN
      SET @DatabaseMessage =  'Availability group: ' + ISNULL(@CurrentAvailabilityGroup,'N/A')
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

      SET @DatabaseMessage = 'Availability group role: ' + ISNULL(@CurrentAvailabilityGroupRole,'N/A')
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

      IF @AvailabilityGroupReplicas = 'PREFERRED_BACKUP_REPLICA'
      BEGIN
        SET @DatabaseMessage = 'Availability group backup preference: ' + ISNULL(@CurrentAvailabilityGroupBackupPreference,'N/A')
        RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

        SET @DatabaseMessage = 'Is preferred backup replica: ' + CASE WHEN @CurrentIsPreferredBackupReplica = 1 THEN 'Yes' WHEN @CurrentIsPreferredBackupReplica = 0 THEN 'No' ELSE 'N/A' END
        RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
      END
    END

    IF @CurrentDatabaseMirroringRole IS NOT NULL
    BEGIN
      SET @DatabaseMessage = 'Database mirroring role: ' + @CurrentDatabaseMirroringRole
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
    END

    RAISERROR(@EmptyLine,10,1) WITH NOWAIT

    IF @CurrentDatabaseState = 'ONLINE'
    AND NOT (@CurrentUserAccess = 'SINGLE_USER' AND @CurrentIsDatabaseAccessible = 0)
    AND (@CurrentAvailabilityGroupRole = 'PRIMARY' OR @CurrentAvailabilityGroupRole IS NULL OR SERVERPROPERTY('EngineEdition') = 3)
    AND ((@AvailabilityGroupReplicas = 'PRIMARY' AND @CurrentAvailabilityGroupRole = 'PRIMARY') OR (@AvailabilityGroupReplicas = 'SECONDARY' AND @CurrentAvailabilityGroupRole = 'SECONDARY') OR (@AvailabilityGroupReplicas = 'PREFERRED_BACKUP_REPLICA' AND @CurrentIsPreferredBackupReplica = 1) OR @AvailabilityGroupReplicas = 'ALL' OR @CurrentAvailabilityGroupRole IS NULL)
    AND NOT (@CurrentIsReadOnly = 1 AND @Updateability = 'READ_WRITE')
    AND NOT (@CurrentIsReadOnly = 0 AND @Updateability = 'READ_ONLY')
    BEGIN

      -- Check database
      IF EXISTS(SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKDB') AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommandType01 = 'DBCC_CHECKDB'

        SET @CurrentCommand01 = ''
        IF @LockTimeout IS NOT NULL SET @CurrentCommand01 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
        SET @CurrentCommand01 = @CurrentCommand01 + 'DBCC CHECKDB (' + QUOTENAME(@CurrentDatabaseName)
        IF @NoIndex = 'Y' SET @CurrentCommand01 = @CurrentCommand01 + ', NOINDEX'
        SET @CurrentCommand01 = @CurrentCommand01 + ') WITH NO_INFOMSGS, ALL_ERRORMSGS'
        IF @PhysicalOnly = 'N' SET @CurrentCommand01 = @CurrentCommand01 + ', DATA_PURITY'
        IF @PhysicalOnly = 'Y' SET @CurrentCommand01 = @CurrentCommand01 + ', PHYSICAL_ONLY'
        IF @ExtendedLogicalChecks = 'Y' SET @CurrentCommand01 = @CurrentCommand01 + ', EXTENDED_LOGICAL_CHECKS'
        IF @TabLock = 'Y' SET @CurrentCommand01 = @CurrentCommand01 + ', TABLOCK'
        IF @MaxDOP IS NOT NULL SET @CurrentCommand01 = @CurrentCommand01 + ', MAXDOP = ' + CAST(@MaxDOP AS nvarchar)

        EXECUTE @CurrentCommandOutput01 = [dbo].[CommandExecute] @Command = @CurrentCommand01, @CommandType = @CurrentCommandType01, @Mode = 1, @DatabaseName = @CurrentDatabaseName, @LogToTable = @LogToTable, @Execute = @Execute
        SET @Error = @@ERROR
        IF @Error <> 0 SET @CurrentCommandOutput01 = @Error
        IF @CurrentCommandOutput01 <> 0 SET @ReturnCode = @CurrentCommandOutput01
      END

      -- Check filegroups
      IF EXISTS(SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKFILEGROUP') AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommand02 = 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; SELECT data_space_id AS FileGroupID, name AS FileGroupName, 0 AS [Order], 0 AS Selected, 0 AS Completed FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.filegroups filegroups WHERE [type] <> ''FX'' ORDER BY CASE WHEN filegroups.name = ''PRIMARY'' THEN 1 ELSE 0 END DESC, filegroups.name ASC'

        INSERT INTO @tmpFileGroups (FileGroupID, FileGroupName, [Order], Selected, Completed)
        EXECUTE sp_executesql @statement = @CurrentCommand02
        SET @Error = @@ERROR
        IF @Error <> 0 SET @ReturnCode = @Error

        IF @FileGroups IS NULL
        BEGIN
          UPDATE tmpFileGroups
          SET tmpFileGroups.Selected = 1
          FROM @tmpFileGroups tmpFileGroups
        END
        ELSE
        BEGIN
          UPDATE tmpFileGroups
          SET tmpFileGroups.Selected = SelectedFileGroups.Selected
          FROM @tmpFileGroups tmpFileGroups
          INNER JOIN @SelectedFileGroups SelectedFileGroups
          ON @CurrentDatabaseName LIKE REPLACE(SelectedFileGroups.DatabaseName,'_','[_]') AND tmpFileGroups.FileGroupName LIKE REPLACE(SelectedFileGroups.FileGroupName,'_','[_]')
          WHERE SelectedFileGroups.Selected = 1

          UPDATE tmpFileGroups
          SET tmpFileGroups.Selected = SelectedFileGroups.Selected
          FROM @tmpFileGroups tmpFileGroups
          INNER JOIN @SelectedFileGroups SelectedFileGroups
          ON @CurrentDatabaseName LIKE REPLACE(SelectedFileGroups.DatabaseName,'_','[_]') AND tmpFileGroups.FileGroupName LIKE REPLACE(SelectedFileGroups.FileGroupName,'_','[_]')
          WHERE SelectedFileGroups.Selected = 0

          UPDATE tmpFileGroups
          SET tmpFileGroups.StartPosition = SelectedFileGroups2.StartPosition
          FROM @tmpFileGroups tmpFileGroups
          INNER JOIN (SELECT tmpFileGroups.FileGroupName, MIN(SelectedFileGroups.StartPosition) AS StartPosition
                      FROM @tmpFileGroups tmpFileGroups
                      INNER JOIN @SelectedFileGroups SelectedFileGroups
                      ON @CurrentDatabaseName LIKE REPLACE(SelectedFileGroups.DatabaseName,'_','[_]') AND tmpFileGroups.FileGroupName LIKE REPLACE(SelectedFileGroups.FileGroupName,'_','[_]')
                      WHERE SelectedFileGroups.Selected = 1
                      GROUP BY tmpFileGroups.FileGroupName) SelectedFileGroups2
          ON tmpFileGroups.FileGroupName = SelectedFileGroups2.FileGroupName
        END;

        WITH tmpFileGroups AS (
        SELECT FileGroupName, [Order], ROW_NUMBER() OVER (ORDER BY StartPosition ASC, FileGroupName ASC) AS RowNumber
        FROM @tmpFileGroups tmpFileGroups
        WHERE Selected = 1
        )
        UPDATE tmpFileGroups
        SET [Order] = RowNumber

        SET @ErrorMessage = ''
        SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + '.' + QUOTENAME(FileGroupName) + ', '
        FROM @SelectedFileGroups SelectedFileGroups
        WHERE DatabaseName = @CurrentDatabaseName
        AND FileGroupName NOT LIKE '%[%]%'
        AND NOT EXISTS (SELECT * FROM @tmpFileGroups WHERE FileGroupName = SelectedFileGroups.FileGroupName)
        IF @@ROWCOUNT > 0
        BEGIN
          SET @ErrorMessage = 'The following file groups do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
          RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
          SET @Error = @@ERROR
          RAISERROR(@EmptyLine,10,1) WITH NOWAIT
        END

        WHILE (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
        BEGIN
          SELECT TOP 1 @CurrentFGID = ID,
                       @CurrentFileGroupID = FileGroupID,
                       @CurrentFileGroupName = FileGroupName
          FROM @tmpFileGroups
          WHERE Selected = 1
          AND Completed = 0
          ORDER BY [Order] ASC

          IF @@ROWCOUNT = 0
          BEGIN
            BREAK
          END

          -- Does the filegroup exist?
          SET @CurrentCommand03 = ''
          IF @LockTimeout IS NOT NULL SET @CurrentCommand03 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand03 = @CurrentCommand03 + 'IF EXISTS(SELECT * FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.filegroups filegroups WHERE [type] <> ''FX'' AND filegroups.data_space_id = @ParamFileGroupID AND filegroups.[name] = @ParamFileGroupName) BEGIN SET @ParamFileGroupExists = 1 END'

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand03, @params = N'@ParamFileGroupID int, @ParamFileGroupName sysname, @ParamFileGroupExists bit OUTPUT', @ParamFileGroupID = @CurrentFileGroupID, @ParamFileGroupName = @CurrentFileGroupName, @ParamFileGroupExists = @CurrentFileGroupExists OUTPUT

            IF @CurrentFileGroupExists IS NULL SET @CurrentFileGroupExists = 0
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ', ' + ' The file group ' + QUOTENAME(@CurrentFileGroupName) + ' in the database ' + QUOTENAME(@CurrentDatabaseName) + ' is locked. It could not be checked if the filegroup exists.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END
          END CATCH

          IF @CurrentFileGroupExists = 1
          BEGIN
            SET @CurrentCommandType04 = 'DBCC_CHECKFILEGROUP'

            SET @CurrentCommand04 = ''
            IF @LockTimeout IS NOT NULL SET @CurrentCommand04 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
            SET @CurrentCommand04 = @CurrentCommand04 + 'USE ' + QUOTENAME(@CurrentDatabaseName) + '; DBCC CHECKFILEGROUP (' + QUOTENAME(@CurrentFileGroupName)
            IF @NoIndex = 'Y' SET @CurrentCommand04 = @CurrentCommand04 + ', NOINDEX'
            SET @CurrentCommand04 = @CurrentCommand04 + ') WITH NO_INFOMSGS, ALL_ERRORMSGS'
            IF @PhysicalOnly = 'Y' SET @CurrentCommand04 = @CurrentCommand04 + ', PHYSICAL_ONLY'
            IF @TabLock = 'Y' SET @CurrentCommand04 = @CurrentCommand04 + ', TABLOCK'
            IF @MaxDOP IS NOT NULL SET @CurrentCommand04 = @CurrentCommand04 + ', MAXDOP = ' + CAST(@MaxDOP AS nvarchar)

            EXECUTE @CurrentCommandOutput04 = [dbo].[CommandExecute] @Command = @CurrentCommand04, @CommandType = @CurrentCommandType04, @Mode = 1, @DatabaseName = @CurrentDatabaseName, @LogToTable = @LogToTable, @Execute = @Execute
            SET @Error = @@ERROR
            IF @Error <> 0 SET @CurrentCommandOutput04 = @Error
            IF @CurrentCommandOutput04 <> 0 SET @ReturnCode = @CurrentCommandOutput04
          END

          UPDATE @tmpFileGroups
          SET Completed = 1
          WHERE Selected = 1
          AND Completed = 0
          AND ID = @CurrentFGID

          SET @CurrentFGID = NULL
          SET @CurrentFileGroupID = NULL
          SET @CurrentFileGroupName = NULL
          SET @CurrentFileGroupExists = NULL

          SET @CurrentCommand03 = NULL
          SET @CurrentCommand04 = NULL

          SET @CurrentCommandOutput04 = NULL

          SET @CurrentCommandType04 = NULL
        END
      END

      -- Check disk space allocation structures
      IF EXISTS(SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKALLOC') AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommandType05 = 'DBCC_CHECKALLOC'

        SET @CurrentCommand05 = ''
        IF @LockTimeout IS NOT NULL SET @CurrentCommand05 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
        SET @CurrentCommand05 = @CurrentCommand05 + 'DBCC CHECKALLOC (' + QUOTENAME(@CurrentDatabaseName)
        SET @CurrentCommand05 = @CurrentCommand05 + ') WITH NO_INFOMSGS, ALL_ERRORMSGS'
        IF @TabLock = 'Y' SET @CurrentCommand05 = @CurrentCommand05 + ', TABLOCK'

        EXECUTE @CurrentCommandOutput05 = [dbo].[CommandExecute] @Command = @CurrentCommand05, @CommandType = @CurrentCommandType05, @Mode = 1, @DatabaseName = @CurrentDatabaseName, @LogToTable = @LogToTable, @Execute = @Execute
        SET @Error = @@ERROR
        IF @Error <> 0 SET @CurrentCommandOutput05 = @Error
        IF @CurrentCommandOutput05 <> 0 SET @ReturnCode = @CurrentCommandOutput05
      END

      -- Check objects
      IF EXISTS(SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKTABLE') AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommand06 = 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; SELECT schemas.[schema_id] AS SchemaID, schemas.[name] AS SchemaName, objects.[object_id] AS ObjectID, objects.[name] AS ObjectName, RTRIM(objects.[type]) AS ObjectType, 0 AS [Order], 0 AS Selected, 0 AS Completed FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.objects objects INNER JOIN ' + QUOTENAME(@CurrentDatabaseName) + '.sys.schemas schemas ON objects.schema_id = schemas.schema_id LEFT OUTER JOIN ' + QUOTENAME(@CurrentDatabaseName) + '.sys.tables tables ON objects.object_id = tables.object_id WHERE objects.[type] IN(''U'',''V'') AND EXISTS(SELECT * FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.indexes indexes WHERE indexes.object_id = objects.object_id)' + CASE WHEN @Version >= 12 THEN ' AND (tables.is_memory_optimized = 0 OR is_memory_optimized IS NULL)' ELSE '' END + ' ORDER BY schemas.name ASC, objects.name ASC'

        INSERT INTO @tmpObjects (SchemaID, SchemaName, ObjectID, ObjectName, ObjectType, [Order], Selected, Completed)
        EXECUTE sp_executesql @statement = @CurrentCommand06
        SET @Error = @@ERROR
        IF @Error <> 0 SET @ReturnCode = @Error

        IF @Objects IS NULL
        BEGIN
          UPDATE tmpObjects
          SET tmpObjects.Selected = 1
          FROM @tmpObjects tmpObjects
        END
        ELSE
        BEGIN
          UPDATE tmpObjects
          SET tmpObjects.Selected = SelectedObjects.Selected
          FROM @tmpObjects tmpObjects
          INNER JOIN @SelectedObjects SelectedObjects
          ON @CurrentDatabaseName LIKE REPLACE(SelectedObjects.DatabaseName,'_','[_]') AND tmpObjects.SchemaName LIKE REPLACE(SelectedObjects.SchemaName,'_','[_]') AND tmpObjects.ObjectName LIKE REPLACE(SelectedObjects.ObjectName,'_','[_]')
          WHERE SelectedObjects.Selected = 1

          UPDATE tmpObjects
          SET tmpObjects.Selected = SelectedObjects.Selected
          FROM @tmpObjects tmpObjects
          INNER JOIN @SelectedObjects SelectedObjects
          ON @CurrentDatabaseName LIKE REPLACE(SelectedObjects.DatabaseName,'_','[_]') AND tmpObjects.SchemaName LIKE REPLACE(SelectedObjects.SchemaName,'_','[_]') AND tmpObjects.ObjectName LIKE REPLACE(SelectedObjects.ObjectName,'_','[_]')
          WHERE SelectedObjects.Selected = 0

          UPDATE tmpObjects
          SET tmpObjects.StartPosition = SelectedObjects2.StartPosition
          FROM @tmpObjects tmpObjects
          INNER JOIN (SELECT tmpObjects.SchemaName, tmpObjects.ObjectName, MIN(SelectedObjects.StartPosition) AS StartPosition
                      FROM @tmpObjects tmpObjects
                      INNER JOIN @SelectedObjects SelectedObjects
                      ON @CurrentDatabaseName LIKE REPLACE(SelectedObjects.DatabaseName,'_','[_]') AND tmpObjects.SchemaName LIKE REPLACE(SelectedObjects.SchemaName,'_','[_]') AND tmpObjects.ObjectName LIKE REPLACE(SelectedObjects.ObjectName,'_','[_]')
                      WHERE SelectedObjects.Selected = 1
                      GROUP BY tmpObjects.SchemaName, tmpObjects.ObjectName) SelectedObjects2
          ON tmpObjects.SchemaName = SelectedObjects2.SchemaName AND tmpObjects.ObjectName = SelectedObjects2.ObjectName
        END;

        WITH tmpObjects AS (
        SELECT SchemaName, ObjectName, [Order], ROW_NUMBER() OVER (ORDER BY StartPosition ASC, SchemaName ASC, ObjectName ASC) AS RowNumber
        FROM @tmpObjects tmpObjects
        WHERE Selected = 1
        )
        UPDATE tmpObjects
        SET [Order] = RowNumber

        SET @ErrorMessage = ''
        SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + '.' + QUOTENAME(SchemaName) + '.' + QUOTENAME(ObjectName) + ', '
        FROM @SelectedObjects SelectedObjects
        WHERE DatabaseName = @CurrentDatabaseName
        AND SchemaName NOT LIKE '%[%]%'
        AND ObjectName NOT LIKE '%[%]%'
        AND NOT EXISTS (SELECT * FROM @tmpObjects WHERE SchemaName = SelectedObjects.SchemaName AND ObjectName = SelectedObjects.ObjectName)
        IF @@ROWCOUNT > 0
        BEGIN
          SET @ErrorMessage = 'The following objects do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
          RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
          SET @Error = @@ERROR
          RAISERROR(@EmptyLine,10,1) WITH NOWAIT
        END

        WHILE (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
        BEGIN
          SELECT TOP 1 @CurrentOID = ID,
                       @CurrentSchemaID = SchemaID,
                       @CurrentSchemaName = SchemaName,
                       @CurrentObjectID = ObjectID,
                       @CurrentObjectName = ObjectName,
                       @CurrentObjectType = ObjectType
          FROM @tmpObjects
          WHERE Selected = 1
          AND Completed = 0
          ORDER BY [Order] ASC

          IF @@ROWCOUNT = 0
          BEGIN
            BREAK
          END

          -- Does the object exist?
          SET @CurrentCommand07 = ''
          IF @LockTimeout IS NOT NULL SET @CurrentCommand07 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand07 = @CurrentCommand07 + 'IF EXISTS(SELECT * FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.objects objects INNER JOIN ' + QUOTENAME(@CurrentDatabaseName) + '.sys.schemas schemas ON objects.schema_id = schemas.schema_id LEFT OUTER JOIN ' + QUOTENAME(@CurrentDatabaseName) + '.sys.tables tables ON objects.object_id = tables.object_id WHERE objects.[type] IN(''U'',''V'') AND EXISTS(SELECT * FROM ' + QUOTENAME(@CurrentDatabaseName) + '.sys.indexes indexes WHERE indexes.object_id = objects.object_id)' + CASE WHEN @Version >= 12 THEN ' AND (tables.is_memory_optimized = 0 OR is_memory_optimized IS NULL)' ELSE '' END + ' AND schemas.[schema_id] = @ParamSchemaID AND schemas.[name] = @ParamSchemaName AND objects.[object_id] = @ParamObjectID AND objects.[name] = @ParamObjectName AND objects.[type] = @ParamObjectType) BEGIN SET @ParamObjectExists = 1 END'

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand07, @params = N'@ParamSchemaID int, @ParamSchemaName sysname, @ParamObjectID int, @ParamObjectName sysname, @ParamObjectType sysname, @ParamObjectExists bit OUTPUT', @ParamSchemaID = @CurrentSchemaID, @ParamSchemaName = @CurrentSchemaName, @ParamObjectID = @CurrentObjectID, @ParamObjectName = @CurrentObjectName, @ParamObjectType = @CurrentObjectType, @ParamObjectExists = @CurrentObjectExists OUTPUT

            IF @CurrentObjectExists IS NULL SET @CurrentObjectExists = 0
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ', ' + 'The object ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' is locked. It could not be checked if the object exists.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END
          END CATCH

          IF @CurrentObjectExists = 1
          BEGIN
            SET @CurrentCommandType08 = 'DBCC_CHECKTABLE'

            SET @CurrentCommand08 = ''
            IF @LockTimeout IS NOT NULL SET @CurrentCommand08 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
            SET @CurrentCommand08 = @CurrentCommand08 + 'USE ' + QUOTENAME(@CurrentDatabaseName) + '; DBCC CHECKTABLE (''' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ''''
            IF @NoIndex = 'Y' SET @CurrentCommand08 = @CurrentCommand08 + ', NOINDEX'
            SET @CurrentCommand08 = @CurrentCommand08 + ') WITH NO_INFOMSGS, ALL_ERRORMSGS'
            IF @PhysicalOnly = 'N' SET @CurrentCommand08 = @CurrentCommand08 + ', DATA_PURITY'
            IF @PhysicalOnly = 'Y' SET @CurrentCommand08 = @CurrentCommand08 + ', PHYSICAL_ONLY'
            IF @ExtendedLogicalChecks = 'Y' SET @CurrentCommand08 = @CurrentCommand08 + ', EXTENDED_LOGICAL_CHECKS'
            IF @TabLock = 'Y' SET @CurrentCommand08 = @CurrentCommand08 + ', TABLOCK'
            IF @MaxDOP IS NOT NULL SET @CurrentCommand08 = @CurrentCommand08 + ', MAXDOP = ' + CAST(@MaxDOP AS nvarchar)

            EXECUTE @CurrentCommandOutput08 = [dbo].[CommandExecute] @Command = @CurrentCommand08, @CommandType = @CurrentCommandType08, @Mode = 1, @DatabaseName = @CurrentDatabaseName, @SchemaName = @CurrentSchemaName, @ObjectName = @CurrentObjectName, @ObjectType = @CurrentObjectType, @LogToTable = @LogToTable, @Execute = @Execute
            SET @Error = @@ERROR
            IF @Error <> 0 SET @CurrentCommandOutput08 = @Error
            IF @CurrentCommandOutput08 <> 0 SET @ReturnCode = @CurrentCommandOutput08
          END

          UPDATE @tmpObjects
          SET Completed = 1
          WHERE Selected = 1
          AND Completed = 0
          AND ID = @CurrentOID

          SET @CurrentOID = NULL
          SET @CurrentSchemaID = NULL
          SET @CurrentSchemaName = NULL
          SET @CurrentObjectID = NULL
          SET @CurrentObjectName = NULL
          SET @CurrentObjectType = NULL
          SET @CurrentObjectExists = NULL

          SET @CurrentCommand07 = NULL
          SET @CurrentCommand08 = NULL

          SET @CurrentCommandOutput08 = NULL

          SET @CurrentCommandType08 = NULL
        END
      END

      -- Check catalog
      IF EXISTS(SELECT * FROM @SelectedCheckCommands WHERE CheckCommand = 'CHECKCATALOG') AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommandType09 = 'DBCC_CHECKCATALOG'

        SET @CurrentCommand09 = ''
        IF @LockTimeout IS NOT NULL SET @CurrentCommand09 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
        SET @CurrentCommand09 = @CurrentCommand09 + 'DBCC CHECKCATALOG (' + QUOTENAME(@CurrentDatabaseName)
        SET @CurrentCommand09 = @CurrentCommand09 + ') WITH NO_INFOMSGS'

        EXECUTE @CurrentCommandOutput09 = [dbo].[CommandExecute] @Command = @CurrentCommand09, @CommandType = @CurrentCommandType09, @Mode = 1, @DatabaseName = @CurrentDatabaseName, @LogToTable = @LogToTable, @Execute = @Execute
        SET @Error = @@ERROR
        IF @Error <> 0 SET @CurrentCommandOutput09 = @Error
        IF @CurrentCommandOutput09 <> 0 SET @ReturnCode = @CurrentCommandOutput09
      END

    END

    IF @CurrentDatabaseState = 'SUSPECT'
    BEGIN
      SET @ErrorMessage = 'The database ' + QUOTENAME(@CurrentDatabaseName) + ' is in a SUSPECT state.'
      RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
      SET @Error = @@ERROR
      RAISERROR(@EmptyLine,10,1) WITH NOWAIT
    END

    -- Update that the database is completed
    IF @DatabasesInParallel = 'Y'
    BEGIN
      UPDATE dbo.QueueDatabase
      SET DatabaseEndTime = GETDATE()
      WHERE QueueID = @QueueID
      AND DatabaseName = @CurrentDatabaseName
    END
    ELSE
    BEGIN
      UPDATE @tmpDatabases
      SET Completed = 1
      WHERE Selected = 1
      AND Completed = 0
      AND ID = @CurrentDBID
    END

    -- Clear variables
    SET @CurrentDBID = NULL
    SET @CurrentDatabaseName = NULL

    SET @CurrentDatabaseID = NULL
    SET @CurrentUserAccess = NULL
    SET @CurrentIsReadOnly = NULL
    SET @CurrentDatabaseState = NULL
    SET @CurrentInStandby = NULL
    SET @CurrentRecoveryModel = NULL

    SET @CurrentIsDatabaseAccessible = NULL
    SET @CurrentAvailabilityGroup = NULL
    SET @CurrentAvailabilityGroupRole = NULL
    SET @CurrentAvailabilityGroupBackupPreference = NULL
    SET @CurrentIsPreferredBackupReplica = NULL
    SET @CurrentDatabaseMirroringRole = NULL

    SET @CurrentCommand01 = NULL
    SET @CurrentCommand02 = NULL
    SET @CurrentCommand05 = NULL
    SET @CurrentCommand06 = NULL
    SET @CurrentCommand09 = NULL

    SET @CurrentCommandOutput01 = NULL
    SET @CurrentCommandOutput05 = NULL
    SET @CurrentCommandOutput09 = NULL

    SET @CurrentCommandType01 = NULL
    SET @CurrentCommandType05 = NULL
    SET @CurrentCommandType09 = NULL

    DELETE FROM @tmpFileGroups
    DELETE FROM @tmpObjects

  END

  ----------------------------------------------------------------------------------------------------
  --// Log completing information                                                                 //--
  ----------------------------------------------------------------------------------------------------

  Logging:
  SET @EndMessage = 'Date and time: ' + CONVERT(nvarchar,GETDATE(),120)
  RAISERROR('%s',10,1,@EndMessage) WITH NOWAIT

  RAISERROR(@EmptyLine,10,1) WITH NOWAIT

  IF @ReturnCode <> 0
  BEGIN
    RETURN @ReturnCode
  END

  ----------------------------------------------------------------------------------------------------

END

GO
/****** Object:  StoredProcedure [Maintenance].[DatabaseIntegrityErrorReport]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Don Bulaong
-- Create date: 03/11/2020
-- Description:	This will retrieve DBCC Error records from the default SQL logs. 
--              
-- =============================================
CREATE   PROCEDURE [Maintenance].[DatabaseIntegrityErrorReport]
(
@MailProfile NVARCHAR(250) = 'Taskman'
,@EmailRecipients NVARCHAR(MAX)
)
AS
BEGIN
BEGIN TRY 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
/*Create and set working variables*/
DECLARE @ServerId INT = (SELECT S.RecordId FROM Lookup.Server S WHERE S.ServerName = @@SERVERNAME)
,@Subject AS VARCHAR(250) --Subject of the email
,@Message AS NVARCHAR(MAX) --Mesage body of the email
,@MailProfileToUse AS NVARCHAR(250)

/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100);


/*Create Working tables*/

DECLARE @IntegrityError TABLE	
(
RecordId INT IDENTITY(1,1),
DbName VARCHAR(50),
CommandText NVARCHAR(MAX),
IntegrityCheckResult NVARCHAR(MAX),
LoginName VARCHAR(80),
NumberOfErrors NVARCHAR(MAX),
NumberOfErrorsRepaired NVARCHAR(MAX),
StartTime DATETIME,
Duration NVARCHAR(MAX),
InsertedDate DATETIME
)


/*
Retrieve DBCC Error Logs
*/
DECLARE @curr_tracefilename VARCHAR(500);
DECLARE @base_tracefilename VARCHAR(500);
DECLARE @indx INT;
DECLARE @DatabaseName VARCHAR(30);
DECLARE @DBCCDate DATE;
--SET @DatabaseName = 'FamLink2_DW'
SELECT @curr_tracefilename = path
FROM sys.traces
WHERE is_default = 1;

SET @curr_tracefilename = REVERSE(@curr_tracefilename);

SELECT @indx = PATINDEX('%\%', @curr_tracefilename);

SET @curr_tracefilename = REVERSE(@curr_tracefilename);
SET @base_tracefilename = LEFT(@curr_tracefilename, LEN(@curr_tracefilename) - @indx) + '\log.trc';

SELECT TOP 1 @DBCCDate = CAST(StartTime AS DATE)  
	FROM::fn_trace_gettable(@base_tracefilename, DEFAULT)
	WHERE EventClass = 22
		AND SUBSTRING(TEXTData, 36, 12) = 'DBCC CHECKDB'
		AND CONVERT(INT, SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%found%', TEXTData) + 6, PATINDEX('%errors %', TEXTData) - PATINDEX('%found%', TEXTData) - 6)) = 0
		ORDER BY StartTime DESC


INSERT INTO @IntegrityError
(
  	DbName,
	CommandText,
	IntegrityCheckResult,
	LoginName,
	StartTime,
	NumberOfErrors,
	NumberOfErrorsRepaired,
	Duration,
	InsertedDate
)

SELECT DatabaseName as [Database]
    ,SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), 36, PATINDEX('%executed%', TEXTData) - 36) AS [Command Text]
	,SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%seconds%', TEXTData)+10, LEN(CONVERT(NVARCHAR(MAX), TEXTData))) AS [Result]
	,LoginName [Login Name]
	,StartTime [Start Time]
	,CONVERT(INT, SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%found%', TEXTData) + 6, PATINDEX('%errors %', TEXTData) - PATINDEX('%found%', TEXTData) - 6)) AS  [#Errors]
	,CONVERT(INT, SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%repaired%', TEXTData) + 9, PATINDEX('%errors.%', TEXTData) - PATINDEX('%repaired%', TEXTData) - 9)) [#Errors Repaired]
	,SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%time:%', TEXTData) + 6, PATINDEX('%hours%', TEXTData) - PATINDEX('%time:%', TEXTData) - 6) + ':' + SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%hours%', TEXTData) + 6, PATINDEX('%minutes%', TEXTData) - PATINDEX('%hours%', TEXTData) - 6) + ':' + SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%minutes%', TEXTData) + 8, PATINDEX('%seconds.%', TEXTData) - PATINDEX('%minutes%', TEXTData) - 8) AS [Duration (hh:mm:ss)]
	,GetDate()
FROM::fn_trace_gettable(@base_tracefilename, DEFAULT)
WHERE EventClass = 22
	AND SUBSTRING(TEXTData, 36, 12) = 'DBCC CHECKDB'
	AND CONVERT(INT, SUBSTRING(CONVERT(NVARCHAR(MAX), TEXTData), PATINDEX('%found%', TEXTData) + 6, PATINDEX('%errors %', TEXTData) - PATINDEX('%found%', TEXTData) - 6)) = 0
	AND CAST(StartTime AS DATE) = @DBCCDate;
	--AND DatabaseName = @DatabaseName;

/*If there are errors related to DBCC
Send an email and attached the error details*/
	
IF (SELECT COUNT(*) FROM @IntegrityError) >=1
	BEGIN
	    --SET @Subject = 'Database Integrity Check Error Report on ' + @@SERVERNAME
		SET @Subject = 'This is a TEST notification. Please IGNORE this message.'
		SET @Message =  '<html>' + '<body style="font: 12px Arial;">'
				+ '<div id="intro2" style="width:670px;">Below is a list of DBCC error(s) on '
				+ @@SERVERNAME + '.' + '<br><br>' ;
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
				+ N'Please take a moment to review the error details.'
				+ N'</div><div style="margin-top:10px;">'
				+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
				+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
				+ N'<td>Database Name</td>'
				+ N'<td>Command Text</td>'
				+ N'<td>Result</td>'
				+ N'<td>Login Name</td>'
				+ N'<td>#Errors</td>'
				+ N'<td>#Errors Repaired</td>'
				+ N'<td>Start Time</td>'
				+ N'<td>Duration (hh:mm:ss)</td>'
				+'</tr>'
				+ CAST((SELECT
						"td/@align" = 'LEFT'
						, td = [DbName]
						, ''
						, "td/@align" = 'LEFT'
						, td = [CommandText]
						, ''
						, "td/@align" = 'LEFT'
						, td = [IntegrityCheckResult]
						, ''
						, "td/@align" = 'LEFT'
						, td = [LoginName]
						, ''
						, "td/@align" = 'Center'
						, td = [NumberOfErrors]
						, ''
						, "td/@align" = 'Center'
						, td = [NumberOfErrorsRepaired]
						, ''
						, "td/@align" = 'Center'
						, td = [StartTime]
						, ''
						, "td/@align" = 'Center'
						, td = [Duration]
						FROM
						@IntegrityError
				FOR
						XML PATH('tr')
							, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;
		SET @Message = @Message
					--+ '</div>
					+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
					+ '<div style="margin-top:10px;"> '
					+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
					--+ '<a href="mailto:DELDLDQLAdmins@del.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
					+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
					+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
					+ '</body></html>'
	
	
		EXEC [Utilities].[uspCheckMailProfileToUse]
			@MailProfileToSearchFor = @MailProfile
			,@ProfileNameToUse = @MailProfileToUse OUTPUT;
	
			EXEC msdb.dbo.sp_send_dbmail  
			    @profile_name = @MailProfileToUse
			    ,@recipients = @EmailRecipients 
				--,@copy_recipients = @AdditionalRecipientsEmailAddress 
			    ,@subject = @Subject
				,@body = @Message
				,@body_format = 'HTML' 
				,@importance = 'High'
				;
	END

END TRY
BEGIN CATCH
	SELECT @ErrorSeverity = ERROR_SEVERITY()
			, @ErrorMessage = ERROR_MESSAGE()
			, @E_DatabaseName = DB_NAME()
			, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
			, @E_ErrorLineNumber = ERROR_LINE();  
		                
	                
			SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
			RAISERROR (@ErrMsg, 18, 1) ;
END CATCH

END


GO
/****** Object:  StoredProcedure [Maintenance].[FilePathCreation]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* =============================================
-- Author:		Charles Wolff
-- Create date: 12/5/2019
-- Description:	This will check and create a directory at the specified location
--Changes: 2/1/2021: Added the Debug Functionality (William Benson)
2/10/2021: Because of a change to the backup processes where Database name was removed from @FilePath the below changeses needed to happen
	1)Changed the name of @FilePath to @FilePath to check. This will Facilitate the actual checking of the directory
	2)Added a new variabl named @FilePathToCreate. As the name implies this is variable that needs to be created. 
	3)Swapped out the variables so that they are all in the correct places.



-- =============================================*/
CREATE    PROCEDURE [Maintenance].[FilePathCreation]
(
@FilePathToCheck NVARCHAR(500)
,@DirectoryName NVARCHAR(500)
,@Debug BIT = 0
)
AS
BEGIN
	
	SET NOCOUNT ON;

	/*Declare Working Tables*/
	DECLARE @DirTree TABLE (subdirectory nvarchar(500), depth INT)

	/*Declare Working Variables*/
	DECLARE @FilePathToCreate NVARCHAR(500) = @FilePathToCheck + @DirectoryName

	/* Used for the details of the exception */
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	, @Outcome VARCHAR(100)
	, @ErrorDetails VARCHAR(2000);

	BEGIN TRY

	IF @Debug = 1
	BEGIN
		PRINT '------------ Debug Inoformation Maintenance.FilePathCreation ----------------' ;
		PRINT '@FilePathToCheck: ' + ISNULL(CAST(@FilePathToCheck AS VARCHAR(100)), 'NULL') ;
		PRINT '@DirectoryName: ' + ISNULL(CAST(@DirectoryName AS VARCHAR(100)), 'NULL') ;
		PRINT '@FilePathToCreate: '+ ISNULL(CAST(@FilePathToCreate AS VARCHAR(100)), 'NULL') ;
	END

	INSERT INTO @DirTree(subdirectory, depth)
	EXEC master.sys.xp_dirtree @FilePathToCheck;

	IF @Debug = 1
	BEGIN
		SELECT * FROM @DirTree;
	END	
	
	/*If the subdirectory doesn't exist for that Database Create it*/
	IF NOT EXISTS (SELECT 1 FROM @DirTree WHERE subdirectory = @DirectoryName)
	BEGIN
		
		IF @Debug = 1
		BEGIN
			PRINT 'Creating Folder: ' + ISNULL(CAST(@DirectoryName AS VARCHAR(100)), 'NULL') ;
            PRINT 'FilePathToCreate: ' + ISNULL(CAST(@FilePathToCreate AS VARCHAR(250)), 'NULL') ;
		END		
		
		EXEC master.dbo.xp_create_subdir @FilePathToCreate

		IF @Debug = 1
		BEGIN
			PRINT 'Folder Created: ' + ISNULL(CAST(@DirectoryName AS VARCHAR(100)), 'NULL') ;
		END	

	END
	ELSE
	BEGIN
		IF @Debug = 1
		BEGIN
			PRINT 'No Folder was Created'
		END		
	END

	DELETE FROM @DirTree

	IF @Debug = 1
	BEGIN
		PRINT '----------- End Debug Inoformation Maintenance.FilePathCreation -------------' ;
	END	

	END TRY
	BEGIN CATCH

		/*Update The backup Table with Result*/
		SET @ErrorDetails = 'File Path: ' + @FilePathToCheck;

		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE();  
                              
		SELECT @ErrorDetails AS ErrorDetails

		SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;

	END CATCH

END
GO
/****** Object:  StoredProcedure [Maintenance].[FixLoginsAllDB]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Maintenance].[FixLoginsAllDB]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


DECLARE @VarDbId INT,
@SQL nvarchar(4000),
@VDBName nvarchar(260),
@OUCounter INT,
@Max_OUCounter INT
SELECT @VarDbId=4,
@SQL =''
CREATE TABLE #OrphaneUsers
(
ID INT IDENTITY (1,1) NOT NULL,
DBName VARCHAR(125) NULL ,
UserName sysname NULL ,
UserSID VARBINARY(85) NULL ,
LoginExists bit NULL
)
WHILE EXISTS
(SELECT database_id
FROM sys.databases
WHERE database_id>@VarDbId
AND state_desc ='ONLINE'
AND is_read_only = 0
)
BEGIN
SELECT TOP 1
@SQL ='Create table #OrphaneUser 

(UserName sysname null, 

UserSID varbinary(85) null ) 

insert into #OrphaneUser exec ' + name+ '.dbo.sp_change_users_login ''report'' 

insert into #OrphaneUsers(DBName,UserName,UserSID,LoginExists) select '''+ name+''' as[dbname], UserName, UserSID,0 from #OrphaneUser 

drop Table #OrphaneUser',
@VDBName=name
FROM sys.databases
WHERE database_id>@VarDbId
AND state_desc ='ONLINE'
AND is_read_only = 0
ORDER BY database_id
EXEC SP_Executesql @SQL
SELECT TOP 1
@VarDbId=database_id
FROM sys.databases
WHERE database_id>@VarDbId
AND state_desc ='ONLINE'
END
UPDATE #OrphaneUsers
SET LoginExists=1
FROM #OrphaneUsers
JOIN syslogins
ON #OrphaneUsers.UserName=syslogins.NAME
SELECT @OUCounter =0,
@Max_OUCounter =COUNT(0)
FROM #OrphaneUsers
WHERE LoginExists=1
WHILE EXISTS
(SELECT TOP 1
id
FROM #OrphaneUsers
WHERE LoginExists=1
AND id >@OUCounter
)
BEGIN
SELECT TOP 1
@OUCounter=id
FROM #OrphaneUsers
WHERE LoginExists=1
AND id >@OUCounter
SELECT @SQL ='EXEC '+DBName+'.dbo.sp_change_users_login ''Auto_Fix'', '''+UserName+''', NULL, '''+UserName+''''
FROM #OrphaneUsers
WHERE LoginExists=1
AND id =@OUCounter
EXEC SP_Executesql @SQL
PRINT @SQL
END
SELECT *
FROM #OrphaneUsers
DROP TABLE #OrphaneUsers

END
GO
/****** Object:  StoredProcedure [Maintenance].[FixLoginsSingleDB]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Maintenance].[FixLoginsSingleDB]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2020-08-19 - Created by william.benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

EXEC [Maintenance].[FixLoginsSingleDB]
@DatabaseName = 'WaCompass'
--@Debug = 0
;

**************************************************************************************************/
CREATE PROC [Maintenance].[FixLoginsSingleDB]
@DatabaseName NVARCHAR(250) = NULL
, @Debug BIT = 1

AS


BEGIN

SET NOCOUNT ON;

    DECLARE @ProcessCounter TINYINT = 0
    ,@DatabaseCounter TINYINT = 1
    ,@LoginToFixRecordCount TINYINT = 0
    ,@DatabasesToFixCount TINYINT = 0
    ,@DatabasePermissionsFixCount TINYINT = 0
    ,@RC INT
    ,@DBInclude NVARCHAR(MAX)
    ,@LoginName sysname
    ,@RoleMember sysname
    ,@WithExecute BIT
    ,@ViewDefinition BIT
    ,@SQLScript NVARCHAR(MAX)
    ,@ErrorMessage NVARCHAR(MAX)
    ;

    DECLARE @DatabasePermissionsFix TABLE(DatabaseName NVARCHAR(250), LoginName NVARCHAR(100), RoleMember NVARCHAR(100), WithExcute BIT, ViewDefinition BIT, RecordId SMALLINT);
    DECLARE @LoginNamesToFix TABLE(LoginName NVARCHAR(100), RoleMember NVARCHAR(100), WithExcute BIT, ViewDefinition BIT, LoginNameProcessed BIT);
    DECLARE @DatabasesToFix TABLE(DatabaseName NVARCHAR(250), RecordNumber SMALLINT);

    /* This will restore permissons for all databases on the server*/
    IF @DatabaseName IS NULL
    BEGIN
            
            SELECT @ErrorMessage = 'The paramater @DatabaseName did not recieve a value'
            RAISERROR (@ErrorMessage, 16, 1, 0, 0)
            RETURN;
            /*
            INSERT INTO @DatabasePermissionsFix(DatabaseName, LoginName, RoleMember, WithExcute, ViewDefinition, RecordId)
            SELECT
            LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
            ,LTRIM(RTRIM([LoginName])) AS [LoginName]
            ,LTRIM(RTRIM([RoleMember])) AS [RoleMember]
            ,[WithExcute]
            ,[ViewDefinition]
            ,[RecordId]
            FROM [WACompassDM].[Config].[DatabasePermissionsFix]
            WHERE [IsActive] = 1
            AND [ServerName] = @@SERVERNAME;

            SELECT @DatabasePermissionsFixCount = @@ROWCOUNT;
            */
    END

    IF @DatabaseName IS NOT NULL
    BEGIN
        INSERT INTO @DatabasePermissionsFix(DatabaseName, LoginName, RoleMember, WithExcute, ViewDefinition, RecordId)
        SELECT
        LTRIM(RTRIM([DatabaseName])) AS [DatabaseName]
        ,LTRIM(RTRIM([UserCredentials])) AS [LoginName]
        ,LTRIM(RTRIM([DatabaseRoleName])) AS [RoleMember]
        ,[WithExcute]
        ,[ViewDefinition]
        ,[RecordId]
        FROM [Config].[UserDatabasePermissions]
        WHERE [IsActive] = 1
        AND [ServerName] = @@SERVERNAME
        AND DatabaseName = @DatabaseName;

        SELECT @DatabasePermissionsFixCount = @@ROWCOUNT;
    END

    /* Exit if there is nothing to fix*/
    IF @DatabasePermissionsFixCount = 0
    BEGIN
        SELECT @ErrorMessage = 'No Database permissons to fix at this time'
        RAISERROR (@ErrorMessage, 16, 1, 0, 0)
        RETURN
    END

    INSERT INTO @LoginNamesToFix(LoginName, RoleMember, WithExcute, ViewDefinition, LoginNameProcessed)
    SELECT DISTINCT
    [LoginName] AS LoginName
    ,RoleMember AS RoleMember
    ,WithExcute
    ,ViewDefinition
    , 0 AS LoginNameProcessed
    FROM @DatabasePermissionsFix;

    SELECT @LoginToFixRecordCount = @@ROWCOUNT;

    IF @LoginToFixRecordCount > 0
    BEGIN

    /* Loop through the logins that need fixed after a restore */
        WHILE @ProcessCounter < @LoginToFixRecordCount
            BEGIN
                                SELECT TOP 1
                                @LoginName = LoginName
                                , @RoleMember = RoleMember
                                , @WithExecute = WithExcute
                                , @ViewDefinition = ViewDefinition
                                FROM @LoginNamesToFix
                                WHERE LoginNameProcessed = 0;

                                --SELECT
                                --@LoginName AS LoginName
                                --, @RoleMember AS RoleMember
                                --, @WithExecute AS WithExcute
                                --, @ViewDefinition AS ViewDefinition;

                                INSERT INTO @DatabasesToFix(DatabaseName,RecordNumber)
                                SELECT
                                DatabaseName
                                ,ROW_NUMBER() OVER(ORDER BY RecordId) AS RecordNumber
                                FROM @DatabasePermissionsFix
                                WHERE LoginName = @LoginName
                                    AND RoleMember = @RoleMember
                                    AND WithExcute = @WithExecute
                                    AND ViewDefinition = @ViewDefinition;

                                    SELECT @DatabasesToFixCount = @@ROWCOUNT;

                                    IF @DatabasesToFixCount > 0
                                    BEGIN

                                            WHILE @DatabaseCounter <= @DatabasesToFixCount
                                            BEGIN

                                                --PRINT @DatabaseCounter;

                                                SELECT TOP 1
                                                @DatabaseName = DatabaseName
                                                FROM @DatabasesToFix
                                                WHERE RecordNumber = @DatabaseCounter;                                   
                                        
                                                IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = @databasename)
                                                BEGIN
                                                                SELECT @ErrorMessage = 'One of the databases specified does not exist, please check your spelling and try again (' + @databasename + ')'
                                                                RAISERROR (@ErrorMessage, 16, 1, 0, 0)
                                                                RETURN
                                                END
       
                                                SELECT @SQLScript = 'USE '+ @DatabaseName + ';' + CHAR(13)

                                                --exec sp_executesql @sql

                                                SELECT @SQLScript = @SQLScript +  'IF  EXISTS (SELECT * FROM ' + @DatabaseName +  '.sys.schemas WHERE name = N' + '''' + @LoginName + '''' + ')' + CHAR(13) +
                                                'DROP SCHEMA [' + @LoginName + '];' + CHAR(13)+     CHAR(13)
                                                            
                                                SELECT @SQLScript = @SQLScript + 'IF  EXISTS (SELECT * FROM ' + @DatabaseName +  '.sys.database_principals WHERE name = N' + '''' + @LoginName + '''' + ')' + CHAR(13) +
                                                'DROP USER [' + @LoginName + '];' + CHAR(13) +    CHAR(13) +
                                                'CREATE USER [' + @LoginName + '] FOR LOGIN [' + @LoginName + '];' + CHAR(13) +
                                                'EXEC ' + @DatabaseName +  '.sys.sp_addrolemember N' + '''' + @RoleMember + '''' + ', N' + ''''  + @LoginName  + '''' + ';' + CHAR(13) + CHAR(13)
       
                                                IF @WithExecute = 1 
                                                BEGIN
                                                        SELECT @SQLScript = @SQLScript + 'GRANT execute to ' + '['  + @LoginName  + ']' + ';'  + CHAR(13) 
                                                END
       
                                                --EXEC (@SQLScript)
                                                --PRINT @SQLScript

                                                IF @ViewDefinition = 1 
                                                BEGIN
                                                        SELECT @SQLScript = @SQLScript + 'USE ' +@databasename + ';' + CHAR(13) +
                                                        'GRANT view definition to ' + '['  + @LoginName  + ']' + ';'
                                                END
       
                                                --EXEC (@SQLScript)
                                                PRINT(@SQLScript)

                                                SELECT @DatabaseCounter = @DatabaseCounter + 1
                                                --PRINT @DatabaseCounter
                                            END
                                        


                                    END

                                UPDATE @LoginNamesToFix
                                SET LoginNameProcessed = 1
                                WHERE LoginName = @LoginName;

                                SELECT @ProcessCounter = @ProcessCounter + 1;

                END
    END
END


GO
/****** Object:  StoredProcedure [Maintenance].[IndexOptimize]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Maintenance].[IndexOptimize]

@Databases nvarchar(max) = NULL,
@FragmentationLow nvarchar(max) = NULL,
@FragmentationMedium nvarchar(max) = 'INDEX_REORGANIZE,INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE',
@FragmentationHigh nvarchar(max) = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE',
@FragmentationLevel1 int = 5,
@FragmentationLevel2 int = 30,
@MinNumberOfPages int = 1000,
@MaxNumberOfPages int = NULL,
@SortInTempdb nvarchar(max) = 'N',
@MaxDOP int = NULL,
@FillFactor int = NULL,
@PadIndex nvarchar(max) = NULL,
@LOBCompaction nvarchar(max) = 'Y',
@UpdateStatistics nvarchar(max) = NULL,
@OnlyModifiedStatistics nvarchar(max) = 'N',
@StatisticsModificationLevel int = NULL,
@StatisticsSample int = NULL,
@StatisticsResample nvarchar(max) = 'N',
@PartitionLevel nvarchar(max) = 'Y',
@MSShippedObjects nvarchar(max) = 'N',
@Indexes nvarchar(max) = NULL,
@TimeLimit int = NULL,
@Delay int = NULL,
@WaitAtLowPriorityMaxDuration int = NULL,
@WaitAtLowPriorityAbortAfterWait nvarchar(max) = NULL,
@Resumable nvarchar(max) = 'N',
@AvailabilityGroups nvarchar(max) = NULL,
@LockTimeout int = NULL,
@LockMessageSeverity int = 16,
@DatabaseOrder nvarchar(max) = NULL,
@DatabasesInParallel nvarchar(max) = 'N',
@LogToTable nvarchar(max) = 'N',
@Execute nvarchar(max) = 'Y'

AS

BEGIN

  ----------------------------------------------------------------------------------------------------
  --// Source:  https://ola.hallengren.com                                                        //--
  --// License: https://ola.hallengren.com/license.html                                           //--
  --// GitHub:  https://github.com/olahallengren/sql-server-maintenance-solution                  //--
  --// Version: 2019-06-14 00:05:34                                                               //--
  ----------------------------------------------------------------------------------------------------

  SET NOCOUNT ON

  SET ARITHABORT ON

  SET NUMERIC_ROUNDABORT OFF

  DECLARE @StartMessage nvarchar(max)
  DECLARE @EndMessage nvarchar(max)
  DECLARE @DatabaseMessage nvarchar(max)
  DECLARE @ErrorMessage nvarchar(max)
  DECLARE @Severity int

  DECLARE @StartTime datetime
  DECLARE @SchemaName nvarchar(max)
  DECLARE @ObjectName nvarchar(max)
  DECLARE @VersionTimestamp nvarchar(max)
  DECLARE @Parameters nvarchar(max)

  DECLARE @Version numeric(18,10)
  DECLARE @HostPlatform nvarchar(max)
  DECLARE @AmazonRDS bit

  DECLARE @PartitionLevelStatistics bit

  DECLARE @QueueID int
  DECLARE @QueueStartTime datetime

  DECLARE @CurrentDBID int
  DECLARE @CurrentDatabaseName nvarchar(max)

  DECLARE @CurrentDatabaseID int
  DECLARE @CurrentUserAccess nvarchar(max)
  DECLARE @CurrentIsReadOnly bit
  DECLARE @CurrentDatabaseState nvarchar(max)
  DECLARE @CurrentInStandby bit
  DECLARE @CurrentRecoveryModel nvarchar(max)

  DECLARE @CurrentIsDatabaseAccessible bit
  DECLARE @CurrentAvailabilityGroup nvarchar(max)
  DECLARE @CurrentAvailabilityGroupRole nvarchar(max)
  DECLARE @CurrentDatabaseMirroringRole nvarchar(max)

  DECLARE @CurrentCommand01 nvarchar(max)
  DECLARE @CurrentCommand02 nvarchar(max)
  DECLARE @CurrentCommand03 nvarchar(max)
  DECLARE @CurrentCommand04 nvarchar(max)
  DECLARE @CurrentCommand05 nvarchar(max)
  DECLARE @CurrentCommand06 nvarchar(max)
  DECLARE @CurrentCommand07 nvarchar(max)

  DECLARE @CurrentCommandOutput06 int
  DECLARE @CurrentCommandOutput07 int

  DECLARE @CurrentCommandType06 nvarchar(max)
  DECLARE @CurrentCommandType07 nvarchar(max)

  DECLARE @CurrentComment06 nvarchar(max)
  DECLARE @CurrentComment07 nvarchar(max)

  DECLARE @CurrentExtendedInfo06 xml
  DECLARE @CurrentExtendedInfo07 xml

  DECLARE @CurrentIxID int
  DECLARE @CurrentIxOrder int
  DECLARE @CurrentSchemaID int
  DECLARE @CurrentSchemaName nvarchar(max)
  DECLARE @CurrentObjectID int
  DECLARE @CurrentObjectName nvarchar(max)
  DECLARE @CurrentObjectType nvarchar(max)
  DECLARE @CurrentIsMemoryOptimized bit
  DECLARE @CurrentIndexID int
  DECLARE @CurrentIndexName nvarchar(max)
  DECLARE @CurrentIndexType int
  DECLARE @CurrentStatisticsID int
  DECLARE @CurrentStatisticsName nvarchar(max)
  DECLARE @CurrentPartitionID bigint
  DECLARE @CurrentPartitionNumber int
  DECLARE @CurrentPartitionCount int
  DECLARE @CurrentIsPartition bit
  DECLARE @CurrentIndexExists bit
  DECLARE @CurrentStatisticsExists bit
  DECLARE @CurrentIsImageText bit
  DECLARE @CurrentIsNewLOB bit
  DECLARE @CurrentIsFileStream bit
  DECLARE @CurrentIsColumnStore bit
  DECLARE @CurrentIsComputed bit
  DECLARE @CurrentIsTimestamp bit
  DECLARE @CurrentAllowPageLocks bit
  DECLARE @CurrentNoRecompute bit
  DECLARE @CurrentIsIncremental bit
  DECLARE @CurrentRowCount bigint
  DECLARE @CurrentModificationCounter bigint
  DECLARE @CurrentOnReadOnlyFileGroup bit
  DECLARE @CurrentResumableIndexOperation bit
  DECLARE @CurrentFragmentationLevel float
  DECLARE @CurrentPageCount bigint
  DECLARE @CurrentFragmentationGroup nvarchar(max)
  DECLARE @CurrentAction nvarchar(max)
  DECLARE @CurrentMaxDOP int
  DECLARE @CurrentUpdateStatistics nvarchar(max)
  DECLARE @CurrentStatisticsSample int
  DECLARE @CurrentStatisticsResample nvarchar(max)
  DECLARE @CurrentDelay datetime

  DECLARE @tmpDatabases TABLE (ID int IDENTITY,
                               DatabaseName nvarchar(max),
                               DatabaseType nvarchar(max),
                               AvailabilityGroup bit,
                               StartPosition int,
                               DatabaseSize bigint,
                               [Order] int,
                               Selected bit,
                               Completed bit,
                               PRIMARY KEY(Selected, Completed, [Order], ID))

  DECLARE @tmpAvailabilityGroups TABLE (ID int IDENTITY PRIMARY KEY,
                                        AvailabilityGroupName nvarchar(max),
                                        StartPosition int,
                                        Selected bit)

  DECLARE @tmpDatabasesAvailabilityGroups TABLE (DatabaseName nvarchar(max),
                                                 AvailabilityGroupName nvarchar(max))

  DECLARE @tmpIndexesStatistics TABLE (ID int IDENTITY,
                                       SchemaID int,
                                       SchemaName nvarchar(max),
                                       ObjectID int,
                                       ObjectName nvarchar(max),
                                       ObjectType nvarchar(max),
                                       IsMemoryOptimized bit,
                                       IndexID int,
                                       IndexName nvarchar(max),
                                       IndexType int,
                                       AllowPageLocks bit,
                                       IsImageText bit,
                                       IsNewLOB bit,
                                       IsFileStream bit,
                                       IsColumnStore bit,
                                       IsComputed bit,
                                       IsTimestamp bit,
                                       OnReadOnlyFileGroup bit,
                                       ResumableIndexOperation bit,
                                       StatisticsID int,
                                       StatisticsName nvarchar(max),
                                       [NoRecompute] bit,
                                       IsIncremental bit,
                                       PartitionID bigint,
                                       PartitionNumber int,
                                       PartitionCount int,
                                       StartPosition int,
                                       [Order] int,
                                       Selected bit,
                                       Completed bit,
                                       PRIMARY KEY(Selected, Completed, [Order], ID))

  DECLARE @SelectedDatabases TABLE (DatabaseName nvarchar(max),
                                    DatabaseType nvarchar(max),
                                    AvailabilityGroup nvarchar(max),
                                    StartPosition int,
                                    Selected bit)

  DECLARE @SelectedAvailabilityGroups TABLE (AvailabilityGroupName nvarchar(max),
                                             StartPosition int,
                                             Selected bit)

  DECLARE @SelectedIndexes TABLE (DatabaseName nvarchar(max),
                                  SchemaName nvarchar(max),
                                  ObjectName nvarchar(max),
                                  IndexName nvarchar(max),
                                  StartPosition int,
                                  Selected bit)

  DECLARE @Actions TABLE ([Action] nvarchar(max))

  INSERT INTO @Actions([Action]) VALUES('INDEX_REBUILD_ONLINE')
  INSERT INTO @Actions([Action]) VALUES('INDEX_REBUILD_OFFLINE')
  INSERT INTO @Actions([Action]) VALUES('INDEX_REORGANIZE')

  DECLARE @ActionsPreferred TABLE (FragmentationGroup nvarchar(max),
                                   [Priority] int,
                                   [Action] nvarchar(max))

  DECLARE @CurrentActionsAllowed TABLE ([Action] nvarchar(max))

  DECLARE @CurrentAlterIndexWithClauseArguments TABLE (ID int IDENTITY,
                                                       Argument nvarchar(max),
                                                       Added bit DEFAULT 0)

  DECLARE @CurrentAlterIndexArgumentID int
  DECLARE @CurrentAlterIndexArgument nvarchar(max)
  DECLARE @CurrentAlterIndexWithClause nvarchar(max)

  DECLARE @CurrentUpdateStatisticsWithClauseArguments TABLE (ID int IDENTITY,
                                                             Argument nvarchar(max),
                                                             Added bit DEFAULT 0)

  DECLARE @CurrentUpdateStatisticsArgumentID int
  DECLARE @CurrentUpdateStatisticsArgument nvarchar(max)
  DECLARE @CurrentUpdateStatisticsWithClause nvarchar(max)

  DECLARE @Error int
  DECLARE @ReturnCode int

  DECLARE @EmptyLine nvarchar(max)

  SET @Error = 0
  SET @ReturnCode = 0

  SET @EmptyLine = CHAR(9)

  SET @Version = CAST(LEFT(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)),CHARINDEX('.',CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))) - 1) + '.' + REPLACE(RIGHT(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)), LEN(CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))) - CHARINDEX('.',CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max)))),'.','') AS numeric(18,10))

  IF @Version >= 14
  BEGIN
    SELECT @HostPlatform = host_platform
    FROM sys.dm_os_host_info
  END
  ELSE
  BEGIN
    SET @HostPlatform = 'Windows'
  END

  SET @AmazonRDS = CASE WHEN DB_ID('rdsadmin') IS NOT NULL AND SUSER_SNAME(0x01) = 'rdsa' THEN 1 ELSE 0 END

  ----------------------------------------------------------------------------------------------------
  --// Log initial information                                                                    //--
  ----------------------------------------------------------------------------------------------------

  SET @StartTime = GETDATE()
  SET @SchemaName = (SELECT schemas.name FROM sys.schemas schemas INNER JOIN sys.objects objects ON schemas.[schema_id] = objects.[schema_id] WHERE [object_id] = @@PROCID)
  SET @ObjectName = OBJECT_NAME(@@PROCID)
  SET @VersionTimestamp = SUBSTRING(OBJECT_DEFINITION(@@PROCID),CHARINDEX('--// Version: ',OBJECT_DEFINITION(@@PROCID)) + LEN('--// Version: ') + 1, 19)

  SET @Parameters = '@Databases = ' + ISNULL('''' + REPLACE(@Databases,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @FragmentationLow = ' + ISNULL('''' + REPLACE(@FragmentationLow,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @FragmentationMedium = ' + ISNULL('''' + REPLACE(@FragmentationMedium,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @FragmentationHigh = ' + ISNULL('''' + REPLACE(@FragmentationHigh,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @FragmentationLevel1 = ' + ISNULL(CAST(@FragmentationLevel1 AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @FragmentationLevel2 = ' + ISNULL(CAST(@FragmentationLevel2 AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @MinNumberOfPages = ' + ISNULL(CAST(@MinNumberOfPages AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @MaxNumberOfPages = ' + ISNULL(CAST(@MaxNumberOfPages AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @SortInTempdb = ' + ISNULL('''' + REPLACE(@SortInTempdb,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @MaxDOP = ' + ISNULL(CAST(@MaxDOP AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @FillFactor = ' + ISNULL(CAST(@FillFactor AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @PadIndex = ' + ISNULL('''' + REPLACE(@PadIndex,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @LOBCompaction = ' + ISNULL('''' + REPLACE(@LOBCompaction,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @UpdateStatistics = ' + ISNULL('''' + REPLACE(@UpdateStatistics,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @OnlyModifiedStatistics = ' + ISNULL('''' + REPLACE(@OnlyModifiedStatistics,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @StatisticsModificationLevel = ' + ISNULL(CAST(@StatisticsModificationLevel AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @StatisticsSample = ' + ISNULL(CAST(@StatisticsSample AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @StatisticsResample = ' + ISNULL('''' + REPLACE(@StatisticsResample,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @PartitionLevel = ' + ISNULL('''' + REPLACE(@PartitionLevel,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @MSShippedObjects = ' + ISNULL('''' + REPLACE(@MSShippedObjects,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Indexes = ' + ISNULL('''' + REPLACE(@Indexes,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @TimeLimit = ' + ISNULL(CAST(@TimeLimit AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @Delay = ' + ISNULL(CAST(@Delay AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @WaitAtLowPriorityMaxDuration = ' + ISNULL(CAST(@WaitAtLowPriorityMaxDuration AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @WaitAtLowPriorityAbortAfterWait = ' + ISNULL('''' + REPLACE(@WaitAtLowPriorityAbortAfterWait,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Resumable = ' + ISNULL('''' + REPLACE(@Resumable,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @AvailabilityGroups = ' + ISNULL('''' + REPLACE(@AvailabilityGroups,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @LockTimeout = ' + ISNULL(CAST(@LockTimeout AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @LockMessageSeverity = ' + ISNULL(CAST(@LockMessageSeverity AS nvarchar),'NULL')
  SET @Parameters = @Parameters + ', @DatabaseOrder = ' + ISNULL('''' + REPLACE(@DatabaseOrder,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @DatabasesInParallel = ' + ISNULL('''' + REPLACE(@DatabasesInParallel,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @LogToTable = ' + ISNULL('''' + REPLACE(@LogToTable,'''','''''') + '''','NULL')
  SET @Parameters = @Parameters + ', @Execute = ' + ISNULL('''' + REPLACE(@Execute,'''','''''') + '''','NULL')

  SET @StartMessage = 'Date and time: ' + CONVERT(nvarchar,@StartTime,120)
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Server: ' + CAST(SERVERPROPERTY('ServerName') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Version: ' + CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Edition: ' + CAST(SERVERPROPERTY('Edition') AS nvarchar(max))
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Platform: ' + @HostPlatform
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Procedure: ' + QUOTENAME(DB_NAME(DB_ID())) + '.' + QUOTENAME(@SchemaName) + '.' + QUOTENAME(@ObjectName)
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Parameters: ' + @Parameters
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Version: ' + @VersionTimestamp
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  SET @StartMessage = 'Source: https://ola.hallengren.com'
  RAISERROR('%s',10,1,@StartMessage) WITH NOWAIT

  RAISERROR(@EmptyLine,10,1) WITH NOWAIT

  ----------------------------------------------------------------------------------------------------
  --// Check core requirements                                                                    //--
  ----------------------------------------------------------------------------------------------------

  IF NOT (SELECT [compatibility_level] FROM sys.databases WHERE database_id = DB_ID()) >= 90
  BEGIN
    SET @ErrorMessage = 'The database ' + QUOTENAME(DB_NAME(DB_ID())) + ' has to be in compatibility level 90 or higher.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_ansi_nulls FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'ANSI_NULLS has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT (SELECT uses_quoted_identifier FROM sys.sql_modules WHERE [object_id] = @@PROCID) = 1
  BEGIN
    SET @ErrorMessage = 'QUOTED_IDENTIFIER has to be set to ON for the stored procedure.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'P' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandExecute')
  BEGIN
    SET @ErrorMessage = 'The stored procedure CommandExecute is missing. Download https://ola.hallengren.com/scripts/CommandExecute.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'P' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandExecute' AND OBJECT_DEFINITION(objects.[object_id]) NOT LIKE '%@LockMessageSeverity%')
  BEGIN
    SET @ErrorMessage = 'The stored procedure CommandExecute needs to be updated. Download https://ola.hallengren.com/scripts/CommandExecute.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'CommandLog')
  BEGIN
    SET @ErrorMessage = 'The table CommandLog is missing. Download https://ola.hallengren.com/scripts/CommandLog.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'Queue')
  BEGIN
    SET @ErrorMessage = 'The table Queue is missing. Download https://ola.hallengren.com/scripts/Queue.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel = 'Y' AND NOT EXISTS (SELECT * FROM sys.objects objects INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] = 'U' AND schemas.[name] = 'dbo' AND objects.[name] = 'QueueDatabase')
  BEGIN
    SET @ErrorMessage = 'The table QueueDatabase is missing. Download https://ola.hallengren.com/scripts/QueueDatabase.sql.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @@TRANCOUNT <> 0
  BEGIN
    SET @ErrorMessage = 'The transaction count is not 0.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ReturnCode = @Error
    GOTO Logging
  END

  ----------------------------------------------------------------------------------------------------
  --// Select databases                                                                           //--
  ----------------------------------------------------------------------------------------------------

  SET @Databases = REPLACE(@Databases, CHAR(10), '')
  SET @Databases = REPLACE(@Databases, CHAR(13), '')

  WHILE CHARINDEX(', ',@Databases) > 0 SET @Databases = REPLACE(@Databases,', ',',')
  WHILE CHARINDEX(' ,',@Databases) > 0 SET @Databases = REPLACE(@Databases,' ,',',')

  SET @Databases = LTRIM(RTRIM(@Databases));

  WITH Databases1 (StartPosition, EndPosition, DatabaseItem) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Databases, 1), 0), LEN(@Databases) + 1) AS EndPosition,
         SUBSTRING(@Databases, 1, ISNULL(NULLIF(CHARINDEX(',', @Databases, 1), 0), LEN(@Databases) + 1) - 1) AS DatabaseItem
  WHERE @Databases IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Databases, EndPosition + 1), 0), LEN(@Databases) + 1) AS EndPosition,
         SUBSTRING(@Databases, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @Databases, EndPosition + 1), 0), LEN(@Databases) + 1) - EndPosition - 1) AS DatabaseItem
  FROM Databases1
  WHERE EndPosition < LEN(@Databases) + 1
  ),
  Databases2 (DatabaseItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN DatabaseItem LIKE '-%' THEN RIGHT(DatabaseItem,LEN(DatabaseItem) - 1) ELSE DatabaseItem END AS DatabaseItem,
         StartPosition,
         CASE WHEN DatabaseItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
  FROM Databases1
  ),
  Databases3 (DatabaseItem, DatabaseType, AvailabilityGroup, StartPosition, Selected) AS
  (
  SELECT CASE WHEN DatabaseItem IN('ALL_DATABASES','SYSTEM_DATABASES','USER_DATABASES','AVAILABILITY_GROUP_DATABASES') THEN '%' ELSE DatabaseItem END AS DatabaseItem,
         CASE WHEN DatabaseItem = 'SYSTEM_DATABASES' THEN 'S' WHEN DatabaseItem = 'USER_DATABASES' THEN 'U' ELSE NULL END AS DatabaseType,
         CASE WHEN DatabaseItem = 'AVAILABILITY_GROUP_DATABASES' THEN 1 ELSE NULL END AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases2
  ),
  Databases4 (DatabaseName, DatabaseType, AvailabilityGroup, StartPosition, Selected) AS
  (
  SELECT CASE WHEN LEFT(DatabaseItem,1) = '[' AND RIGHT(DatabaseItem,1) = ']' THEN PARSENAME(DatabaseItem,1) ELSE DatabaseItem END AS DatabaseItem,
         DatabaseType,
         AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases3
  )
  INSERT INTO @SelectedDatabases (DatabaseName, DatabaseType, AvailabilityGroup, StartPosition, Selected)
  SELECT DatabaseName,
         DatabaseType,
         AvailabilityGroup,
         StartPosition,
         Selected
  FROM Databases4
  OPTION (MAXRECURSION 0)

  IF @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
  BEGIN
    INSERT INTO @tmpAvailabilityGroups (AvailabilityGroupName, Selected)
    SELECT name AS AvailabilityGroupName,
           0 AS Selected
    FROM sys.availability_groups

    INSERT INTO @tmpDatabasesAvailabilityGroups (DatabaseName, AvailabilityGroupName)
    SELECT databases.name,
           availability_groups.name
    FROM sys.databases databases
    INNER JOIN sys.dm_hadr_availability_replica_states dm_hadr_availability_replica_states ON databases.replica_id = dm_hadr_availability_replica_states.replica_id
    INNER JOIN sys.availability_groups availability_groups ON dm_hadr_availability_replica_states.group_id = availability_groups.group_id
  END

  INSERT INTO @tmpDatabases (DatabaseName, DatabaseType, AvailabilityGroup, [Order], Selected, Completed)
  SELECT [name] AS DatabaseName,
         CASE WHEN name IN('master','msdb','model') OR is_distributor = 1 THEN 'S' ELSE 'U' END AS DatabaseType,
         NULL AS AvailabilityGroup,
         0 AS [Order],
         0 AS Selected,
         0 AS Completed
  FROM sys.databases
  WHERE [name] <> 'tempdb'
  AND source_database_id IS NULL
  ORDER BY [name] ASC

  UPDATE tmpDatabases
  SET AvailabilityGroup = CASE WHEN EXISTS (SELECT * FROM @tmpDatabasesAvailabilityGroups WHERE DatabaseName = tmpDatabases.DatabaseName) THEN 1 ELSE 0 END
  FROM @tmpDatabases tmpDatabases

  UPDATE tmpDatabases
  SET tmpDatabases.Selected = SelectedDatabases.Selected
  FROM @tmpDatabases tmpDatabases
  INNER JOIN @SelectedDatabases SelectedDatabases
  ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
  AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
  AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
  WHERE SelectedDatabases.Selected = 1

  UPDATE tmpDatabases
  SET tmpDatabases.Selected = SelectedDatabases.Selected
  FROM @tmpDatabases tmpDatabases
  INNER JOIN @SelectedDatabases SelectedDatabases
  ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
  AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
  AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
  WHERE SelectedDatabases.Selected = 0

  UPDATE tmpDatabases
  SET tmpDatabases.StartPosition = SelectedDatabases2.StartPosition
  FROM @tmpDatabases tmpDatabases
  INNER JOIN (SELECT tmpDatabases.DatabaseName, MIN(SelectedDatabases.StartPosition) AS StartPosition
              FROM @tmpDatabases tmpDatabases
              INNER JOIN @SelectedDatabases SelectedDatabases
              ON tmpDatabases.DatabaseName LIKE REPLACE(SelectedDatabases.DatabaseName,'_','[_]')
              AND (tmpDatabases.DatabaseType = SelectedDatabases.DatabaseType OR SelectedDatabases.DatabaseType IS NULL)
              AND (tmpDatabases.AvailabilityGroup = SelectedDatabases.AvailabilityGroup OR SelectedDatabases.AvailabilityGroup IS NULL)
              WHERE SelectedDatabases.Selected = 1
              GROUP BY tmpDatabases.DatabaseName) SelectedDatabases2
  ON tmpDatabases.DatabaseName = SelectedDatabases2.DatabaseName

  IF @Databases IS NOT NULL AND (NOT EXISTS(SELECT * FROM @SelectedDatabases) OR EXISTS(SELECT * FROM @SelectedDatabases WHERE DatabaseName IS NULL OR DatabaseName = ''))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Databases is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Select availability groups                                                                 //--
  ----------------------------------------------------------------------------------------------------

  IF @AvailabilityGroups IS NOT NULL AND @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
  BEGIN

    SET @AvailabilityGroups = REPLACE(@AvailabilityGroups, CHAR(10), '')
    SET @AvailabilityGroups = REPLACE(@AvailabilityGroups, CHAR(13), '')

    WHILE CHARINDEX(', ',@AvailabilityGroups) > 0 SET @AvailabilityGroups = REPLACE(@AvailabilityGroups,', ',',')
    WHILE CHARINDEX(' ,',@AvailabilityGroups) > 0 SET @AvailabilityGroups = REPLACE(@AvailabilityGroups,' ,',',')

    SET @AvailabilityGroups = LTRIM(RTRIM(@AvailabilityGroups));

    WITH AvailabilityGroups1 (StartPosition, EndPosition, AvailabilityGroupItem) AS
    (
    SELECT 1 AS StartPosition,
           ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, 1), 0), LEN(@AvailabilityGroups) + 1) AS EndPosition,
           SUBSTRING(@AvailabilityGroups, 1, ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, 1), 0), LEN(@AvailabilityGroups) + 1) - 1) AS AvailabilityGroupItem
    WHERE @AvailabilityGroups IS NOT NULL
    UNION ALL
    SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
           ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, EndPosition + 1), 0), LEN(@AvailabilityGroups) + 1) AS EndPosition,
           SUBSTRING(@AvailabilityGroups, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @AvailabilityGroups, EndPosition + 1), 0), LEN(@AvailabilityGroups) + 1) - EndPosition - 1) AS AvailabilityGroupItem
    FROM AvailabilityGroups1
    WHERE EndPosition < LEN(@AvailabilityGroups) + 1
    ),
    AvailabilityGroups2 (AvailabilityGroupItem, StartPosition, Selected) AS
    (
    SELECT CASE WHEN AvailabilityGroupItem LIKE '-%' THEN RIGHT(AvailabilityGroupItem,LEN(AvailabilityGroupItem) - 1) ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           CASE WHEN AvailabilityGroupItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
    FROM AvailabilityGroups1
    ),
    AvailabilityGroups3 (AvailabilityGroupItem, StartPosition, Selected) AS
    (
    SELECT CASE WHEN AvailabilityGroupItem = 'ALL_AVAILABILITY_GROUPS' THEN '%' ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           Selected
    FROM AvailabilityGroups2
    ),
    AvailabilityGroups4 (AvailabilityGroupName, StartPosition, Selected) AS
    (
    SELECT CASE WHEN LEFT(AvailabilityGroupItem,1) = '[' AND RIGHT(AvailabilityGroupItem,1) = ']' THEN PARSENAME(AvailabilityGroupItem,1) ELSE AvailabilityGroupItem END AS AvailabilityGroupItem,
           StartPosition,
           Selected
    FROM AvailabilityGroups3
    )
    INSERT INTO @SelectedAvailabilityGroups (AvailabilityGroupName, StartPosition, Selected)
    SELECT AvailabilityGroupName, StartPosition, Selected
    FROM AvailabilityGroups4
    OPTION (MAXRECURSION 0)

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.Selected = SelectedAvailabilityGroups.Selected
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
    ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
    WHERE SelectedAvailabilityGroups.Selected = 1

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.Selected = SelectedAvailabilityGroups.Selected
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
    ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
    WHERE SelectedAvailabilityGroups.Selected = 0

    UPDATE tmpAvailabilityGroups
    SET tmpAvailabilityGroups.StartPosition = SelectedAvailabilityGroups2.StartPosition
    FROM @tmpAvailabilityGroups tmpAvailabilityGroups
    INNER JOIN (SELECT tmpAvailabilityGroups.AvailabilityGroupName, MIN(SelectedAvailabilityGroups.StartPosition) AS StartPosition
                FROM @tmpAvailabilityGroups tmpAvailabilityGroups
                INNER JOIN @SelectedAvailabilityGroups SelectedAvailabilityGroups
                ON tmpAvailabilityGroups.AvailabilityGroupName LIKE REPLACE(SelectedAvailabilityGroups.AvailabilityGroupName,'_','[_]')
                WHERE SelectedAvailabilityGroups.Selected = 1
                GROUP BY tmpAvailabilityGroups.AvailabilityGroupName) SelectedAvailabilityGroups2
    ON tmpAvailabilityGroups.AvailabilityGroupName = SelectedAvailabilityGroups2.AvailabilityGroupName

    UPDATE tmpDatabases
    SET tmpDatabases.StartPosition = tmpAvailabilityGroups.StartPosition,
        tmpDatabases.Selected = 1
    FROM @tmpDatabases tmpDatabases
    INNER JOIN @tmpDatabasesAvailabilityGroups tmpDatabasesAvailabilityGroups ON tmpDatabases.DatabaseName = tmpDatabasesAvailabilityGroups.DatabaseName
    INNER JOIN @tmpAvailabilityGroups tmpAvailabilityGroups ON tmpDatabasesAvailabilityGroups.AvailabilityGroupName = tmpAvailabilityGroups.AvailabilityGroupName
    WHERE tmpAvailabilityGroups.Selected = 1

  END

  IF @AvailabilityGroups IS NOT NULL AND (NOT EXISTS(SELECT * FROM @SelectedAvailabilityGroups) OR EXISTS(SELECT * FROM @SelectedAvailabilityGroups WHERE AvailabilityGroupName IS NULL OR AvailabilityGroupName = '') OR @Version < 11 OR SERVERPROPERTY('IsHadrEnabled') = 0)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @AvailabilityGroups is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF (@Databases IS NULL AND @AvailabilityGroups IS NULL)
  BEGIN
    SET @ErrorMessage = 'You need to specify one of the parameters @Databases and @AvailabilityGroups.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF (@Databases IS NOT NULL AND @AvailabilityGroups IS NOT NULL)
  BEGIN
    SET @ErrorMessage = 'You can only specify one of the parameters @Databases and @AvailabilityGroups.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Select indexes                                                                             //--
  ----------------------------------------------------------------------------------------------------

  SET @Indexes = REPLACE(@Indexes, CHAR(10), '')
  SET @Indexes = REPLACE(@Indexes, CHAR(13), '')

  WHILE CHARINDEX(', ',@Indexes) > 0 SET @Indexes = REPLACE(@Indexes,', ',',')
  WHILE CHARINDEX(' ,',@Indexes) > 0 SET @Indexes = REPLACE(@Indexes,' ,',',')

  SET @Indexes = LTRIM(RTRIM(@Indexes));

  WITH Indexes1 (StartPosition, EndPosition, IndexItem) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Indexes, 1), 0), LEN(@Indexes) + 1) AS EndPosition,
         SUBSTRING(@Indexes, 1, ISNULL(NULLIF(CHARINDEX(',', @Indexes, 1), 0), LEN(@Indexes) + 1) - 1) AS IndexItem
  WHERE @Indexes IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @Indexes, EndPosition + 1), 0), LEN(@Indexes) + 1) AS EndPosition,
         SUBSTRING(@Indexes, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @Indexes, EndPosition + 1), 0), LEN(@Indexes) + 1) - EndPosition - 1) AS IndexItem
  FROM Indexes1
  WHERE EndPosition < LEN(@Indexes) + 1
  ),
  Indexes2 (IndexItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN IndexItem LIKE '-%' THEN RIGHT(IndexItem,LEN(IndexItem) - 1) ELSE IndexItem END AS IndexItem,
         StartPosition,
         CASE WHEN IndexItem LIKE '-%' THEN 0 ELSE 1 END AS Selected
  FROM Indexes1
  ),
  Indexes3 (IndexItem, StartPosition, Selected) AS
  (
  SELECT CASE WHEN IndexItem = 'ALL_INDEXES' THEN '%.%.%.%' ELSE IndexItem END AS IndexItem,
         StartPosition,
         Selected
  FROM Indexes2
  ),
  Indexes4 (DatabaseName, SchemaName, ObjectName, IndexName, StartPosition, Selected) AS
  (
  SELECT CASE WHEN PARSENAME(IndexItem,4) IS NULL THEN PARSENAME(IndexItem,3) ELSE PARSENAME(IndexItem,4) END AS DatabaseName,
         CASE WHEN PARSENAME(IndexItem,4) IS NULL THEN PARSENAME(IndexItem,2) ELSE PARSENAME(IndexItem,3) END AS SchemaName,
         CASE WHEN PARSENAME(IndexItem,4) IS NULL THEN PARSENAME(IndexItem,1) ELSE PARSENAME(IndexItem,2) END AS ObjectName,
         CASE WHEN PARSENAME(IndexItem,4) IS NULL THEN '%' ELSE PARSENAME(IndexItem,1) END AS IndexName,
         StartPosition,
         Selected
  FROM Indexes3
  )
  INSERT INTO @SelectedIndexes (DatabaseName, SchemaName, ObjectName, IndexName, StartPosition, Selected)
  SELECT DatabaseName, SchemaName, ObjectName, IndexName, StartPosition, Selected
  FROM Indexes4
  OPTION (MAXRECURSION 0);

  ----------------------------------------------------------------------------------------------------
  --// Select actions                                                                             //--
  ----------------------------------------------------------------------------------------------------

  WITH FragmentationLow (StartPosition, EndPosition, [Action]) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationLow, 1), 0), LEN(@FragmentationLow) + 1) AS EndPosition,
         SUBSTRING(@FragmentationLow, 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationLow, 1), 0), LEN(@FragmentationLow) + 1) - 1) AS [Action]
  WHERE @FragmentationLow IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationLow, EndPosition + 1), 0), LEN(@FragmentationLow) + 1) AS EndPosition,
         SUBSTRING(@FragmentationLow, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationLow, EndPosition + 1), 0), LEN(@FragmentationLow) + 1) - EndPosition - 1) AS [Action]
  FROM FragmentationLow
  WHERE EndPosition < LEN(@FragmentationLow) + 1
  )
  INSERT INTO @ActionsPreferred(FragmentationGroup, [Priority], [Action])
  SELECT 'Low' AS FragmentationGroup,
         ROW_NUMBER() OVER(ORDER BY StartPosition ASC) AS [Priority],
         [Action]
  FROM FragmentationLow
  OPTION (MAXRECURSION 0);

  WITH FragmentationMedium (StartPosition, EndPosition, [Action]) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationMedium, 1), 0), LEN(@FragmentationMedium) + 1) AS EndPosition,
         SUBSTRING(@FragmentationMedium, 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationMedium, 1), 0), LEN(@FragmentationMedium) + 1) - 1) AS [Action]
  WHERE @FragmentationMedium IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationMedium, EndPosition + 1), 0), LEN(@FragmentationMedium) + 1) AS EndPosition,
         SUBSTRING(@FragmentationMedium, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationMedium, EndPosition + 1), 0), LEN(@FragmentationMedium) + 1) - EndPosition - 1) AS [Action]
  FROM FragmentationMedium
  WHERE EndPosition < LEN(@FragmentationMedium) + 1
  )
  INSERT INTO @ActionsPreferred(FragmentationGroup, [Priority], [Action])
  SELECT 'Medium' AS FragmentationGroup,
         ROW_NUMBER() OVER(ORDER BY StartPosition ASC) AS [Priority],
         [Action]
  FROM FragmentationMedium
  OPTION (MAXRECURSION 0);

  WITH FragmentationHigh (StartPosition, EndPosition, [Action]) AS
  (
  SELECT 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationHigh, 1), 0), LEN(@FragmentationHigh) + 1) AS EndPosition,
         SUBSTRING(@FragmentationHigh, 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationHigh, 1), 0), LEN(@FragmentationHigh) + 1) - 1) AS [Action]
  WHERE @FragmentationHigh IS NOT NULL
  UNION ALL
  SELECT CAST(EndPosition AS int) + 1 AS StartPosition,
         ISNULL(NULLIF(CHARINDEX(',', @FragmentationHigh, EndPosition + 1), 0), LEN(@FragmentationHigh) + 1) AS EndPosition,
         SUBSTRING(@FragmentationHigh, EndPosition + 1, ISNULL(NULLIF(CHARINDEX(',', @FragmentationHigh, EndPosition + 1), 0), LEN(@FragmentationHigh) + 1) - EndPosition - 1) AS [Action]
  FROM FragmentationHigh
  WHERE EndPosition < LEN(@FragmentationHigh) + 1
  )
  INSERT INTO @ActionsPreferred(FragmentationGroup, [Priority], [Action])
  SELECT 'High' AS FragmentationGroup,
         ROW_NUMBER() OVER(ORDER BY StartPosition ASC) AS [Priority],
         [Action]
  FROM FragmentationHigh
  OPTION (MAXRECURSION 0)

  ----------------------------------------------------------------------------------------------------
  --// Check input parameters                                                                     //--
  ----------------------------------------------------------------------------------------------------

  IF EXISTS (SELECT [Action] FROM @ActionsPreferred WHERE FragmentationGroup = 'Low' AND [Action] NOT IN(SELECT * FROM @Actions))
  OR EXISTS(SELECT * FROM @ActionsPreferred WHERE FragmentationGroup = 'Low' GROUP BY [Action] HAVING COUNT(*) > 1)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FragmentationLow is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS (SELECT [Action] FROM @ActionsPreferred WHERE FragmentationGroup = 'Medium' AND [Action] NOT IN(SELECT * FROM @Actions))
  OR EXISTS(SELECT * FROM @ActionsPreferred WHERE FragmentationGroup = 'Medium' GROUP BY [Action] HAVING COUNT(*) > 1)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FragmentationMedium is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS (SELECT [Action] FROM @ActionsPreferred WHERE FragmentationGroup = 'High' AND [Action] NOT IN(SELECT * FROM @Actions))
  OR EXISTS(SELECT * FROM @ActionsPreferred WHERE FragmentationGroup = 'High' GROUP BY [Action] HAVING COUNT(*) > 1)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FragmentationHigh is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @FragmentationLevel1 <= 0 OR @FragmentationLevel1 >= 100 OR @FragmentationLevel1 >= @FragmentationLevel2 OR @FragmentationLevel1 IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FragmentationLevel1 is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @FragmentationLevel2 <= 0 OR @FragmentationLevel2 >= 100 OR @FragmentationLevel2 <= @FragmentationLevel1 OR @FragmentationLevel2 IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FragmentationLevel2 is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @MinNumberOfPages < 0 OR @MinNumberOfPages IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @MinNumberOfPages is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @MaxNumberOfPages < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @MaxNumberOfPages is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @SortInTempdb NOT IN('Y','N') OR @SortInTempdb IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @SortInTempdb is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @MaxDOP < 0 OR @MaxDOP > 64
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @MaxDOP is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @FillFactor <= 0 OR @FillFactor > 100
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @FillFactor is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @PadIndex NOT IN('Y','N')
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @PadIndex is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LOBCompaction NOT IN('Y','N') OR @LOBCompaction IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LOBCompaction is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @UpdateStatistics NOT IN('ALL','COLUMNS','INDEX')
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @UpdateStatistics is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @OnlyModifiedStatistics NOT IN('Y','N') OR @OnlyModifiedStatistics IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @OnlyModifiedStatistics is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @StatisticsModificationLevel <= 0 OR @StatisticsModificationLevel > 100
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @StatisticsModificationLevel is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @OnlyModifiedStatistics = 'Y' AND @StatisticsModificationLevel IS NOT NULL
  BEGIN
    SET @ErrorMessage = 'You can only specify one of the parameters @OnlyModifiedStatistics and @StatisticsModificationLevel.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @StatisticsSample <= 0 OR @StatisticsSample  > 100
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @StatisticsSample is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @StatisticsResample NOT IN('Y','N') OR @StatisticsResample IS NULL OR (@StatisticsResample = 'Y' AND @StatisticsSample IS NOT NULL)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @StatisticsResample is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @PartitionLevel NOT IN('Y','N') OR @PartitionLevel IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @PartitionLevel is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @MSShippedObjects NOT IN('Y','N') OR @MSShippedObjects IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @MSShippedObjects is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF EXISTS(SELECT * FROM @SelectedIndexes WHERE DatabaseName IS NULL OR SchemaName IS NULL OR ObjectName IS NULL OR IndexName IS NULL) OR (@Indexes IS NOT NULL AND NOT EXISTS(SELECT * FROM @SelectedIndexes))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Indexes is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @TimeLimit < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @TimeLimit is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Delay < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Delay is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @WaitAtLowPriorityMaxDuration < 0 OR (@WaitAtLowPriorityMaxDuration IS NOT NULL AND @Version < 12) OR (@WaitAtLowPriorityMaxDuration IS NOT NULL AND @WaitAtLowPriorityAbortAfterWait IS NULL) OR (@WaitAtLowPriorityMaxDuration IS NULL AND @WaitAtLowPriorityAbortAfterWait IS NOT NULL)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @WaitAtLowPriorityMaxDuration is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @WaitAtLowPriorityAbortAfterWait NOT IN('NONE','SELF','BLOCKERS') OR (@WaitAtLowPriorityAbortAfterWait IS NOT NULL AND @Version < 12) OR (@WaitAtLowPriorityAbortAfterWait IS NOT NULL AND @WaitAtLowPriorityMaxDuration IS NULL) OR (@WaitAtLowPriorityAbortAfterWait IS NULL AND @WaitAtLowPriorityMaxDuration IS NOT NULL)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @WaitAtLowPriorityAbortAfterWait is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Resumable NOT IN('Y','N') OR @Resumable IS NULL OR (@Resumable = 'Y' AND NOT (@Version >= 14 OR SERVERPROPERTY('EngineEdition') IN (5,8)))
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Resumable is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Resumable = 'Y' AND @SortInTempdb = 'Y'
  BEGIN
    SET @ErrorMessage = 'You can only specify one of the parameters @Resumable and @SortInTempdb.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LockTimeout < 0
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LockTimeout is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LockMessageSeverity NOT IN(10,16)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LockMessageSeverity is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabaseOrder NOT IN('DATABASE_NAME_ASC','DATABASE_NAME_DESC','DATABASE_SIZE_ASC','DATABASE_SIZE_DESC') OR (@DatabaseOrder IS NOT NULL AND SERVERPROPERTY('EngineEdition') = 5)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @DatabaseOrder is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @DatabasesInParallel NOT IN('Y','N') OR @DatabasesInParallel IS NULL OR (@DatabasesInParallel = 'Y' AND SERVERPROPERTY('EngineEdition') = 5)
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @DatabasesInParallel is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @LogToTable NOT IN('Y','N') OR @LogToTable IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @LogToTable is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Execute NOT IN('Y','N') OR @Execute IS NULL
  BEGIN
    SET @ErrorMessage = 'The value for the parameter @Execute is not supported.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  IF @Error <> 0
  BEGIN
    SET @ErrorMessage = 'The documentation is available at https://ola.hallengren.com/sql-server-index-and-statistics-maintenance.html.'
    RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
    SET @ReturnCode = @Error
    GOTO Logging
  END

  ----------------------------------------------------------------------------------------------------
  --// Check that selected databases and availability groups exist                                //--
  ----------------------------------------------------------------------------------------------------

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedDatabases
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases in the @Databases parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedIndexes
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases in the @Indexes parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(AvailabilityGroupName) + ', '
  FROM @SelectedAvailabilityGroups
  WHERE AvailabilityGroupName NOT LIKE '%[%]%'
  AND AvailabilityGroupName NOT IN (SELECT AvailabilityGroupName FROM @tmpAvailabilityGroups)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following availability groups do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  SET @ErrorMessage = ''
  SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + ', '
  FROM @SelectedIndexes
  WHERE DatabaseName NOT LIKE '%[%]%'
  AND DatabaseName IN (SELECT DatabaseName FROM @tmpDatabases)
  AND DatabaseName NOT IN (SELECT DatabaseName FROM @tmpDatabases WHERE Selected = 1)
  IF @@ROWCOUNT > 0
  BEGIN
    SET @ErrorMessage = 'The following databases have been selected in the @Indexes parameter, but not in the @Databases or @AvailabilityGroups parameters: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
    RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
    SET @Error = @@ERROR
    RAISERROR(@EmptyLine,10,1) WITH NOWAIT
  END

  ----------------------------------------------------------------------------------------------------
  --// Should statistics be updated on the partition level?                                       //--
  ----------------------------------------------------------------------------------------------------

  SET @PartitionLevelStatistics = CASE WHEN @PartitionLevel = 'Y' AND ((@Version >= 12.05 AND @Version < 13) OR @Version >= 13.04422 OR SERVERPROPERTY('EngineEdition') IN (5,8)) THEN 1 ELSE 0 END

  ----------------------------------------------------------------------------------------------------
  --// Update database order                                                                      //--
  ----------------------------------------------------------------------------------------------------

  IF @DatabaseOrder IN('DATABASE_SIZE_ASC','DATABASE_SIZE_DESC')
  BEGIN
    UPDATE tmpDatabases
    SET DatabaseSize = (SELECT SUM(size) FROM sys.master_files WHERE [type] = 0 AND database_id = DB_ID(tmpDatabases.DatabaseName))
    FROM @tmpDatabases tmpDatabases
  END

  IF @DatabaseOrder IS NULL
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY StartPosition ASC, DatabaseName ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_NAME_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseName ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_NAME_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseName DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_SIZE_ASC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseSize ASC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END
  ELSE
  IF @DatabaseOrder = 'DATABASE_SIZE_DESC'
  BEGIN
    WITH tmpDatabases AS (
    SELECT DatabaseName, [Order], ROW_NUMBER() OVER (ORDER BY DatabaseSize DESC) AS RowNumber
    FROM @tmpDatabases tmpDatabases
    WHERE Selected = 1
    )
    UPDATE tmpDatabases
    SET [Order] = RowNumber
  END

  ----------------------------------------------------------------------------------------------------
  --// Update the queue                                                                           //--
  ----------------------------------------------------------------------------------------------------

  IF @DatabasesInParallel = 'Y'
  BEGIN

    BEGIN TRY

      SELECT @QueueID = QueueID
      FROM dbo.[Queue]
      WHERE SchemaName = @SchemaName
      AND ObjectName = @ObjectName
      AND [Parameters] = @Parameters

      IF @QueueID IS NULL
      BEGIN
        BEGIN TRANSACTION

        SELECT @QueueID = QueueID
        FROM dbo.[Queue] WITH (UPDLOCK, TABLOCK)
        WHERE SchemaName = @SchemaName
        AND ObjectName = @ObjectName
        AND [Parameters] = @Parameters

        IF @QueueID IS NULL
        BEGIN
          INSERT INTO dbo.[Queue] (SchemaName, ObjectName, [Parameters])
          SELECT @SchemaName, @ObjectName, @Parameters

          SET @QueueID = SCOPE_IDENTITY()
        END

        COMMIT TRANSACTION
      END

      BEGIN TRANSACTION

      UPDATE [Queue]
      SET QueueStartTime = GETDATE(),
          SessionID = @@SPID,
          RequestID = (SELECT request_id FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          RequestStartTime = (SELECT start_time FROM sys.dm_exec_requests WHERE session_id = @@SPID)
      FROM dbo.[Queue] [Queue]
      WHERE QueueID = @QueueID
      AND NOT EXISTS (SELECT *
                      FROM sys.dm_exec_requests
                      WHERE session_id = [Queue].SessionID
                      AND request_id = [Queue].RequestID
                      AND start_time = [Queue].RequestStartTime)
      AND NOT EXISTS (SELECT *
                      FROM dbo.QueueDatabase QueueDatabase
                      INNER JOIN sys.dm_exec_requests ON QueueDatabase.SessionID = session_id AND QueueDatabase.RequestID = request_id AND QueueDatabase.RequestStartTime = start_time
                      WHERE QueueDatabase.QueueID = @QueueID)

      IF @@ROWCOUNT = 1
      BEGIN
        INSERT INTO dbo.QueueDatabase (QueueID, DatabaseName)
        SELECT @QueueID AS QueueID,
               DatabaseName
        FROM @tmpDatabases tmpDatabases
        WHERE Selected = 1
        AND NOT EXISTS (SELECT * FROM dbo.QueueDatabase WHERE DatabaseName = tmpDatabases.DatabaseName AND QueueID = @QueueID)

        DELETE QueueDatabase
        FROM dbo.QueueDatabase QueueDatabase
        WHERE QueueID = @QueueID
        AND NOT EXISTS (SELECT * FROM @tmpDatabases tmpDatabases WHERE DatabaseName = QueueDatabase.DatabaseName AND Selected = 1)

        UPDATE QueueDatabase
        SET DatabaseOrder = tmpDatabases.[Order]
        FROM dbo.QueueDatabase QueueDatabase
        INNER JOIN @tmpDatabases tmpDatabases ON QueueDatabase.DatabaseName = tmpDatabases.DatabaseName
        WHERE QueueID = @QueueID
      END

      COMMIT TRANSACTION

      SELECT @QueueStartTime = QueueStartTime
      FROM dbo.[Queue]
      WHERE QueueID = @QueueID

    END TRY

    BEGIN CATCH
      IF XACT_STATE() <> 0
      BEGIN
        ROLLBACK TRANSACTION
      END
      SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'')
      RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
      RAISERROR(@EmptyLine,10,1) WITH NOWAIT
      SET @ReturnCode = ERROR_NUMBER()
      GOTO Logging
    END CATCH

  END

  ----------------------------------------------------------------------------------------------------
  --// Execute commands                                                                           //--
  ----------------------------------------------------------------------------------------------------

  WHILE (1 = 1)
  BEGIN

    IF @DatabasesInParallel = 'Y'
    BEGIN
      UPDATE QueueDatabase
      SET DatabaseStartTime = NULL,
          SessionID = NULL,
          RequestID = NULL,
          RequestStartTime = NULL
      FROM dbo.QueueDatabase QueueDatabase
      WHERE QueueID = @QueueID
      AND DatabaseStartTime IS NOT NULL
      AND DatabaseEndTime IS NULL
      AND NOT EXISTS (SELECT * FROM sys.dm_exec_requests WHERE session_id = QueueDatabase.SessionID AND request_id = QueueDatabase.RequestID AND start_time = QueueDatabase.RequestStartTime)

      UPDATE QueueDatabase
      SET DatabaseStartTime = GETDATE(),
          DatabaseEndTime = NULL,
          SessionID = @@SPID,
          RequestID = (SELECT request_id FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          RequestStartTime = (SELECT start_time FROM sys.dm_exec_requests WHERE session_id = @@SPID),
          @CurrentDatabaseName = DatabaseName
      FROM (SELECT TOP 1 DatabaseStartTime,
                         DatabaseEndTime,
                         SessionID,
                         RequestID,
                         RequestStartTime,
                         DatabaseName
            FROM dbo.QueueDatabase
            WHERE QueueID = @QueueID
            AND (DatabaseStartTime < @QueueStartTime OR DatabaseStartTime IS NULL)
            AND NOT (DatabaseStartTime IS NOT NULL AND DatabaseEndTime IS NULL)
            ORDER BY DatabaseOrder ASC
            ) QueueDatabase
    END
    ELSE
    BEGIN
      SELECT TOP 1 @CurrentDBID = ID,
                   @CurrentDatabaseName = DatabaseName
      FROM @tmpDatabases
      WHERE Selected = 1
      AND Completed = 0
      ORDER BY [Order] ASC
    END

    IF @@ROWCOUNT = 0
    BEGIN
      BREAK
    END

    SELECT @CurrentDatabaseID = database_id,
           @CurrentUserAccess = user_access_desc,
           @CurrentIsReadOnly = is_read_only,
           @CurrentDatabaseState = state_desc,
           @CurrentInStandby = is_in_standby,
           @CurrentRecoveryModel = recovery_model_desc
    FROM sys.databases
    WHERE [name] = @CurrentDatabaseName

    IF @CurrentDatabaseState = 'ONLINE' AND SERVERPROPERTY('EngineEdition') <> 5
    BEGIN
      IF EXISTS (SELECT * FROM sys.database_recovery_status WHERE database_id = @CurrentDatabaseID AND database_guid IS NOT NULL)
      BEGIN
        SET @CurrentIsDatabaseAccessible = 1
      END
      ELSE
      BEGIN
        SET @CurrentIsDatabaseAccessible = 0
      END
    END

    IF @Version >= 11 AND SERVERPROPERTY('IsHadrEnabled') = 1
    BEGIN
      SELECT @CurrentAvailabilityGroup = availability_groups.name,
             @CurrentAvailabilityGroupRole = dm_hadr_availability_replica_states.role_desc
      FROM sys.databases databases
      INNER JOIN sys.dm_hadr_availability_replica_states dm_hadr_availability_replica_states ON databases.replica_id = dm_hadr_availability_replica_states.replica_id
      INNER JOIN sys.availability_groups availability_groups ON dm_hadr_availability_replica_states.group_id = availability_groups.group_id
      WHERE databases.name = @CurrentDatabaseName
    END

    IF SERVERPROPERTY('EngineEdition') <> 5
    BEGIN
      SELECT @CurrentDatabaseMirroringRole = UPPER(mirroring_role_desc)
      FROM sys.database_mirroring
      WHERE database_id = @CurrentDatabaseID
    END

    SET @DatabaseMessage = 'Date and time: ' + CONVERT(nvarchar,GETDATE(),120)
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Database: ' + QUOTENAME(@CurrentDatabaseName)
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'State: ' + @CurrentDatabaseState
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Standby: ' + CASE WHEN @CurrentInStandby = 1 THEN 'Yes' ELSE 'No' END
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'Updateability: ' + CASE WHEN @CurrentIsReadOnly = 1 THEN 'READ_ONLY' WHEN  @CurrentIsReadOnly = 0 THEN 'READ_WRITE' END
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    SET @DatabaseMessage = 'User access: ' + @CurrentUserAccess
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    IF @CurrentIsDatabaseAccessible IS NOT NULL
    BEGIN
      SET @DatabaseMessage = 'Is accessible: ' + CASE WHEN @CurrentIsDatabaseAccessible = 1 THEN 'Yes' ELSE 'No' END
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
    END

    SET @DatabaseMessage = 'Recovery model: ' + @CurrentRecoveryModel
    RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

    IF @CurrentAvailabilityGroup IS NOT NULL
    BEGIN
      SET @DatabaseMessage = 'Availability group: ' + ISNULL(@CurrentAvailabilityGroup,'N/A')
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT

      SET @DatabaseMessage = 'Availability group role: ' + ISNULL(@CurrentAvailabilityGroupRole,'N/A')
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
    END

    IF @CurrentDatabaseMirroringRole IS NOT NULL
    BEGIN
      SET @DatabaseMessage = 'Database mirroring role: ' + @CurrentDatabaseMirroringRole
      RAISERROR('%s',10,1,@DatabaseMessage) WITH NOWAIT
    END

    RAISERROR(@EmptyLine,10,1) WITH NOWAIT

    IF @CurrentDatabaseState = 'ONLINE'
    AND NOT (@CurrentUserAccess = 'SINGLE_USER' AND @CurrentIsDatabaseAccessible = 0)
    AND DATABASEPROPERTYEX(@CurrentDatabaseName,'Updateability') = 'READ_WRITE'
    BEGIN

      -- Select indexes in the current database
      IF (EXISTS(SELECT * FROM @ActionsPreferred) OR @UpdateStatistics IS NOT NULL) AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SET @CurrentCommand01 = 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;'
                              + 'USE ' + QUOTENAME(@CurrentDatabaseName) + ';'
                              + ' SELECT SchemaID, SchemaName, ObjectID, ObjectName, ObjectType, IsMemoryOptimized, IndexID, IndexName, IndexType, AllowPageLocks, IsImageText, IsNewLOB, IsFileStream, IsColumnStore, IsComputed, IsTimestamp, OnReadOnlyFileGroup, ResumableIndexOperation, StatisticsID, StatisticsName, NoRecompute, IsIncremental, PartitionID, PartitionNumber, PartitionCount, [Order], Selected, Completed'
                              + ' FROM ('

        IF EXISTS(SELECT * FROM @ActionsPreferred) OR @UpdateStatistics IN('ALL','INDEX')
        BEGIN
          SET @CurrentCommand01 = @CurrentCommand01 + 'SELECT schemas.[schema_id] AS SchemaID'
                                                    + ', schemas.[name] AS SchemaName'
                                                    + ', objects.[object_id] AS ObjectID'
                                                    + ', objects.[name] AS ObjectName'
                                                    + ', RTRIM(objects.[type]) AS ObjectType'
                                                    + ', ' + CASE WHEN @Version >= 12 THEN 'tables.is_memory_optimized' ELSE '0' END + ' AS IsMemoryOptimized'
                                                    + ', indexes.index_id AS IndexID'
                                                    + ', indexes.[name] AS IndexName'
                                                    + ', indexes.[type] AS IndexType'
                                                    + ', indexes.allow_page_locks AS AllowPageLocks'

                                                    + ', CASE WHEN indexes.[type] = 1 AND EXISTS(SELECT * FROM sys.columns columns INNER JOIN sys.types types ON columns.system_type_id = types.user_type_id WHERE columns.[object_id] = objects.object_id AND types.name IN(''image'',''text'',''ntext'')) THEN 1 ELSE 0 END AS IsImageText'

                                                    + ', CASE WHEN indexes.[type] = 1 AND EXISTS(SELECT * FROM sys.columns columns INNER JOIN sys.types types ON columns.system_type_id = types.user_type_id OR (columns.user_type_id = types.user_type_id AND types.is_assembly_type = 1) WHERE columns.[object_id] = objects.object_id AND (types.name IN(''xml'') OR (types.name IN(''varchar'',''nvarchar'',''varbinary'') AND columns.max_length = -1) OR (types.is_assembly_type = 1 AND columns.max_length = -1))) THEN 1'
                                                    + ' WHEN indexes.[type] = 2 AND EXISTS(SELECT * FROM sys.index_columns index_columns INNER JOIN sys.columns columns ON index_columns.[object_id] = columns.[object_id] AND index_columns.column_id = columns.column_id INNER JOIN sys.types types ON columns.system_type_id = types.user_type_id OR (columns.user_type_id = types.user_type_id AND types.is_assembly_type = 1) WHERE index_columns.[object_id] = objects.object_id AND index_columns.index_id = indexes.index_id AND (types.[name] IN(''xml'') OR (types.[name] IN(''varchar'',''nvarchar'',''varbinary'') AND columns.max_length = -1) OR (types.is_assembly_type = 1 AND columns.max_length = -1))) THEN 1 ELSE 0 END AS IsNewLOB'

                                                    + ', CASE WHEN indexes.[type] = 1 AND EXISTS(SELECT * FROM sys.columns columns WHERE columns.[object_id] = objects.object_id  AND columns.is_filestream = 1) THEN 1 ELSE 0 END AS IsFileStream'

                                                    + ', CASE WHEN EXISTS(SELECT * FROM sys.indexes indexes WHERE indexes.[object_id] = objects.object_id AND [type] IN(5,6)) THEN 1 ELSE 0 END AS IsColumnStore'

                                                    + ', CASE WHEN EXISTS(SELECT * FROM sys.index_columns index_columns INNER JOIN sys.columns columns ON index_columns.object_id = columns.object_id AND index_columns.column_id = columns.column_id WHERE (index_columns.key_ordinal > 0 OR index_columns.partition_ordinal > 0) AND columns.is_computed = 1 AND index_columns.object_id = indexes.object_id AND index_columns.index_id = indexes.index_id) THEN 1 ELSE 0 END AS IsComputed'

                                                    + ', CASE WHEN EXISTS(SELECT * FROM sys.index_columns index_columns INNER JOIN sys.columns columns ON index_columns.[object_id] = columns.[object_id] AND index_columns.column_id = columns.column_id INNER JOIN sys.types types ON columns.system_type_id = types.system_type_id WHERE index_columns.[object_id] = objects.object_id AND index_columns.index_id = indexes.index_id AND types.[name] = ''timestamp'') THEN 1 ELSE 0 END AS IsTimestamp'

                                                    + ', CASE WHEN EXISTS (SELECT * FROM sys.indexes indexes2 INNER JOIN sys.destination_data_spaces destination_data_spaces ON indexes.data_space_id = destination_data_spaces.partition_scheme_id INNER JOIN sys.filegroups filegroups ON destination_data_spaces.data_space_id = filegroups.data_space_id WHERE filegroups.is_read_only = 1 AND indexes2.[object_id] = indexes.[object_id] AND indexes2.[index_id] = indexes.index_id' + CASE WHEN @PartitionLevel = 'Y' THEN ' AND destination_data_spaces.destination_id = partitions.partition_number' ELSE '' END + ') THEN 1'
                                                    + ' WHEN EXISTS (SELECT * FROM sys.indexes indexes2 INNER JOIN sys.filegroups filegroups ON indexes.data_space_id = filegroups.data_space_id WHERE filegroups.is_read_only = 1 AND indexes.[object_id] = indexes2.[object_id] AND indexes.[index_id] = indexes2.index_id) THEN 1'
                                                    + ' WHEN indexes.[type] = 1 AND EXISTS (SELECT * FROM sys.tables tables INNER JOIN sys.filegroups filegroups ON tables.lob_data_space_id = filegroups.data_space_id WHERE filegroups.is_read_only = 1 AND tables.[object_id] = objects.[object_id]) THEN 1 ELSE 0 END AS OnReadOnlyFileGroup'

                                                    + ', ' + CASE WHEN @Version >= 14 THEN 'CASE WHEN EXISTS(SELECT * FROM sys.index_resumable_operations index_resumable_operations WHERE state_desc = ''PAUSED'' AND index_resumable_operations.object_id = indexes.object_id AND index_resumable_operations.index_id = indexes.index_id AND (index_resumable_operations.partition_number = partitions.partition_number OR index_resumable_operations.partition_number IS NULL)) THEN 1 ELSE 0 END' ELSE '0' END + ' AS ResumableIndexOperation'

                                                    + ', stats.stats_id AS StatisticsID'
                                                    + ', stats.name AS StatisticsName'
                                                    + ', stats.no_recompute AS NoRecompute'
                                                    + ', ' + CASE WHEN @Version >= 12 THEN 'stats.is_incremental' ELSE '0' END + ' AS IsIncremental'
                                                    + ', ' + CASE WHEN @PartitionLevel = 'Y' THEN 'partitions.partition_id AS PartitionID' WHEN @PartitionLevel = 'N' THEN 'NULL AS PartitionID' END
                                                    + ', ' + CASE WHEN @PartitionLevel = 'Y' THEN 'partitions.partition_number AS PartitionNumber' WHEN @PartitionLevel = 'N' THEN 'NULL AS PartitionNumber' END
                                                    + ', ' + CASE WHEN @PartitionLevel = 'Y' THEN 'IndexPartitions.partition_count AS PartitionCount' WHEN @PartitionLevel = 'N' THEN 'NULL AS PartitionCount' END
                                                    + ', 0 AS [Order]'
                                                    + ', 0 AS Selected'
                                                    + ', 0 AS Completed'
                                                    + ' FROM sys.indexes indexes'
                                                    + ' INNER JOIN sys.objects objects ON indexes.[object_id] = objects.[object_id]'
                                                    + ' INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id]'
                                                    + ' LEFT OUTER JOIN sys.tables tables ON objects.[object_id] = tables.[object_id]'
                                                    + ' LEFT OUTER JOIN sys.stats stats ON indexes.[object_id] = stats.[object_id] AND indexes.[index_id] = stats.[stats_id]'
          IF @PartitionLevel = 'Y'
          BEGIN
            SET @CurrentCommand01 = @CurrentCommand01 + ' LEFT OUTER JOIN sys.partitions partitions ON indexes.[object_id] = partitions.[object_id] AND indexes.index_id = partitions.index_id'
                                                      + ' LEFT OUTER JOIN (SELECT partitions.[object_id], partitions.index_id, COUNT(DISTINCT partitions.partition_number) AS partition_count FROM sys.partitions partitions GROUP BY partitions.[object_id], partitions.index_id) IndexPartitions ON partitions.[object_id] = IndexPartitions.[object_id] AND partitions.[index_id] = IndexPartitions.[index_id]'
          END

          SET @CurrentCommand01 = @CurrentCommand01 + ' WHERE objects.[type] IN(''U'',''V'')'
                                                    + CASE WHEN @MSShippedObjects = 'N' THEN ' AND objects.is_ms_shipped = 0' ELSE '' END
                                                    + ' AND indexes.[type] IN(1,2,3,4,5,6,7)'
                                                    + ' AND indexes.is_disabled = 0 AND indexes.is_hypothetical = 0'
        END

        IF (EXISTS(SELECT * FROM @ActionsPreferred) AND @UpdateStatistics = 'COLUMNS') OR @UpdateStatistics = 'ALL'
        BEGIN
          SET @CurrentCommand01 = @CurrentCommand01 + ' UNION '
        END

        IF @UpdateStatistics IN('ALL','COLUMNS')
        BEGIN
          SET @CurrentCommand01 = @CurrentCommand01 + 'SELECT schemas.[schema_id] AS SchemaID'
                                                    + ', schemas.[name] AS SchemaName'
                                                    + ', objects.[object_id] AS ObjectID'
                                                    + ', objects.[name] AS ObjectName'
                                                    + ', RTRIM(objects.[type]) AS ObjectType'
                                                    + ', ' + CASE WHEN @Version >= 12 THEN 'tables.is_memory_optimized' ELSE '0' END + ' AS IsMemoryOptimized'
                                                    + ', NULL AS IndexID, NULL AS IndexName'
                                                    + ', NULL AS IndexType'
                                                    + ', NULL AS AllowPageLocks'
                                                    + ', NULL AS IsImageText'
                                                    + ', NULL AS IsNewLOB'
                                                    + ', NULL AS IsFileStream'
                                                    + ', NULL AS IsColumnStore'
                                                    + ', NULL AS IsComputed'
                                                    + ', NULL AS IsTimestamp'
                                                    + ', NULL AS OnReadOnlyFileGroup'
                                                    + ', NULL AS ResumableIndexOperation'
                                                    + ', stats.stats_id AS StatisticsID'
                                                    + ', stats.name AS StatisticsName'
                                                    + ', stats.no_recompute AS NoRecompute'
                                                    + ', ' + CASE WHEN @Version >= 12 THEN 'stats.is_incremental' ELSE '0' END + ' AS IsIncremental'
                                                    + ', NULL AS PartitionID'
                                                    + ', ' + CASE WHEN @PartitionLevelStatistics = 1 THEN 'dm_db_incremental_stats_properties.partition_number' ELSE 'NULL' END + ' AS PartitionNumber'
                                                    + ', NULL AS PartitionCount'
                                                    + ', 0 AS [Order]'
                                                    + ', 0 AS Selected'
                                                    + ', 0 AS Completed'
                                                    + ' FROM sys.stats stats'
                                                    + ' INNER JOIN sys.objects objects ON stats.[object_id] = objects.[object_id]'
                                                    + ' INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id]'
                                                    + ' LEFT OUTER JOIN sys.tables tables ON objects.[object_id] = tables.[object_id]'

          IF @PartitionLevelStatistics = 1
          BEGIN
            SET @CurrentCommand01 = @CurrentCommand01 + ' OUTER APPLY sys.dm_db_incremental_stats_properties(stats.object_id, stats.stats_id) dm_db_incremental_stats_properties'
          END

          SET @CurrentCommand01 = @CurrentCommand01 + ' WHERE objects.[type] IN(''U'',''V'')'
                                                    + CASE WHEN @MSShippedObjects = 'N' THEN ' AND objects.is_ms_shipped = 0' ELSE '' END
                                                    + ' AND NOT EXISTS(SELECT * FROM sys.indexes indexes WHERE indexes.[object_id] = stats.[object_id] AND indexes.index_id = stats.stats_id)'
        END

        SET @CurrentCommand01 = @CurrentCommand01 + ') IndexesStatistics'

        INSERT INTO @tmpIndexesStatistics (SchemaID, SchemaName, ObjectID, ObjectName, ObjectType, IsMemoryOptimized, IndexID, IndexName, IndexType, AllowPageLocks, IsImageText, IsNewLOB, IsFileStream, IsColumnStore, IsComputed, IsTimestamp, OnReadOnlyFileGroup, ResumableIndexOperation, StatisticsID, StatisticsName, [NoRecompute], IsIncremental, PartitionID, PartitionNumber, PartitionCount, [Order], Selected, Completed)
        EXECUTE sp_executesql @statement = @CurrentCommand01
        SET @Error = @@ERROR
        IF @Error <> 0
        BEGIN
          SET @ReturnCode = @Error
        END
      END

      IF @Indexes IS NULL
      BEGIN
        UPDATE tmpIndexesStatistics
        SET tmpIndexesStatistics.Selected = 1
        FROM @tmpIndexesStatistics tmpIndexesStatistics
      END
      ELSE
      BEGIN
        UPDATE tmpIndexesStatistics
        SET tmpIndexesStatistics.Selected = SelectedIndexes.Selected
        FROM @tmpIndexesStatistics tmpIndexesStatistics
        INNER JOIN @SelectedIndexes SelectedIndexes
        ON @CurrentDatabaseName LIKE REPLACE(SelectedIndexes.DatabaseName,'_','[_]') AND tmpIndexesStatistics.SchemaName LIKE REPLACE(SelectedIndexes.SchemaName,'_','[_]') AND tmpIndexesStatistics.ObjectName LIKE REPLACE(SelectedIndexes.ObjectName,'_','[_]') AND COALESCE(tmpIndexesStatistics.IndexName,tmpIndexesStatistics.StatisticsName) LIKE REPLACE(SelectedIndexes.IndexName,'_','[_]')
        WHERE SelectedIndexes.Selected = 1

        UPDATE tmpIndexesStatistics
        SET tmpIndexesStatistics.Selected = SelectedIndexes.Selected
        FROM @tmpIndexesStatistics tmpIndexesStatistics
        INNER JOIN @SelectedIndexes SelectedIndexes
        ON @CurrentDatabaseName LIKE REPLACE(SelectedIndexes.DatabaseName,'_','[_]') AND tmpIndexesStatistics.SchemaName LIKE REPLACE(SelectedIndexes.SchemaName,'_','[_]') AND tmpIndexesStatistics.ObjectName LIKE REPLACE(SelectedIndexes.ObjectName,'_','[_]') AND COALESCE(tmpIndexesStatistics.IndexName,tmpIndexesStatistics.StatisticsName) LIKE REPLACE(SelectedIndexes.IndexName,'_','[_]')
        WHERE SelectedIndexes.Selected = 0

        UPDATE tmpIndexesStatistics
        SET tmpIndexesStatistics.StartPosition = SelectedIndexes2.StartPosition
        FROM @tmpIndexesStatistics tmpIndexesStatistics
        INNER JOIN (SELECT tmpIndexesStatistics.SchemaName, tmpIndexesStatistics.ObjectName, tmpIndexesStatistics.IndexName, tmpIndexesStatistics.StatisticsName, MIN(SelectedIndexes.StartPosition) AS StartPosition
                    FROM @tmpIndexesStatistics tmpIndexesStatistics
                    INNER JOIN @SelectedIndexes SelectedIndexes
                    ON @CurrentDatabaseName LIKE REPLACE(SelectedIndexes.DatabaseName,'_','[_]') AND tmpIndexesStatistics.SchemaName LIKE REPLACE(SelectedIndexes.SchemaName,'_','[_]') AND tmpIndexesStatistics.ObjectName LIKE REPLACE(SelectedIndexes.ObjectName,'_','[_]') AND COALESCE(tmpIndexesStatistics.IndexName,tmpIndexesStatistics.StatisticsName) LIKE REPLACE(SelectedIndexes.IndexName,'_','[_]')
                    WHERE SelectedIndexes.Selected = 1
                    GROUP BY tmpIndexesStatistics.SchemaName, tmpIndexesStatistics.ObjectName, tmpIndexesStatistics.IndexName, tmpIndexesStatistics.StatisticsName) SelectedIndexes2
        ON tmpIndexesStatistics.SchemaName = SelectedIndexes2.SchemaName
        AND tmpIndexesStatistics.ObjectName = SelectedIndexes2.ObjectName
        AND (tmpIndexesStatistics.IndexName = SelectedIndexes2.IndexName OR tmpIndexesStatistics.IndexName IS NULL)
        AND (tmpIndexesStatistics.StatisticsName = SelectedIndexes2.StatisticsName OR tmpIndexesStatistics.StatisticsName IS NULL)
      END;

      WITH tmpIndexesStatistics AS (
      SELECT SchemaName, ObjectName, [Order], ROW_NUMBER() OVER (ORDER BY ISNULL(ResumableIndexOperation,0) DESC, StartPosition ASC, SchemaName ASC, ObjectName ASC, CASE WHEN IndexType IS NULL THEN 1 ELSE 0 END ASC, IndexType ASC, IndexName ASC, StatisticsName ASC, PartitionNumber ASC) AS RowNumber
      FROM @tmpIndexesStatistics tmpIndexesStatistics
      WHERE Selected = 1
      )
      UPDATE tmpIndexesStatistics
      SET [Order] = RowNumber

      SET @ErrorMessage = ''
      SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + '.' + QUOTENAME(SchemaName) + '.' + QUOTENAME(ObjectName) + ', '
      FROM @SelectedIndexes SelectedIndexes
      WHERE DatabaseName = @CurrentDatabaseName
      AND SchemaName NOT LIKE '%[%]%'
      AND ObjectName NOT LIKE '%[%]%'
      AND IndexName LIKE '%[%]%'
      AND NOT EXISTS (SELECT * FROM @tmpIndexesStatistics WHERE SchemaName = SelectedIndexes.SchemaName AND ObjectName = SelectedIndexes.ObjectName)
      IF @@ROWCOUNT > 0
      BEGIN
        SET @ErrorMessage = 'The following objects in the @Indexes parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
        RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
        SET @Error = @@ERROR
        RAISERROR(@EmptyLine,10,1) WITH NOWAIT
      END

      SET @ErrorMessage = ''
      SELECT @ErrorMessage = @ErrorMessage + QUOTENAME(DatabaseName) + QUOTENAME(SchemaName) + '.' + QUOTENAME(ObjectName) + '.' + QUOTENAME(IndexName) + ', '
      FROM @SelectedIndexes SelectedIndexes
      WHERE DatabaseName = @CurrentDatabaseName
      AND SchemaName NOT LIKE '%[%]%'
      AND ObjectName NOT LIKE '%[%]%'
      AND IndexName NOT LIKE '%[%]%'
      AND NOT EXISTS (SELECT * FROM @tmpIndexesStatistics WHERE SchemaName = SelectedIndexes.SchemaName AND ObjectName = SelectedIndexes.ObjectName AND IndexName = SelectedIndexes.IndexName)
      IF @@ROWCOUNT > 0
      BEGIN
        SET @ErrorMessage = 'The following indexes in the @Indexes parameter do not exist: ' + LEFT(@ErrorMessage,LEN(@ErrorMessage)-1) + '.'
        RAISERROR('%s',10,1,@ErrorMessage) WITH NOWAIT
        SET @Error = @@ERROR
        RAISERROR(@EmptyLine,10,1) WITH NOWAIT
      END

      WHILE (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
      BEGIN
        SELECT TOP 1 @CurrentIxID = ID,
                     @CurrentIxOrder = [Order],
                     @CurrentSchemaID = SchemaID,
                     @CurrentSchemaName = SchemaName,
                     @CurrentObjectID = ObjectID,
                     @CurrentObjectName = ObjectName,
                     @CurrentObjectType = ObjectType,
                     @CurrentIsMemoryOptimized = IsMemoryOptimized,
                     @CurrentIndexID = IndexID,
                     @CurrentIndexName = IndexName,
                     @CurrentIndexType = IndexType,
                     @CurrentAllowPageLocks = AllowPageLocks,
                     @CurrentIsImageText = IsImageText,
                     @CurrentIsNewLOB = IsNewLOB,
                     @CurrentIsFileStream = IsFileStream,
                     @CurrentIsColumnStore = IsColumnStore,
                     @CurrentIsComputed = IsComputed,
                     @CurrentIsTimestamp = IsTimestamp,
                     @CurrentOnReadOnlyFileGroup = OnReadOnlyFileGroup,
                     @CurrentResumableIndexOperation = ResumableIndexOperation,
                     @CurrentStatisticsID = StatisticsID,
                     @CurrentStatisticsName = StatisticsName,
                     @CurrentNoRecompute = [NoRecompute],
                     @CurrentIsIncremental = IsIncremental,
                     @CurrentPartitionID = PartitionID,
                     @CurrentPartitionNumber = PartitionNumber,
                     @CurrentPartitionCount = PartitionCount
        FROM @tmpIndexesStatistics
        WHERE Selected = 1
        AND Completed = 0
        ORDER BY [Order] ASC

        IF @@ROWCOUNT = 0
        BEGIN
          BREAK
        END

        -- Is the index a partition?
        IF @CurrentPartitionNumber IS NULL OR @CurrentPartitionCount = 1 BEGIN SET @CurrentIsPartition = 0 END ELSE BEGIN SET @CurrentIsPartition = 1 END

        -- Does the index exist?
        IF @CurrentIndexID IS NOT NULL AND EXISTS(SELECT * FROM @ActionsPreferred)
        BEGIN
          SET @CurrentCommand02 = ''

          IF @LockTimeout IS NOT NULL SET @CurrentCommand02 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand02 = @CurrentCommand02 + 'USE ' + QUOTENAME(@CurrentDatabaseName) + '; '

          IF @CurrentIsPartition = 0 SET @CurrentCommand02 = @CurrentCommand02 + 'IF EXISTS(SELECT * FROM sys.indexes indexes INNER JOIN sys.objects objects ON indexes.[object_id] = objects.[object_id] INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] IN(''U'',''V'') AND indexes.[type] IN(1,2,3,4,5,6,7) AND indexes.is_disabled = 0 AND indexes.is_hypothetical = 0 AND schemas.[schema_id] = @ParamSchemaID AND schemas.[name] = @ParamSchemaName AND objects.[object_id] = @ParamObjectID AND objects.[name] = @ParamObjectName AND objects.[type] = @ParamObjectType AND indexes.index_id = @ParamIndexID AND indexes.[name] = @ParamIndexName AND indexes.[type] = @ParamIndexType) BEGIN SET @ParamIndexExists = 1 END'
          IF @CurrentIsPartition = 1 SET @CurrentCommand02 = @CurrentCommand02 + 'IF EXISTS(SELECT * FROM sys.indexes indexes INNER JOIN sys.objects objects ON indexes.[object_id] = objects.[object_id] INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] INNER JOIN sys.partitions partitions ON indexes.[object_id] = partitions.[object_id] AND indexes.index_id = partitions.index_id WHERE objects.[type] IN(''U'',''V'') AND indexes.[type] IN(1,2,3,4,5,6,7) AND indexes.is_disabled = 0 AND indexes.is_hypothetical = 0 AND schemas.[schema_id] = @ParamSchemaID AND schemas.[name] = @ParamSchemaName AND objects.[object_id] = @ParamObjectID AND objects.[name] = @ParamObjectName AND objects.[type] = @ParamObjectType AND indexes.index_id = @ParamIndexID AND indexes.[name] = @ParamIndexName AND indexes.[type] = @ParamIndexType AND partitions.partition_id = @ParamPartitionID AND partitions.partition_number = @ParamPartitionNumber) BEGIN SET @ParamIndexExists = 1 END'

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand02, @params = N'@ParamSchemaID int, @ParamSchemaName sysname, @ParamObjectID int, @ParamObjectName sysname, @ParamObjectType sysname, @ParamIndexID int, @ParamIndexName sysname, @ParamIndexType int, @ParamPartitionID bigint, @ParamPartitionNumber int, @ParamIndexExists bit OUTPUT', @ParamSchemaID = @CurrentSchemaID, @ParamSchemaName = @CurrentSchemaName, @ParamObjectID = @CurrentObjectID, @ParamObjectName = @CurrentObjectName, @ParamObjectType = @CurrentObjectType, @ParamIndexID = @CurrentIndexID, @ParamIndexName = @CurrentIndexName, @ParamIndexType = @CurrentIndexType, @ParamPartitionID = @CurrentPartitionID, @ParamPartitionNumber = @CurrentPartitionNumber, @ParamIndexExists = @CurrentIndexExists OUTPUT

            IF @CurrentIndexExists IS NULL
            BEGIN
              SET @CurrentIndexExists = 0
              GOTO NoAction
            END
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ' The index ' + QUOTENAME(@CurrentIndexName) + ' on the object ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' is locked. It could not be checked if the index exists.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END

            GOTO NoAction
          END CATCH
        END

        -- Does the statistics exist?
        IF @CurrentStatisticsID IS NOT NULL AND @UpdateStatistics IS NOT NULL
        BEGIN
          SET @CurrentCommand03 = ''

          IF @LockTimeout IS NOT NULL SET @CurrentCommand03 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand03 = @CurrentCommand03 + 'USE ' + QUOTENAME(@CurrentDatabaseName) + '; '

          SET @CurrentCommand03 = @CurrentCommand03 + 'IF EXISTS(SELECT * FROM sys.stats stats INNER JOIN sys.objects objects ON stats.[object_id] = objects.[object_id] INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id] WHERE objects.[type] IN(''U'',''V'')' + CASE WHEN @MSShippedObjects = 'N' THEN ' AND objects.is_ms_shipped = 0' ELSE '' END + ' AND schemas.[schema_id] = @ParamSchemaID AND schemas.[name] = @ParamSchemaName AND objects.[object_id] = @ParamObjectID AND objects.[name] = @ParamObjectName AND objects.[type] = @ParamObjectType AND stats.stats_id = @ParamStatisticsID AND stats.[name] = @ParamStatisticsName) BEGIN SET @ParamStatisticsExists = 1 END'

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand03, @params = N'@ParamSchemaID int, @ParamSchemaName sysname, @ParamObjectID int, @ParamObjectName sysname, @ParamObjectType sysname, @ParamStatisticsID int, @ParamStatisticsName sysname, @ParamStatisticsExists bit OUTPUT', @ParamSchemaID = @CurrentSchemaID, @ParamSchemaName = @CurrentSchemaName, @ParamObjectID = @CurrentObjectID, @ParamObjectName = @CurrentObjectName, @ParamObjectType = @CurrentObjectType, @ParamStatisticsID = @CurrentStatisticsID, @ParamStatisticsName = @CurrentStatisticsName, @ParamStatisticsExists = @CurrentStatisticsExists OUTPUT

            IF @CurrentStatisticsExists IS NULL
            BEGIN
              SET @CurrentStatisticsExists = 0
              GOTO NoAction
            END
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ' The statistics ' + QUOTENAME(@CurrentStatisticsName) + ' on the object ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' is locked. It could not be checked if the statistics exists.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END

            GOTO NoAction
          END CATCH
        END

        -- Has the data in the statistics been modified since the statistics was last updated?
        IF @CurrentStatisticsID IS NOT NULL AND @UpdateStatistics IS NOT NULL
        BEGIN
          SET @CurrentCommand04 = ''

          IF @LockTimeout IS NOT NULL SET @CurrentCommand04 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand04 = @CurrentCommand04 + 'USE ' + QUOTENAME(@CurrentDatabaseName) + '; '

          IF @PartitionLevelStatistics = 1 AND @CurrentIsIncremental = 1
          BEGIN
            SET @CurrentCommand04 = @CurrentCommand04 + 'SELECT @ParamRowCount = [rows], @ParamModificationCounter = modification_counter FROM sys.dm_db_incremental_stats_properties (@ParamObjectID, @ParamStatisticsID) WHERE partition_number = @ParamPartitionNumber'
          END
          ELSE
          IF (@Version >= 10.504000 AND @Version < 11) OR @Version >= 11.03000
          BEGIN
            SET @CurrentCommand04 = @CurrentCommand04 + 'SELECT @ParamRowCount = [rows], @ParamModificationCounter = modification_counter FROM sys.dm_db_stats_properties (@ParamObjectID, @ParamStatisticsID)'
          END
          ELSE
          BEGIN
            SET @CurrentCommand04 = @CurrentCommand04 + 'SELECT @ParamRowCount = rowcnt, @ParamModificationCounter = rowmodctr FROM sys.sysindexes sysindexes WHERE sysindexes.[id] = @ParamObjectID AND sysindexes.[indid] = @ParamStatisticsID'
          END

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand04, @params = N'@ParamObjectID int, @ParamStatisticsID int, @ParamPartitionNumber int, @ParamRowCount bigint OUTPUT, @ParamModificationCounter bigint OUTPUT', @ParamObjectID = @CurrentObjectID, @ParamStatisticsID = @CurrentStatisticsID, @ParamPartitionNumber = @CurrentPartitionNumber, @ParamRowCount = @CurrentRowCount OUTPUT, @ParamModificationCounter = @CurrentModificationCounter OUTPUT

            IF @CurrentRowCount IS NULL SET @CurrentRowCount = 0
            IF @CurrentModificationCounter IS NULL SET @CurrentModificationCounter = 0
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ' The statistics ' + QUOTENAME(@CurrentStatisticsName) + ' on the object ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' is locked. The rows and modification_counter could not be checked.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END

            GOTO NoAction
          END CATCH
        END

        -- Is the index fragmented?
        IF @CurrentIndexID IS NOT NULL
        AND @CurrentOnReadOnlyFileGroup = 0
        AND EXISTS(SELECT * FROM @ActionsPreferred)
        AND (EXISTS(SELECT [Priority], [Action], COUNT(*) FROM @ActionsPreferred GROUP BY [Priority], [Action] HAVING COUNT(*) <> 3) OR @MinNumberOfPages > 0 OR @MaxNumberOfPages IS NOT NULL)
        BEGIN
          SET @CurrentCommand05 = ''

          IF @LockTimeout IS NOT NULL SET @CurrentCommand05 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '

          SET @CurrentCommand05 = @CurrentCommand05 + 'SELECT @ParamFragmentationLevel = MAX(avg_fragmentation_in_percent), @ParamPageCount = SUM(page_count) FROM sys.dm_db_index_physical_stats(@ParamDatabaseID, @ParamObjectID, @ParamIndexID, @ParamPartitionNumber, ''LIMITED'') WHERE alloc_unit_type_desc = ''IN_ROW_DATA'' AND index_level = 0'

          BEGIN TRY
            EXECUTE sp_executesql @statement = @CurrentCommand05, @params = N'@ParamDatabaseID int, @ParamObjectID int, @ParamIndexID int, @ParamPartitionNumber int, @ParamFragmentationLevel float OUTPUT, @ParamPageCount bigint OUTPUT', @ParamDatabaseID = @CurrentDatabaseID, @ParamObjectID = @CurrentObjectID, @ParamIndexID = @CurrentIndexID, @ParamPartitionNumber = @CurrentPartitionNumber, @ParamFragmentationLevel = @CurrentFragmentationLevel OUTPUT, @ParamPageCount = @CurrentPageCount OUTPUT
          END TRY
          BEGIN CATCH
            SET @ErrorMessage = 'Msg ' + CAST(ERROR_NUMBER() AS nvarchar) + ', ' + ISNULL(ERROR_MESSAGE(),'') + CASE WHEN ERROR_NUMBER() = 1222 THEN ' The index ' + QUOTENAME(@CurrentIndexName) + ' on the object ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' is locked. The page_count and avg_fragmentation_in_percent could not be checked.' ELSE '' END
            SET @Severity = CASE WHEN ERROR_NUMBER() IN(1205,1222) THEN @LockMessageSeverity ELSE 16 END
            RAISERROR('%s',@Severity,1,@ErrorMessage) WITH NOWAIT
            RAISERROR(@EmptyLine,10,1) WITH NOWAIT

            IF NOT (ERROR_NUMBER() IN(1205,1222) AND @LockMessageSeverity = 10)
            BEGIN
              SET @ReturnCode = ERROR_NUMBER()
            END

            GOTO NoAction
          END CATCH
        END

        -- Select fragmentation group
        IF @CurrentIndexID IS NOT NULL AND @CurrentOnReadOnlyFileGroup = 0 AND EXISTS(SELECT * FROM @ActionsPreferred)
        BEGIN
          SET @CurrentFragmentationGroup = CASE
          WHEN @CurrentFragmentationLevel >= @FragmentationLevel2 THEN 'High'
          WHEN @CurrentFragmentationLevel >= @FragmentationLevel1 AND @CurrentFragmentationLevel < @FragmentationLevel2 THEN 'Medium'
          WHEN @CurrentFragmentationLevel < @FragmentationLevel1 THEN 'Low'
          END
        END

        -- Which actions are allowed?
        IF @CurrentIndexID IS NOT NULL AND EXISTS(SELECT * FROM @ActionsPreferred)
        BEGIN
          IF @CurrentOnReadOnlyFileGroup = 0 AND @CurrentIndexType IN (1,2,3,4,5) AND (@CurrentIsMemoryOptimized = 0 OR @CurrentIsMemoryOptimized IS NULL) AND (@CurrentAllowPageLocks = 1 OR @CurrentIndexType = 5)
          BEGIN
            INSERT INTO @CurrentActionsAllowed ([Action])
            VALUES ('INDEX_REORGANIZE')
          END
          IF @CurrentOnReadOnlyFileGroup = 0 AND @CurrentIndexType IN (1,2,3,4,5) AND (@CurrentIsMemoryOptimized = 0 OR @CurrentIsMemoryOptimized IS NULL)
          BEGIN
            INSERT INTO @CurrentActionsAllowed ([Action])
            VALUES ('INDEX_REBUILD_OFFLINE')
          END
          IF @CurrentOnReadOnlyFileGroup = 0
          AND (@CurrentIsMemoryOptimized = 0 OR @CurrentIsMemoryOptimized IS NULL)
          AND (@CurrentIsPartition = 0 OR @Version >= 12)
          AND ((@CurrentIndexType = 1 AND @CurrentIsImageText = 0 AND @CurrentIsNewLOB = 0)
          OR (@CurrentIndexType = 2 AND @CurrentIsNewLOB = 0)
          OR (@CurrentIndexType = 1 AND @CurrentIsImageText = 0 AND @CurrentIsFileStream = 0 AND @Version >= 11)
          OR (@CurrentIndexType = 2 AND @Version >= 11))
          AND (@CurrentIsColumnStore = 0 OR @Version < 11)
          AND SERVERPROPERTY('EngineEdition') IN (3,5,8)
          BEGIN
            INSERT INTO @CurrentActionsAllowed ([Action])
            VALUES ('INDEX_REBUILD_ONLINE')
          END
        END

        -- Decide action
        IF @CurrentIndexID IS NOT NULL
        AND EXISTS(SELECT * FROM @ActionsPreferred)
        AND (@CurrentPageCount >= @MinNumberOfPages OR @MinNumberOfPages = 0)
        AND (@CurrentPageCount <= @MaxNumberOfPages OR @MaxNumberOfPages IS NULL)
        AND @CurrentResumableIndexOperation = 0
        BEGIN
          IF EXISTS(SELECT [Priority], [Action], COUNT(*) FROM @ActionsPreferred GROUP BY [Priority], [Action] HAVING COUNT(*) <> 3)
          BEGIN
            SELECT @CurrentAction = [Action]
            FROM @ActionsPreferred
            WHERE FragmentationGroup = @CurrentFragmentationGroup
            AND [Priority] = (SELECT MIN([Priority])
                              FROM @ActionsPreferred
                              WHERE FragmentationGroup = @CurrentFragmentationGroup
                              AND [Action] IN (SELECT [Action] FROM @CurrentActionsAllowed))
          END
          ELSE
          BEGIN
            SELECT @CurrentAction = [Action]
            FROM @ActionsPreferred
            WHERE [Priority] = (SELECT MIN([Priority])
                                FROM @ActionsPreferred
                                WHERE [Action] IN (SELECT [Action] FROM @CurrentActionsAllowed))
          END
        END

        IF @CurrentResumableIndexOperation = 1
        BEGIN
          SET @CurrentAction = 'INDEX_REBUILD_ONLINE'
        END

        -- Workaround for limitation in SQL Server, http://support.microsoft.com/kb/2292737
        IF @CurrentIndexID IS NOT NULL
        BEGIN
          SET @CurrentMaxDOP = @MaxDOP

          IF @CurrentAction = 'INDEX_REBUILD_ONLINE' AND @CurrentAllowPageLocks = 0
          BEGIN
            SET @CurrentMaxDOP = 1
          END
        END

        -- Update statistics?
        IF @CurrentStatisticsID IS NOT NULL
        AND ((@UpdateStatistics = 'ALL' AND (@CurrentIndexType IN (1,2,3,4,7) OR @CurrentIndexID IS NULL)) OR (@UpdateStatistics = 'INDEX' AND @CurrentIndexID IS NOT NULL AND @CurrentIndexType IN (1,2,3,4,7)) OR (@UpdateStatistics = 'COLUMNS' AND @CurrentIndexID IS NULL))
        AND ((@OnlyModifiedStatistics = 'N' AND @StatisticsModificationLevel IS NULL) OR (@OnlyModifiedStatistics = 'Y' AND @CurrentModificationCounter > 0) OR ((@CurrentModificationCounter * 1. / NULLIF(@CurrentRowCount,0)) * 100 >= @StatisticsModificationLevel) OR (@StatisticsModificationLevel IS NOT NULL AND @CurrentModificationCounter > 0 AND (@CurrentModificationCounter >= SQRT(@CurrentRowCount * 1000))) OR (@CurrentIsMemoryOptimized = 1 AND NOT (@Version >= 13 OR SERVERPROPERTY('EngineEdition') IN (5,8))))
        AND ((@CurrentIsPartition = 0 AND (@CurrentAction NOT IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') OR @CurrentAction IS NULL)) OR (@CurrentIsPartition = 1 AND (@CurrentPartitionNumber = @CurrentPartitionCount OR (@PartitionLevelStatistics = 1 AND @CurrentIsIncremental = 1))))
        BEGIN
          SET @CurrentUpdateStatistics = 'Y'
        END
        ELSE
        BEGIN
          SET @CurrentUpdateStatistics = 'N'
        END

        SET @CurrentStatisticsSample = @StatisticsSample
        SET @CurrentStatisticsResample = @StatisticsResample

        -- Memory-optimized tables only supports FULLSCAN and RESAMPLE in SQL Server 2014
        IF @CurrentIsMemoryOptimized = 1 AND NOT (@Version >= 13 OR SERVERPROPERTY('EngineEdition') IN (5,8)) AND (@CurrentStatisticsSample <> 100 OR @CurrentStatisticsSample IS NULL)
        BEGIN
          SET @CurrentStatisticsSample = NULL
          SET @CurrentStatisticsResample = 'Y'
        END

        -- Incremental statistics only supports RESAMPLE
        IF @PartitionLevelStatistics = 1 AND @CurrentIsIncremental = 1
        BEGIN
          SET @CurrentStatisticsSample = NULL
          SET @CurrentStatisticsResample = 'Y'
        END

        -- Create index comment
        IF @CurrentIndexID IS NOT NULL
        BEGIN
          SET @CurrentComment06 = 'ObjectType: ' + CASE WHEN @CurrentObjectType = 'U' THEN 'Table' WHEN @CurrentObjectType = 'V' THEN 'View' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'IndexType: ' + CASE WHEN @CurrentIndexType = 1 THEN 'Clustered' WHEN @CurrentIndexType = 2 THEN 'NonClustered' WHEN @CurrentIndexType = 3 THEN 'XML' WHEN @CurrentIndexType = 4 THEN 'Spatial' WHEN @CurrentIndexType = 5 THEN 'Clustered Columnstore' WHEN @CurrentIndexType = 6 THEN 'NonClustered Columnstore' WHEN @CurrentIndexType = 7 THEN 'NonClustered Hash' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'ImageText: ' + CASE WHEN @CurrentIsImageText = 1 THEN 'Yes' WHEN @CurrentIsImageText = 0 THEN 'No' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'NewLOB: ' + CASE WHEN @CurrentIsNewLOB = 1 THEN 'Yes' WHEN @CurrentIsNewLOB = 0 THEN 'No' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'FileStream: ' + CASE WHEN @CurrentIsFileStream = 1 THEN 'Yes' WHEN @CurrentIsFileStream = 0 THEN 'No' ELSE 'N/A' END + ', '
          IF @Version >= 11 SET @CurrentComment06 = @CurrentComment06 + 'ColumnStore: ' + CASE WHEN @CurrentIsColumnStore = 1 THEN 'Yes' WHEN @CurrentIsColumnStore = 0 THEN 'No' ELSE 'N/A' END + ', '
          IF @Version >= 14 AND @Resumable = 'Y' SET @CurrentComment06 = @CurrentComment06 + 'Computed: ' + CASE WHEN @CurrentIsComputed = 1 THEN 'Yes' WHEN @CurrentIsComputed = 0 THEN 'No' ELSE 'N/A' END + ', '
          IF @Version >= 14 AND @Resumable = 'Y' SET @CurrentComment06 = @CurrentComment06 + 'Timestamp: ' + CASE WHEN @CurrentIsTimestamp = 1 THEN 'Yes' WHEN @CurrentIsTimestamp = 0 THEN 'No' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'AllowPageLocks: ' + CASE WHEN @CurrentAllowPageLocks = 1 THEN 'Yes' WHEN @CurrentAllowPageLocks = 0 THEN 'No' ELSE 'N/A' END + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'PageCount: ' + ISNULL(CAST(@CurrentPageCount AS nvarchar),'N/A') + ', '
          SET @CurrentComment06 = @CurrentComment06 + 'Fragmentation: ' + ISNULL(CAST(@CurrentFragmentationLevel AS nvarchar),'N/A')
        END

        IF @CurrentIndexID IS NOT NULL AND (@CurrentPageCount IS NOT NULL OR @CurrentFragmentationLevel IS NOT NULL)
        BEGIN
        SET @CurrentExtendedInfo06 = (SELECT *
                                      FROM (SELECT CAST(@CurrentPageCount AS nvarchar) AS [PageCount],
                                                   CAST(@CurrentFragmentationLevel AS nvarchar) AS Fragmentation
                                      ) ExtendedInfo FOR XML RAW('ExtendedInfo'), ELEMENTS)
        END

        -- Create statistics comment
        IF @CurrentStatisticsID IS NOT NULL
        BEGIN
          SET @CurrentComment07 = 'ObjectType: ' + CASE WHEN @CurrentObjectType = 'U' THEN 'Table' WHEN @CurrentObjectType = 'V' THEN 'View' ELSE 'N/A' END + ', '
          SET @CurrentComment07 = @CurrentComment07 + 'IndexType: ' + CASE WHEN @CurrentIndexID IS NOT NULL THEN 'Index' ELSE 'Column' END + ', '
          IF @CurrentIndexID IS NOT NULL SET @CurrentComment07 = @CurrentComment07 + 'IndexType: ' + CASE WHEN @CurrentIndexType = 1 THEN 'Clustered' WHEN @CurrentIndexType = 2 THEN 'NonClustered' WHEN @CurrentIndexType = 3 THEN 'XML' WHEN @CurrentIndexType = 4 THEN 'Spatial' WHEN @CurrentIndexType = 5 THEN 'Clustered Columnstore' WHEN @CurrentIndexType = 6 THEN 'NonClustered Columnstore' WHEN @CurrentIndexType = 7 THEN 'NonClustered Hash' ELSE 'N/A' END + ', '
          SET @CurrentComment07 = @CurrentComment07 + 'Incremental: ' + CASE WHEN @CurrentIsIncremental = 1 THEN 'Y' WHEN @CurrentIsIncremental = 0 THEN 'N' ELSE 'N/A' END + ', '
          SET @CurrentComment07 = @CurrentComment07 + 'RowCount: ' + ISNULL(CAST(@CurrentRowCount AS nvarchar),'N/A') + ', '
          SET @CurrentComment07 = @CurrentComment07 + 'ModificationCounter: ' + ISNULL(CAST(@CurrentModificationCounter AS nvarchar),'N/A')
        END

        IF @CurrentStatisticsID IS NOT NULL AND (@CurrentRowCount IS NOT NULL OR @CurrentModificationCounter IS NOT NULL)
        BEGIN
        SET @CurrentExtendedInfo07 = (SELECT *
                                      FROM (SELECT CAST(@CurrentRowCount AS nvarchar) AS [RowCount],
                                                   CAST(@CurrentModificationCounter AS nvarchar) AS ModificationCounter
                                      ) ExtendedInfo FOR XML RAW('ExtendedInfo'), ELEMENTS)
        END

        IF @CurrentIndexID IS NOT NULL AND @CurrentAction IS NOT NULL AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
        BEGIN
          SET @CurrentCommandType06 = 'ALTER_INDEX'

          SET @CurrentCommand06 = ''
          IF @LockTimeout IS NOT NULL SET @CurrentCommand06 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand06 = @CurrentCommand06 + 'ALTER INDEX ' + QUOTENAME(@CurrentIndexName) + ' ON ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName)
          IF @CurrentResumableIndexOperation = 1 SET @CurrentCommand06 = @CurrentCommand06 + ' RESUME'
          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @CurrentResumableIndexOperation = 0 SET @CurrentCommand06 = @CurrentCommand06 + ' REBUILD'
          IF @CurrentAction IN('INDEX_REORGANIZE') AND @CurrentResumableIndexOperation = 0 SET @CurrentCommand06 = @CurrentCommand06 + ' REORGANIZE'
          IF @CurrentIsPartition = 1 AND @CurrentResumableIndexOperation = 0 SET @CurrentCommand06 = @CurrentCommand06 + ' PARTITION = ' + CAST(@CurrentPartitionNumber AS nvarchar)

          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @SortInTempdb = 'Y' AND @CurrentIndexType IN(1,2,3,4) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'SORT_IN_TEMPDB = ON'
          END

          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @SortInTempdb = 'N' AND @CurrentIndexType IN(1,2,3,4) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'SORT_IN_TEMPDB = OFF'
          END

          IF @CurrentAction = 'INDEX_REBUILD_ONLINE' AND (@CurrentIsPartition = 0 OR @Version >= 12) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'ONLINE = ON' + CASE WHEN @WaitAtLowPriorityMaxDuration IS NOT NULL THEN ' (WAIT_AT_LOW_PRIORITY (MAX_DURATION = ' + CAST(@WaitAtLowPriorityMaxDuration AS nvarchar) + ', ABORT_AFTER_WAIT = ' + UPPER(@WaitAtLowPriorityAbortAfterWait) + '))' ELSE '' END
          END

          IF @CurrentAction = 'INDEX_REBUILD_OFFLINE' AND (@CurrentIsPartition = 0 OR @Version >= 12) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'ONLINE = OFF'
          END

          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @CurrentMaxDOP IS NOT NULL
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'MAXDOP = ' + CAST(@CurrentMaxDOP AS nvarchar)
          END

          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @FillFactor IS NOT NULL AND @CurrentIsPartition = 0 AND @CurrentIndexType IN(1,2,3,4) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'FILLFACTOR = ' + CAST(@FillFactor AS nvarchar)
          END

          IF @CurrentAction IN('INDEX_REBUILD_ONLINE','INDEX_REBUILD_OFFLINE') AND @PadIndex = 'Y' AND @CurrentIsPartition = 0 AND @CurrentIndexType IN(1,2,3,4) AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'PAD_INDEX = ON'
          END

          IF (@Version >= 14 OR SERVERPROPERTY('EngineEdition') IN (5,8)) AND @CurrentAction = 'INDEX_REBUILD_ONLINE' AND @CurrentResumableIndexOperation = 0
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT CASE WHEN @Resumable = 'Y' AND @CurrentIndexType IN(1,2) AND @CurrentIsComputed = 0 AND @CurrentIsTimestamp = 0 THEN 'RESUMABLE = ON' ELSE 'RESUMABLE = OFF' END
          END

          IF (@Version >= 14 OR SERVERPROPERTY('EngineEdition') IN (5,8)) AND @CurrentAction = 'INDEX_REBUILD_ONLINE' AND @CurrentResumableIndexOperation = 0 AND @Resumable = 'Y'  AND @CurrentIndexType IN(1,2) AND @CurrentIsComputed = 0 AND @CurrentIsTimestamp = 0 AND @TimeLimit IS NOT NULL
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'MAX_DURATION = ' + CAST(DATEDIFF(MINUTE,GETDATE(),DATEADD(ss,@TimeLimit,@StartTime)) AS nvarchar(max))
          END

          IF @CurrentAction IN('INDEX_REORGANIZE') AND @LOBCompaction = 'Y'
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'LOB_COMPACTION = ON'
          END

          IF @CurrentAction IN('INDEX_REORGANIZE') AND @LOBCompaction = 'N'
          BEGIN
            INSERT INTO @CurrentAlterIndexWithClauseArguments (Argument)
            SELECT 'LOB_COMPACTION = OFF'
          END

          IF EXISTS (SELECT * FROM @CurrentAlterIndexWithClauseArguments)
          BEGIN
            SET @CurrentAlterIndexWithClause = ' WITH ('

            WHILE (1 = 1)
            BEGIN
              SELECT TOP 1 @CurrentAlterIndexArgumentID = ID,
                           @CurrentAlterIndexArgument = Argument
              FROM @CurrentAlterIndexWithClauseArguments
              WHERE Added = 0
              ORDER BY ID ASC

              IF @@ROWCOUNT = 0
              BEGIN
                BREAK
              END

              SET @CurrentAlterIndexWithClause = @CurrentAlterIndexWithClause + @CurrentAlterIndexArgument + ', '

              UPDATE @CurrentAlterIndexWithClauseArguments
              SET Added = 1
              WHERE [ID] = @CurrentAlterIndexArgumentID
            END

            SET @CurrentAlterIndexWithClause = RTRIM(@CurrentAlterIndexWithClause)

            SET @CurrentAlterIndexWithClause = LEFT(@CurrentAlterIndexWithClause,LEN(@CurrentAlterIndexWithClause) - 1)

            SET @CurrentAlterIndexWithClause = @CurrentAlterIndexWithClause + ')'
          END

          IF @CurrentAlterIndexWithClause IS NOT NULL SET @CurrentCommand06 = @CurrentCommand06 + @CurrentAlterIndexWithClause

          EXECUTE @CurrentCommandOutput06 = [dbo].[CommandExecute] @Command = @CurrentCommand06, @CommandType = @CurrentCommandType06, @Mode = 2, @Comment = @CurrentComment06, @DatabaseName = @CurrentDatabaseName, @SchemaName = @CurrentSchemaName, @ObjectName = @CurrentObjectName, @ObjectType = @CurrentObjectType, @IndexName = @CurrentIndexName, @IndexType = @CurrentIndexType, @PartitionNumber = @CurrentPartitionNumber, @ExtendedInfo = @CurrentExtendedInfo06, @LockMessageSeverity = @LockMessageSeverity, @LogToTable = @LogToTable, @Execute = @Execute
          SET @Error = @@ERROR
          IF @Error <> 0 SET @CurrentCommandOutput06 = @Error
          IF @CurrentCommandOutput06 <> 0 SET @ReturnCode = @CurrentCommandOutput06

          IF @Delay > 0
          BEGIN
            SET @CurrentDelay = DATEADD(ss,@Delay,'1900-01-01')
            WAITFOR DELAY @CurrentDelay
          END
        END

        SET @CurrentMaxDOP = @MaxDOP

        IF @CurrentStatisticsID IS NOT NULL AND @CurrentUpdateStatistics = 'Y' AND (GETDATE() < DATEADD(ss,@TimeLimit,@StartTime) OR @TimeLimit IS NULL)
        BEGIN
          SET @CurrentCommandType07 = 'UPDATE_STATISTICS'

          SET @CurrentCommand07 = ''
          IF @LockTimeout IS NOT NULL SET @CurrentCommand07 = 'SET LOCK_TIMEOUT ' + CAST(@LockTimeout * 1000 AS nvarchar) + '; '
          SET @CurrentCommand07 = @CurrentCommand07 + 'UPDATE STATISTICS ' + QUOTENAME(@CurrentDatabaseName) + '.' + QUOTENAME(@CurrentSchemaName) + '.' + QUOTENAME(@CurrentObjectName) + ' ' + QUOTENAME(@CurrentStatisticsName)

          IF @CurrentMaxDOP IS NOT NULL AND ((@Version >= 12.06024 AND @Version < 13) OR (@Version >= 13.05026 AND @Version < 14) OR @Version >= 14.030154)
          BEGIN
            INSERT INTO @CurrentUpdateStatisticsWithClauseArguments (Argument)
            SELECT 'MAXDOP = ' + CAST(@CurrentMaxDOP AS nvarchar)
          END

          IF @CurrentStatisticsSample = 100
          BEGIN
            INSERT INTO @CurrentUpdateStatisticsWithClauseArguments (Argument)
            SELECT 'FULLSCAN'
          END

          IF @CurrentStatisticsSample IS NOT NULL AND @CurrentStatisticsSample <> 100
          BEGIN
            INSERT INTO @CurrentUpdateStatisticsWithClauseArguments (Argument)
            SELECT 'SAMPLE ' + CAST(@CurrentStatisticsSample AS nvarchar) + ' PERCENT'
          END

          IF @CurrentStatisticsResample = 'Y'
          BEGIN
            INSERT INTO @CurrentUpdateStatisticsWithClauseArguments (Argument)
            SELECT 'RESAMPLE'
          END

          IF @CurrentNoRecompute = 1
          BEGIN
            INSERT INTO @CurrentUpdateStatisticsWithClauseArguments (Argument)
            SELECT 'NORECOMPUTE'
          END

          IF EXISTS (SELECT * FROM @CurrentUpdateStatisticsWithClauseArguments)
          BEGIN
            SET @CurrentUpdateStatisticsWithClause = ' WITH'

            WHILE (1 = 1)
            BEGIN
              SELECT TOP 1 @CurrentUpdateStatisticsArgumentID = ID,
                           @CurrentUpdateStatisticsArgument = Argument
              FROM @CurrentUpdateStatisticsWithClauseArguments
              WHERE Added = 0
              ORDER BY ID ASC

              IF @@ROWCOUNT = 0
              BEGIN
                BREAK
              END

              SET @CurrentUpdateStatisticsWithClause = @CurrentUpdateStatisticsWithClause + ' ' + @CurrentUpdateStatisticsArgument + ','

              UPDATE @CurrentUpdateStatisticsWithClauseArguments
              SET Added = 1
              WHERE [ID] = @CurrentUpdateStatisticsArgumentID
            END

            SET @CurrentUpdateStatisticsWithClause = LEFT(@CurrentUpdateStatisticsWithClause,LEN(@CurrentUpdateStatisticsWithClause) - 1)
          END

          IF @CurrentUpdateStatisticsWithClause IS NOT NULL SET @CurrentCommand07 = @CurrentCommand07 + @CurrentUpdateStatisticsWithClause

          IF @PartitionLevelStatistics = 1 AND @CurrentIsIncremental = 1 AND @CurrentPartitionNumber IS NOT NULL SET @CurrentCommand07 = @CurrentCommand07 + ' ON PARTITIONS(' + CAST(@CurrentPartitionNumber AS nvarchar(max)) + ')'

          EXECUTE @CurrentCommandOutput07 = [dbo].[CommandExecute] @Command = @CurrentCommand07, @CommandType = @CurrentCommandType07, @Mode = 2, @Comment = @CurrentComment07, @DatabaseName = @CurrentDatabaseName, @SchemaName = @CurrentSchemaName, @ObjectName = @CurrentObjectName, @ObjectType = @CurrentObjectType, @IndexName = @CurrentIndexName, @IndexType = @CurrentIndexType, @StatisticsName = @CurrentStatisticsName, @ExtendedInfo = @CurrentExtendedInfo07, @LockMessageSeverity = @LockMessageSeverity, @LogToTable = @LogToTable, @Execute = @Execute
          SET @Error = @@ERROR
          IF @Error <> 0 SET @CurrentCommandOutput07 = @Error
          IF @CurrentCommandOutput07 <> 0 SET @ReturnCode = @CurrentCommandOutput07
        END

        NoAction:

        -- Update that the index or statistics is completed
        UPDATE @tmpIndexesStatistics
        SET Completed = 1
        WHERE Selected = 1
        AND Completed = 0
        AND [Order] = @CurrentIxOrder
        AND ID = @CurrentIxID

        -- Clear variables
        SET @CurrentCommand02 = NULL
        SET @CurrentCommand03 = NULL
        SET @CurrentCommand04 = NULL
        SET @CurrentCommand05 = NULL
        SET @CurrentCommand06 = NULL
        SET @CurrentCommand07 = NULL

        SET @CurrentCommandOutput06 = NULL
        SET @CurrentCommandOutput07 = NULL

        SET @CurrentCommandType06 = NULL
        SET @CurrentCommandType07 = NULL

        SET @CurrentComment06 = NULL
        SET @CurrentComment07 = NULL

        SET @CurrentExtendedInfo06 = NULL
        SET @CurrentExtendedInfo07 = NULL

        SET @CurrentIxID = NULL
        SET @CurrentIxOrder = NULL
        SET @CurrentSchemaID = NULL
        SET @CurrentSchemaName = NULL
        SET @CurrentObjectID = NULL
        SET @CurrentObjectName = NULL
        SET @CurrentObjectType = NULL
        SET @CurrentIsMemoryOptimized = NULL
        SET @CurrentIndexID = NULL
        SET @CurrentIndexName = NULL
        SET @CurrentIndexType = NULL
        SET @CurrentStatisticsID = NULL
        SET @CurrentStatisticsName = NULL
        SET @CurrentPartitionID = NULL
        SET @CurrentPartitionNumber = NULL
        SET @CurrentPartitionCount = NULL
        SET @CurrentIsPartition = NULL
        SET @CurrentIndexExists = NULL
        SET @CurrentStatisticsExists = NULL
        SET @CurrentIsImageText = NULL
        SET @CurrentIsNewLOB = NULL
        SET @CurrentIsFileStream = NULL
        SET @CurrentIsColumnStore = NULL
        SET @CurrentIsComputed = NULL
        SET @CurrentIsTimestamp = NULL
        SET @CurrentAllowPageLocks = NULL
        SET @CurrentNoRecompute = NULL
        SET @CurrentIsIncremental = NULL
        SET @CurrentRowCount = NULL
        SET @CurrentModificationCounter = NULL
        SET @CurrentOnReadOnlyFileGroup = NULL
        SET @CurrentResumableIndexOperation = NULL
        SET @CurrentFragmentationLevel = NULL
        SET @CurrentPageCount = NULL
        SET @CurrentFragmentationGroup = NULL
        SET @CurrentAction = NULL
        SET @CurrentMaxDOP = NULL
        SET @CurrentUpdateStatistics = NULL
        SET @CurrentStatisticsSample = NULL
        SET @CurrentStatisticsResample = NULL
        SET @CurrentAlterIndexArgumentID = NULL
        SET @CurrentAlterIndexArgument = NULL
        SET @CurrentAlterIndexWithClause = NULL
        SET @CurrentUpdateStatisticsArgumentID = NULL
        SET @CurrentUpdateStatisticsArgument = NULL
        SET @CurrentUpdateStatisticsWithClause = NULL

        DELETE FROM @CurrentActionsAllowed
        DELETE FROM @CurrentAlterIndexWithClauseArguments
        DELETE FROM @CurrentUpdateStatisticsWithClauseArguments

      END

    END

    IF @CurrentDatabaseState = 'SUSPECT'
    BEGIN
      SET @ErrorMessage = 'The database ' + QUOTENAME(@CurrentDatabaseName) + ' is in a SUSPECT state.'
      RAISERROR('%s',16,1,@ErrorMessage) WITH NOWAIT
      RAISERROR(@EmptyLine,10,1) WITH NOWAIT
      SET @Error = @@ERROR
    END

    -- Update that the database is completed
    IF @DatabasesInParallel = 'Y'
    BEGIN
      UPDATE dbo.QueueDatabase
      SET DatabaseEndTime = GETDATE()
      WHERE QueueID = @QueueID
      AND DatabaseName = @CurrentDatabaseName
    END
    ELSE
    BEGIN
      UPDATE @tmpDatabases
      SET Completed = 1
      WHERE Selected = 1
      AND Completed = 0
      AND ID = @CurrentDBID
    END

    -- Clear variables
    SET @CurrentDBID = NULL
    SET @CurrentDatabaseName = NULL

    SET @CurrentDatabaseID = NULL
    SET @CurrentUserAccess = NULL
    SET @CurrentIsReadOnly = NULL
    SET @CurrentDatabaseState = NULL
    SET @CurrentInStandby = NULL
    SET @CurrentRecoveryModel = NULL

    SET @CurrentIsDatabaseAccessible = NULL
    SET @CurrentAvailabilityGroup = NULL
    SET @CurrentAvailabilityGroupRole = NULL
    SET @CurrentDatabaseMirroringRole = NULL

    SET @CurrentCommand01 = NULL

    DELETE FROM @tmpIndexesStatistics

  END

  ----------------------------------------------------------------------------------------------------
  --// Log completing information                                                                 //--
  ----------------------------------------------------------------------------------------------------

  Logging:
  SET @EndMessage = 'Date and time: ' + CONVERT(nvarchar,GETDATE(),120)
  RAISERROR('%s',10,1,@EndMessage) WITH NOWAIT

  RAISERROR(@EmptyLine,10,1) WITH NOWAIT

  IF @ReturnCode <> 0
  BEGIN
    RETURN @ReturnCode
  END

  ----------------------------------------------------------------------------------------------------

END

GO
/****** Object:  StoredProcedure [Maintenance].[PurgeBackupHistory]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Charles Wolff
-- Create date: 3/12/2018
-- Description:	This will purge the backup History out of MSDB. Currently set to 3 months because that is what we keep on the NAS
-- =============================================
CREATE   PROCEDURE [Maintenance].[PurgeBackupHistory]

AS
BEGIN
	DECLARE @DateMarker DATETIME
	
	SET @DateMarker = DATEADD(MONTH,-3,SYSDATETIME())
	 
	EXEC msdb.dbo.sp_delete_backuphistory @oldest_date = @DateMarker;  
END
GO
/****** Object:  StoredProcedure [Maintenance].[PurgeSQLJobHistory]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Charles, Wolff
-- Create date: 3/12/2018
-- Description:	This will purge SQL Agent Job History back for 3 Months
-- =============================================
CREATE PROCEDURE [Maintenance].[PurgeSQLJobHistory]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @DateMarker DATETIME

	SET @DateMarker = DATEADD(MONTH,-3,SYSDATETIME())

	EXEC msdb.dbo.sp_purge_jobhistory @oldest_date = @DateMarker

END
GO
/****** Object:  StoredProcedure [Maintenance].[SQLAgent_start_job_wait]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Maintenance].[SQLAgent_start_job_wait]
(
@job_name SYSNAME,
@step_name sysname = null,
@WaitTime DATETIME = '00:00:05', -- this is parameter for check frequency
@JobCompletionStatus INT = NULL OUTPUT
)
AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET NOCOUNT ON

-- DECLARE @job_name sysname
DECLARE @job_id UNIQUEIDENTIFIER
DECLARE @job_owner sysname

--Createing TEMP TABLE
CREATE TABLE #xp_results (job_id UNIQUEIDENTIFIER NOT NULL,
last_run_date INT NOT NULL,
last_run_time INT NOT NULL,
next_run_date INT NOT NULL,
next_run_time INT NOT NULL,
next_run_schedule_id INT NOT NULL,
requested_to_run INT NOT NULL, -- BOOL
request_source INT NOT NULL,
request_source_id sysname COLLATE database_default NULL,
running INT NOT NULL, -- BOOL
current_step INT NOT NULL,
current_retry_attempt INT NOT NULL,
job_state INT NOT NULL)

SELECT @job_id = job_id FROM msdb.dbo.sysjobs
WHERE name = @job_name

SELECT @job_owner = SUSER_SNAME()

INSERT INTO #xp_results
EXECUTE master.dbo.xp_sqlagent_enum_jobs 1, @job_owner, @job_id 

-- Start the job if the job is not running
IF NOT EXISTS(SELECT TOP 1 * FROM #xp_results WHERE running = 1)
EXEC msdb.dbo.sp_start_job @job_name = @job_name, @step_name = @step_name

-- Give 2 sec for think time.
WAITFOR DELAY '00:00:02'

DELETE FROM #xp_results
INSERT INTO #xp_results
EXECUTE master.dbo.xp_sqlagent_enum_jobs 1, @job_owner, @job_id 

WHILE EXISTS(SELECT TOP 1 * FROM #xp_results WHERE running = 1)
BEGIN

WAITFOR DELAY @WaitTime

-- Information 
RAISERROR('JOB IS RUNNING', 0, 1 ) WITH NOWAIT 

DELETE FROM #xp_results

INSERT INTO #xp_results
EXECUTE master.dbo.xp_sqlagent_enum_jobs 1, @job_owner, @job_id 

END

SELECT TOP 1 @JobCompletionStatus = run_status 
FROM msdb.dbo.sysjobhistory
WHERE job_id = @job_id
AND step_id = 0
ORDER BY run_date DESC, run_time DESC

IF @JobCompletionStatus = 1
PRINT 'The job ran Successful' 
ELSE IF @JobCompletionStatus = 3
PRINT 'The job is Cancelled'
ELSE 
BEGIN
RAISERROR ('[ERROR]:%s job is either failed or not in good state. Please check',16, 1, @job_name) WITH LOG
END

RETURN @JobCompletionStatus
GO
/****** Object:  StoredProcedure [Maintenance].[UserDatabasesToSimple]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Charles Wolff
-- Create date: 4/12/2018
-- Description:	This will be run after the restore process on the lower environments. 
--				This is so that on lower environments, all user databases are in Simple
--				The log truncation has been commented out per a conversation with 
--				Sean Basham, saying that if we managed the logs well in production
--				it should transfer down well enough. If something flairs up
--				we will deal with it manually.

-- Updated by:  Don Bulaong
-- Update Date: 6/4/2019
-- Description: Added isTruncateLogFile parameter. When 1, the transaction log file will shrink to 1GB.
-- =============================================
CREATE PROCEDURE [Maintenance].[UserDatabasesToSimple] (@isTruncateLogFile BIT = NULL)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare
   @isql varchar(2000),
   @dbname varchar(64),
   @logfile varchar(128)
   
   declare c1 cursor for 
   SELECT  d.name, mf.name as logfile--, physical_name AS current_file_location, size
   FROM sys.master_files mf
      inner join sys.databases d
      on mf.database_id = d.database_id
   where recovery_model_desc <> 'SIMPLE'
   and d.name not in ('master','model','msdb','tempdb','SSISDB') 
   and mf.type_desc = 'LOG'   
   open c1
   fetch next from c1 into @dbname, @logfile
   While @@fetch_status <> -1
      begin
      select @isql = 'ALTER DATABASE ' + @dbname + ' SET RECOVERY SIMPLE'
      --print @isql
      exec(@isql)
	  
	  if @isTruncateLogFile=1 
	  BEGIN
		  select @isql='USE ' + @dbname + ' checkpoint'
		  --print @isql
		  exec(@isql)
		  select @isql='USE ' + @dbname + ' DBCC SHRINKFILE (' + @logfile + ', 1024)'
		  --print @isql
		  exec(@isql)
      END

      fetch next from c1 into @dbname, @logfile
      end
   close c1
   deallocate c1
END
GO
/****** Object:  StoredProcedure [UserMngmt].[ManageAgentJobs]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROCEDURE [UserMngmt].[ManageAgentJobs] 
(
@JobName VARCHAR(100)
,@JobStep INT = NULL
,@JobAction BIT = 1
,@JobWait BIT = 0
,@Debug BIT = 0
)

AS
BEGIN

    SET NOCOUNT ON;

    DECLARE @CurrentUserName AS NVARCHAR(128)
    , @ExecutionId INT
    
    EXECUTE Logging.LogNewExecution	@ExecutionName = @JobName;	

    SELECT @ExecutionId = @@IDENTITY;

    SELECT @CurrentUserName = SUSER_SNAME()

    EXECUTE [Utilities].[ManageSingleAgentJob]
    @JobName = @JobName
    ,@JobStep = @JobStep
    ,@JobAction = @JobAction
    ,@UserThatCalledTheProc = @CurrentUserName
	,@WithJobWait = @JobWait
    ,@ExecutionId = @ExecutionId
    --,@WithJobWait BIT = 0
    ,@Debug = @Debug

END
GO
/****** Object:  StoredProcedure [UserMngmt].[WhatCanIRun]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE     PROCEDURE [UserMngmt].[WhatCanIRun]

AS 
BEGIN
    SET NOCOUNT ON;
	

	/*Create Working Variables*/
	DECLARE @CurrentUserName AS NVARCHAR(128)


	/*Fill the needed working variables*/
	SELECT @CurrentUserName = SUSER_SNAME()

	    EXECUTE Utilities.uspWhatCanIRunInner
		@UserNameToCheck = @CurrentUserName

END
GO
/****** Object:  StoredProcedure [Utilities].[DeleteBackupFiles]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Utilities].[DeleteBackupFiles]
(
@Path NVARCHAR(500)
,@DaysToDelete DATETIME
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	EXEC master.sys.xp_delete_file 0,@Path,'BAK',@DaysToDelete,0;
	EXEC master.sys.xp_delete_file 0,@Path,'DIF',@DaysToDelete,0;
	EXEC master.sys.xp_delete_file 0,@Path,'TRN',@DaysToDelete,0;
END
GO
/****** Object:  StoredProcedure [Utilities].[ManageAgentJobs]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[OdAttendance].[AttendanceManageJobs]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
This stored procedure is for the Attendance developers to be able to start any 
SQL agent job in the Attendance Category
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2019-04-15: Created by Charles Wolff
2019-06-24: Added the section to log to a table; Charles Wolff
2019-06-25: Changed the job to have much different logic. In all of the checks, I added updates
			statements to update the ExecutionLog Table. Changes all the print statements to Raiserror
			statments. Then changed from using msdb.dbo.sp_start_job to DBMaint.Maintenance.SQLAgent_start_job_wait.
			This will allow for us to do checks on if the job was successful or not. Lastly, I added
			a TRY and CATCH block.

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC DBMaint.OdAttendance.AttendanceManageJobs @JobName = 'TestJob',     -- varchar(100)
                                               @JobAction = 1 -- bit
                                               ,@JobStep = 1       -- int

**************************************************************************************************/
CREATE           PROCEDURE [Utilities].[ManageAgentJobs]
(
@JobName VARCHAR(100) 
,@JobAction BIT = 1
,@JobStep INT = NULL
,@jobcategory VARCHAR(20)
,@ExecutionID INT
)
WITH EXECUTE AS 'DeveloperJobExec'
AS

BEGIN

/*Create the working variables*/
--This one hold the name of the Job Step you want to start on 
DECLARE @JobStepName VARCHAR(150)
--This is to hold a int to say what happened to the job
, @JobCompletionStatus INT
/* Used for the details of the exception */
, @ErrMsg NVARCHAR(4000)
, @ErrorMessage NVARCHAR(4000)
, @ErrorSeverity SMALLINT
, @E_DatabaseName VARCHAR(100)
, @E_SchemaName VARCHAR(100)
, @E_ProcedureName VARCHAR(255)
, @E_ErrorLineNumber AS SMALLINT
, @Outcome VARCHAR(100)
, @ErrorDetails VARCHAR(100)	;

BEGIN TRY
/*This will set the Job Step to be the default for the job
instead of it assuming step 1 is the default*/
IF @JobStep IS NULL
	BEGIN
	    SELECT @JobStep = (SELECT TOP 1 sj.start_step_id
		FROM msdb.dbo.sysjobs sj
		INNER JOIN msdb.dbo.sysjobsteps sjs
		ON sjs.job_id = sj.job_id
		WHERE sj.[name] = @JobName)
	END

/*
--Log Execution to the table. Will update status later in SPROC
EXECUTE DBMaint.Logging.LogNewExecution	
@ExecutionName = @JobName

--Set @exeuction ID to be what the last Identity in DBMaint.Logging.ExecutionLog is
--At some point, may want to figure out how to make Scope_Identity() Work. 
SELECT @ExecutionID = @@IDENTITY


--Change Context to switch to the Job Exec User.
EXECUTE AS USER = 'DeveloperJobExec'
*/



--Check if the job exists, if it doesn't raise error and update Execution Log
IF NOT EXISTS (SELECT [name] FROM msdb.dbo.sysjobs WHERE [name] = @JobName)
BEGIN
    SELECT @Outcome = 'Failed'
	SELECT @ErrorDetails = (@JobName + ' does not exist')
	
	SELECT @ErrMsg = 'The job ' + @JobName + ' does not exist. Please check your spelling or that that job exists. If the problem continues, please reach out to the DBAs'
	RAISERROR (@ErrMsg, 18, 1)
		
END 

--Check to see if the job is in the correct category. If not raise error and update Execution Log
IF NOT EXISTS (SELECT sj.[name] FROM msdb.dbo.sysjobs sj INNER JOIN msdb.dbo.syscategories sc
			ON sc.category_id = sj.category_id WHERE sj.name = @JobName AND sc.name = @JobCategory)
	BEGIN
		SELECT @Outcome = 'Failed'
		SELECT @ErrorDetails = (@JobName + ' is not in the category ' + @JobCategory)
		

		SELECT @ErrMsg = 'The Job ' + @JobName + ' is not in the category ' + @JobCategory + '. At this time you do not have permissions to start jobs that
		aren''t in that category. Please contact your DBA team if this is an issue and we will see if we can resolve it.'
		RAISERROR (@ErrMsg, 18, 1)	

	END

--Check to see if job has step requested to start at. If not, raise error and update Execution Log
IF @JobStep > (SELECT COUNT(sjs.step_name) FROM msdb.dbo.sysjobs sj INNER JOIN msdb.dbo.sysjobsteps sjs
				ON sjs.job_id = sj.job_id WHERE sj.[name] = @JobName)
	BEGIN

		SELECT @Outcome = 'Failed'
		SELECT @ErrorDetails = (@JobName + ' Does Not have a step ' + CAST(@JobStep AS VARCHAR(5)))

		SELECT @ErrMsg = @JobName + ' does not have a step ' + CAST(@JobStep AS VARCHAR(5)) + '. Please make sure you are starting at a correct step number.'
		RAISERROR (@ErrMsg, 18, 1)
	END



--Job Start Section
/*Set @JobstepName to what the default job step is if there is no user input
or if there is user input, set it to that. This assumes that the job step is 
valid because of earlier checks*/
IF @JobAction = 1

	--Step Name
	BEGIN			
		SELECT @JobStepName = 
		(SELECT sjs.step_name
		FROM msdb.dbo.sysjobs sj
		INNER JOIN msdb.dbo.sysjobsteps sjs
		ON sjs.job_id = sj.job_id
		WHERE sj.[name] = @JobName
		AND sjs.step_id = @JobStep)

		/*Start the job with custom SPROC. This will wait for the job to complete or fail.
		Please note, the DeveloperJobExec User will need execute on master.dbo.xp_sqlagent_enum_jobs*/
		EXECUTE DBMaint.Maintenance.SQLAgent_start_job_wait @job_name = @JobName, 
													@step_name =  @JobStepName,
		                                            @WaitTime = '00:00:15',     
		                                            @JobCompletionStatus = @JobCompletionStatus OUTPUT
	    /*This will be used if the job completed successfully*/
		IF @JobCompletionStatus = 1
		BEGIN		  
			UPDATE DBMaint.Logging.ExecutionLog
			SET EndTime = SYSDATETIME(), Outcome = 'Success'
			WHERE ExecutionId = @ExecutionID
			
			
			PRINT (@JobName + ' has been started at step ' + CAST(@JobStep AS VARCHAR(5)) + ' and completed Succesfully.')				   
		END	
		/*This will be used if the job was manually canceled*/
		IF @JobCompletionStatus = 3
		BEGIN
		    UPDATE DBMaint.Logging.ExecutionLog
			SET EndTime = SYSDATETIME()
			,Outcome = 'Job Cancelled'
			,ErrorDetails = (@JobName + ' has been canceled either by the User or by DBA. ')
			WHERE ExecutionId = @ExecutionID
			
		END
	END

/*This section will attempt to stop the job. It assumes the job is valid because of earlier checks.
Also, please note there isn't a raiserror in this, because if the job is running, it will attempt to 
stop it, if it isn't, the stored procedure will throw its own error that the job IS NOT running.*/
IF @JobAction = 0
	BEGIN
	    
		PRINT ('Attempting to stop ' + @JobName + '.')
		
		EXECUTE msdb.dbo.sp_stop_job @job_name =@JobName
		
	END
	END TRY

	BEGIN CATCH
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE();  
		
		 UPDATE DBMaint.Logging.ExecutionLog
		 SET EndTime = SYSDATETIME()
		 ,Outcome = @Outcome
		 ,ErrorDetails = @ErrorDetails
		 WHERE ExecutionId = @ExecutionID
		
		 
		 --SELECT @ErrMsg = (@JobName + ' did not complete Successfully, please contact your DBA''s.')                 
                
		SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;
	END CATCH
END
GO
/****** Object:  StoredProcedure [Utilities].[ManageAgentJobsTopLevel]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Utilities].[ManageAgentJobsTopLevel] 
(
@JobName VARCHAR(100)
,@JobStep INT = NULL
,@JobAction BIT = 1
)

AS
BEGIN

--Declare Working Variables
DECLARE @ExecutionID INT
,@jobcategory VARCHAR(20)

--Set the Job category
SELECT @jobcategory = 'Attendance'

--Log Execution to the table. Will update status later in SPROC
EXECUTE DBMaint.Logging.LogNewExecution	
@ExecutionName = @JobName	

SELECT @ExecutionID = @@IDENTITY

EXECUTE DBMaint.Utilities.ManageAgentJobs	
@ExecutionID = @ExecutionID
,@JobName = @JobName
,@JobStep = @JobStep
,@JobAction = @JobAction
,@jobcategory  = @jobcategory



END
GO
/****** Object:  StoredProcedure [Utilities].[ManageSingleAgentJob]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Utilities].[ManageSingleAgentJobs]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
This stored procedure is for the developers to be able to start any 
SQL agent job in Config.UserJobCategory for the category they can run.
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2020-06-22: Created by william benson
**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
Run Time = 0.1
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
Example: To send an email based on a job id and specific run time
EXEC [Utilities].[ManageSingleAgentJobs]
    @JobName = 'WaCompass.DataMart.RecordType.ETL'
    ,@JobAction = 1
    ,@JobStep = NULL
    ,@WithJobWait = 0
    ,@Debug = 1

**************************************************************************************************/
CREATE    PROCEDURE [Utilities].[ManageSingleAgentJob]
(   @JobName VARCHAR(100) = NULL
    ,@JobAction BIT = 1
    ,@JobStep INT = NULL
    ,@WithJobWait BIT = 0
    ,@UserThatCalledTheProc NVARCHAR(100)
    ,@ExecutionId INT = NULL
    ,@Debug BIT = 0
)
WITH EXECUTE AS 'DeveloperJobExec'
AS

BEGIN

    SET NOCOUNT ON;

    /*Create the working variables*/
    DECLARE @JobCompletionStatus INT
    , @Outcome VARCHAR(100)

    /* Used for error handling */
    DECLARE @ErrMsg NVARCHAR(4000)
    , @ErrorMessage NVARCHAR(4000)
    , @ErrorSeverity SMALLINT
    , @ErrorDetails VARCHAR(100)
    , @ErrorDatabaseName VARCHAR(100)
    , @ErrorSchemaName VARCHAR(100)
    , @ErrorProcedureName VARCHAR(255)
    , @ErrorErrorLineNumber AS SMALLINT
    ;

    /* Used for Internal Procedure */
    DECLARE @InternalJobId UNIQUEIDENTIFIER
    , @InternalJobName AS SYSNAME
    , @InternalStartStepId AS INT
    , @InternalCategoryName AS SYSNAME
    , @InternalJobStartStepName AS SYSNAME

    BEGIN TRY

    IF @Debug = 1
    BEGIN
        SELECT @UserThatCalledTheProc AS UserThatCalledTheProc
        ,@ExecutionId AS ExecutionId
    END

    /* Collect Job Information */
    IF @JobStep IS NULL
    BEGIN
        --INSERT INTO @tblJobInfo(JobId, JobName, StartStepId, CategoryName, JobStartStepName)
        SELECT
        @InternalJobId = sj.job_id
        ,@InternalJobName = sj.[Name]
        ,@InternalStartStepId = sj.start_step_id
        ,@InternalCategoryName = sjsc.[name]
        ,@InternalJobStartStepName = sjsjs.step_name
        FROM msdb.dbo.sysjobs AS sj
        INNER JOIN msdb.dbo.syscategories AS sjsc
            ON sj.category_id = sjsc.category_id
        INNER JOIN msdb.dbo.sysjobsteps AS sjsjs
            ON sj.job_id = sjsjs.job_id
            AND sj.start_step_id = sjsjs.step_id
       WHERE sj.[Name] = @JobName;
   END
   ELSE
   BEGIN
        --INSERT INTO @tblJobInfo(JobId, JobName, StartStepId, CategoryName, JobStartStepName)
        SELECT
        @InternalJobId = sj.job_id
        ,@InternalJobName = sj.[Name]
        ,@InternalStartStepId = sjsjs.step_id
        ,@InternalCategoryName = sjsc.[name]
        ,@InternalJobStartStepName = sjsjs.step_name
        FROM msdb.dbo.sysjobs AS sj
        INNER JOIN msdb.dbo.syscategories AS sjsc
            ON sj.category_id = sjsc.category_id
        LEFT OUTER JOIN msdb.dbo.sysjobsteps AS sjsjs
            ON sj.job_id = sjsjs.job_id
            AND sjsjs.step_id = @JobStep
       WHERE sj.[Name] = @JobName;
   END

    IF @Debug = 1
    BEGIN
        SELECT
        @InternalJobId AS JobId
        ,@InternalJobName AS InternalJobName
        ,@InternalStartStepId AS InternalStartStepId
        ,@InternalCategoryName AS InternalCategoryName
        ,@InternalJobStartStepName AS InternalJobStartStepName
        ;
    END

    --Check if the job exists, if it doesn't raise error and update Execution Log
    IF @InternalJobId IS NULL
    BEGIN
        SELECT @Outcome = 'Failed'
	    SELECT @ErrorDetails = (@JobName + ' does not exist')
	
	    SELECT @ErrMsg = 'The job ' + @JobName + ' does not exist. Please check your spelling or that that job exists. If the problem continues, please reach out to the DBAs'
	    RAISERROR (@ErrMsg, 18, 1)		
    END

    --Check to see if job has step requested to start at. If not, raise error and update Execution Log
    IF @InternalJobId IS NOT NULL AND @InternalStartStepId IS NULL
    BEGIN
        SELECT @Outcome = 'Failed'
		SELECT @ErrorDetails = (@InternalJobName + ' Does Not have a step ' + CAST(@JobStep AS VARCHAR(5)))
        
        SELECT @ErrMsg = @InternalJobName + ' does not have a step ' + CAST(@JobStep AS VARCHAR(5)) + '. Please make sure you are starting at a correct step number.'
		RAISERROR (@ErrMsg, 18, 1)		
    END

    --Check to see if the job is in the correct category. If not raise error and update Execution Log
    IF NOT EXISTS(SELECT * FROM Config.UserJobCategory WHERE UserCredentials = @UserThatCalledTheProc AND JobCategoryName = @InternalCategoryName AND IsActive = 1)
    BEGIN
	    SELECT @Outcome = 'Failed'
		SELECT @ErrorDetails = (@InternalJobName + ' is not in the category ' + @InternalCategoryName)		

		SELECT @ErrMsg = 'The Job ' + @InternalJobName + ' is not in the category ' + @InternalCategoryName + '. At this time you do not have permissions to start jobs that
		aren''t in that category. Please contact your DBA team if this is an issue and we will see if we can resolve it.'
		RAISERROR (@ErrMsg, 18, 1)
     END

    --Job Start Section
    /*Set @JobstepName to what the default job step is if there is no user input
    or if there is user input, set it to that. This assumes that the job step is 
    valid because of earlier checks*/
    IF @JobAction = 1
    BEGIN			
        /*Start the job with custom SPROC. This will wait for the job to complete or fail.
		Please note, the DeveloperJobExec User will need execute on master.dbo.xp_sqlagent_enum_jobs*/
		
        IF @WithJobWait = 0
        BEGIN
            EXECUTE Msdb.dbo.sp_start_job @job_id = @InternalJobId, @step_name =  @InternalJobStartStepName;

            UPDATE Logging.ExecutionLog
            SET EndTime = SYSDATETIME()
            ,Outcome = 'Job was startred with sp_start_job'
            ,ErrorDetails = @ErrorDetails
            WHERE ExecutionId = @ExecutionID	

        END
                
        IF @WithJobWait = 1
        BEGIN
            EXECUTE Maintenance.SQLAgent_start_job_wait
                @Job_Name = @InternalJobName, 
				@step_name =  @InternalJobStartStepName,
		        @WaitTime = '00:00:15',		        
                @JobCompletionStatus = @JobCompletionStatus OUTPUT
	            
            /*This will be used if the job completed successfully*/
		    IF @JobCompletionStatus = 1
		    BEGIN		  
			    UPDATE Logging.ExecutionLog
			    SET EndTime = SYSDATETIME(), Outcome = 'Success'
			    WHERE ExecutionId = @ExecutionID			
                    			
			    PRINT (@InternalJobName + ' has been started at step ' + CAST(@InternalJobStartStepName AS VARCHAR(5)) + ' and completed Succesfully.')				   
		    END	
		    /*This will be used if the job was manually canceled*/
		    IF @JobCompletionStatus = 3
		    BEGIN
		        UPDATE Logging.ExecutionLog
			    SET EndTime = SYSDATETIME()
			    ,Outcome = 'Job Cancelled'
			    ,ErrorDetails = (@InternalJobName + ' has been canceled either by the User or by DBA. ')
			    WHERE ExecutionId = @ExecutionID			
		    END
	    END
    END        

    /*This section will attempt to stop the job. It assumes the job is valid because of earlier checks.
    Also, please note there isn't a raiserror in this, because if the job is running, it will attempt to 
    stop it, if it isn't, the stored procedure will throw its own error that the job IS NOT running.*/
    IF @JobAction = 0
	    BEGIN	    
		    PRINT ('Attempting to stop ' + @InternalJobName + '.')
		
		    EXECUTE msdb.dbo.sp_stop_job @job_id = @InternalJobId;

            UPDATE Logging.ExecutionLog
			SET EndTime = SYSDATETIME()
			,Outcome = 'Job Cancelled'
			,ErrorDetails = (@InternalJobName + ' Job was stopped. ')
			WHERE ExecutionId = @ExecutionID
            
		END
    END TRY

	BEGIN CATCH
        SELECT @ErrorSeverity = ERROR_SEVERITY()
        , @ErrorMessage = ERROR_MESSAGE()
        , @ErrorDatabaseName = DB_NAME()
        , @ErrorSchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
        , @ErrorProcedureName = OBJECT_NAME(@@PROCID) 
        , @ErrorErrorLineNumber = ERROR_LINE();  
		
        UPDATE Logging.ExecutionLog
        SET EndTime = SYSDATETIME()
        ,Outcome = @Outcome
        ,ErrorDetails = @ErrorDetails
        WHERE ExecutionId = @ExecutionID		
                
        SET @ErrMsg = ' ' + @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
        RAISERROR (@ErrMsg, 18, 1) ;
	   END CATCH
END
GO
/****** Object:  StoredProcedure [Utilities].[uspCheckDriveSpaceAll]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
Utilities.spCheckDriveSpaceAll

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Use xp_cmdshelll to get a list of the drives on the server.
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2019-04-15: Created by William Benson
2020-10-07: William Benson - Added in try catch and error message

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************

**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC DBMaint.Utilities.spCheckDriveSpaceAll

**************************************************************************************************/
CREATE PROCEDURE [Utilities].[uspCheckDriveSpaceAll]
	@Debug BIT = 0

AS

BEGIN

    SET NOCOUNT ON;

    /* Used for the details of the exception */
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	;

    DECLARE @chkCMDShell AS SQL_VARIANT

    BEGIN TRY

        EXEC sp_configure 'show advanced options', 1;
        RECONFIGURE;

        SELECT @chkCMDShell = value FROM sys.configurations WHERE name = 'xp_cmdshell'
        IF @chkCMDShell = 0
        BEGIN
	        EXEC sp_configure 'xp_cmdshell', 1
	        RECONFIGURE;
        END
        ELSE
        BEGIN
           PRINT 'xp_cmdshell is already enabled'
        END

        --GO
        DECLARE @svrName VARCHAR(255)
        DECLARE @sql VARCHAR(400)
        --by default it will take the current server name, we can the set the server name as well
        SELECT @svrName = @@SERVERNAME
        --set @sql = 'powershell.exe -c "Get-WmiObject -ComputerName ' + QUOTENAME(@svrName,'''') + ' -Class Win32_Volume -Filter ''DriveType = 3'' | select name,capacity,freespace | foreach{$_.name+''|''+$_.capacity/1048576+''%''+$_.freespace/1048576+''*''} | format-table"'
        SELECT @sql = 'powershell.exe -c "Get-WmiObject -ComputerName ' + QUOTENAME(@svrName,'''') + ' -Class Win32_Volume -Filter ''DriveType = 3'' | select name,label,capacity,freespace | foreach{$_.name+''|''+$_.label+''|''+$_.capacity/1048576+''%''+$_.freespace/1048576+''*''}"'
        --set @sql = 'powershell.exe -c "Get-Volume"'
        --creating a temporary table
        DECLARE @DriveSpaceTable AS TABLE(Line varchar(255)) -- #output

        --inserting disk name, total space and free space value in to temporary table
        INSERT @DriveSpaceTable
        EXEC xp_cmdshell @sql
        ;

        TRUNCATE TABLE [Detail].[HardDriveSpace]
        INSERT INTO [Detail].[HardDriveSpace]
                   ([ServerName]
                   ,[OSDriveLetter]
                   ,[DriveLetter]
                   ,[DriveLabel]
                   ,[Capacity]
                   ,[Freespace])
        SELECT @@SERVERNAME AS ServerName
	        ,REPLACE(RTRIM(LTRIM(SUBSTRING(line,1,CHARINDEX('|',line) -1))),':\','') AS OSDriveLetter
	        ,RTRIM(LTRIM(SUBSTRING(line,1,CHARINDEX('|',line) -1))) AS driveletter
	        ,SUBSTRING(line,CHARINDEX('|',line)+1,CASE WHEN (CHARINDEX('|',line,5) - CHARINDEX('|',line)) = 1 THEN NULL
		        ELSE (CHARINDEX('|',line,5)  - CHARINDEX('|',line)-1) END) AS drivelabel
           ,ROUND(CAST(RTRIM(LTRIM(SUBSTRING(line,CHARINDEX('|',line,5)+1,(CHARINDEX('%',line) -1)-CHARINDEX('|',line,5)))) AS FLOAT),0) AS 'capacity(GB)'
           ,ROUND(CAST(RTRIM(LTRIM(SUBSTRING(line,CHARINDEX('%',line)+1,(CHARINDEX('*',line) -1)-CHARINDEX('%',line)))) AS FLOAT),0)AS 'freespace(GB)'
        FROM @DriveSpaceTable
        WHERE CHARINDEX('?',line) = 0
        --where line like '[A-Z][:]%'
        --order by drivename
        --script to drop the temporary table
        --DROP TABLE #output
        --GO


        SELECT @chkCMDShell = value FROM sys.configurations WHERE name = 'xp_cmdshell'

        IF @chkCMDShell = 1
        BEGIN
        EXEC sp_configure 'xp_cmdshell', 0
        RECONFIGURE;
        END
        ELSE
        BEGIN
        PRINT 'xp_cmdshell is already enabled'
        END

        EXEC sp_configure 'show advanced options', 0;
        RECONFIGURE;

    END TRY
    BEGIN CATCH

        SELECT @chkCMDShell = value FROM sys.configurations WHERE name = 'xp_cmdshell'

        IF @chkCMDShell = 1
        BEGIN
        EXEC sp_configure 'xp_cmdshell', 0
        RECONFIGURE;
        END
        ELSE
        BEGIN
        PRINT 'xp_cmdshell is already enabled'
        END

        EXEC sp_configure 'show advanced options', 0;
        RECONFIGURE;

        SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;


    END CATCH


END
GO
/****** Object:  StoredProcedure [Utilities].[uspCheckMailProfileToUse]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Utilities].[spCheckMailProfileToUse]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Check to see if a mail profile is on the server and if its not it picks a default
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2018-12-08: Created by william benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE DBMaint
GO

EXEC [Utilities].[spCheckMailProfileToUse]
@MailProfileToSearchFor = 'DCYF Database Server Notifications111'

**************************************************************************************************/
CREATE PROCEDURE [Utilities].[uspCheckMailProfileToUse]
	@MailProfileToSearchFor NVARCHAR(250) = NULL
	, @ProfileNameToUse NVARCHAR(250) OUTPUT

AS

BEGIN

SET NOCOUNT ON;

	--DECLARE @ProfileNameToUse NVARCHAR(250);
	
	/* Used for the details of the exception */
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @E_DatabaseName VARCHAR(100)
	, @E_SchemaName VARCHAR(100)
	, @E_ProcedureName VARCHAR(255)
	, @E_ErrorLineNumber AS SMALLINT
	;

	BEGIN TRY

		IF @MailProfileToSearchFor IS NULL
		BEGIN
			SET @ErrMsg = 'Sorry the mail profile can not be empty';
			RAISERROR (@ErrMsg, 18, 1);

		END

		IF EXISTS(SELECT Profile_Id FROM msdb.dbo.sysmail_profile WHERE [NAME] = @MailProfileToSearchFor)
		BEGIN
			SELECT @ProfileNameToUse = @MailProfileToSearchFor
		END
		ELSE
		BEGIN
	
			SELECT @ProfileNameToUse = sysmp.[Name]
			FROM msdb.dbo.sysmail_principalprofile AS sysmpp
			INNER JOIN msdb.dbo.sysmail_profile AS sysmp
				ON sysmpp.profile_id = sysmp.profile_id
			WHERE sysmpp.is_default = 1

		END

		RETURN;

	END TRY
	BEGIN CATCH
		 
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @E_DatabaseName = DB_NAME()
		, @E_SchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @E_ProcedureName = OBJECT_NAME(@@PROCID) 
		, @E_ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;		
		
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [Utilities].[uspWhatCanIRunInner]    Script Date: 9/7/2021 2:29:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [Utilities].[uspWhatCanIRunInner]
(
@UserNameToCheck VARCHAR(128)
)
WITH EXECUTE AS 'DeveloperJobExec'
AS

BEGIN

IF (SELECT COUNT(RecordId) FROM DBMaint.Config.UserJobCategory WHERE UserCredentials = @UserNameToCheck AND IsActive = 1) > 0
	BEGIN
    /*Create working tables*/
	CREATE TABLE #UserCategoryAllowed
	(RecordID INT IDENTITY(1,1)
	,Category NVARCHAR(50)
	)

	/*Fill the working tables*/
	INSERT INTO #UserCategoryAllowed
	(
	    Category
	)
	SELECT JobCategoryName FROM Config.UserJobCategory WHERE UserCredentials = @UserNameToCheck AND IsActive = 1	

	SELECT sj.name AS JobName
	,sjsc.name AS CategoryName
	,('EXECUTE DbMaint.UserMngmt.ManageAgentJobs @JobName = ' + CHAR(39) + sj.name + CHAR(39)) AS ExecuteCode
	FROM msdb.dbo.sysjobs AS sj
        INNER JOIN msdb.dbo.syscategories AS sjsc
            ON sj.category_id = sjsc.category_id
       WHERE sjsc.name IN (SELECT Category FROM #UserCategoryAllowed)
	   ORDER BY CategoryName, JobName


	   DROP TABLE #UserCategoryAllowed
	END
	ELSE
	PRINT ('The current user ' + @UserNameToCheck + ' does not have permissions in the User Job Category table or IsActive is set to 0')

END
GO
EXEC [DBMaint].sys.sp_addextendedproperty @name=N'SQLSourceControl Scripts Location', @value=N'<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<ISOCCompareLocation version="1" type="TfsLocation">
  <ServerUrl>http://delwblcytfs01:8080/tfs/defaultcollection</ServerUrl>
  <SourceControlFolder>$/Reporting/DELReporting/DB_BuildScripts/RedGateSQLSourceControl/DELDBLCY4000D/DBMaint</SourceControlFolder>
</ISOCCompareLocation>' 
GO
EXEC [DBMaint].sys.sp_addextendedproperty @name=N'SQLSourceControl Database Revision', @value=53393 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A configuration table to track the databases on the server, if they are going to be backed up, where they are being backed up.' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Backup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Basic Information about the databases on the server. This is also to be used to track if a new database is added to the server. ' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Database'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is to track the different classification of servers that we have' , @level0type=N'SCHEMA',@level0name=N'Lookup', @level1type=N'TABLE',@level1name=N'Classification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is to store the backup paths that we have set up for servers' , @level0type=N'SCHEMA',@level0name=N'Lookup', @level1type=N'TABLE',@level1name=N'FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table designated to show the type of the file path' , @level0type=N'SCHEMA',@level0name=N'Lookup', @level1type=N'TABLE',@level1name=N'FilePathType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table records deployments with migration scripts. Learn more: http://rd.gt/230GBP3' , @level0type=N'SCHEMA',@level0name=N'RedGateLocal', @level1type=N'TABLE',@level1name=N'DeploymentMetadata'
GO
USE [master]
GO
ALTER DATABASE [DBMaint] SET  READ_WRITE 
GO
