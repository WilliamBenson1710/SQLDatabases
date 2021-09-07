USE [master]
GO
/****** Object:  Database [ServerAdmin]    Script Date: 9/7/2021 2:17:35 PM ******/
CREATE DATABASE [ServerAdmin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServerAdmin', FILENAME = N'G:\MSSQL\DATA\ServerAdmin.mdf' , SIZE = 3153920KB , MAXSIZE = UNLIMITED, FILEGROWTH = 524288KB )
 LOG ON 
( NAME = N'ServerAdmin_log', FILENAME = N'L:\MSSQL\Log\ServerAdmin_log.ldf' , SIZE = 663552KB , MAXSIZE = 2048GB , FILEGROWTH = 131072KB )
GO
ALTER DATABASE [ServerAdmin] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServerAdmin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServerAdmin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServerAdmin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServerAdmin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServerAdmin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServerAdmin] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServerAdmin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServerAdmin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServerAdmin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServerAdmin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServerAdmin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServerAdmin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServerAdmin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServerAdmin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServerAdmin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServerAdmin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ServerAdmin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServerAdmin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServerAdmin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServerAdmin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServerAdmin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServerAdmin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServerAdmin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServerAdmin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ServerAdmin] SET  MULTI_USER 
GO
ALTER DATABASE [ServerAdmin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServerAdmin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServerAdmin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServerAdmin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServerAdmin] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServerAdmin', N'ON'
GO
ALTER DATABASE [ServerAdmin] SET QUERY_STORE = OFF
GO
USE [ServerAdmin]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ServerAdmin]
GO
/****** Object:  User [DCYF\william.benson]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE USER [DCYF\william.benson] FOR LOGIN [DCYF\william.benson] WITH DEFAULT_SCHEMA=[DCYF\william.benson]
GO
/****** Object:  User [DCYF\G-S-DCYF-Database Developers]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE USER [DCYF\G-S-DCYF-Database Developers] FOR LOGIN [DCYF\G-S-DCYF-Database Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Attendance Developers]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE USER [DCYF\G-S-DCYF-Attendance Developers] FOR LOGIN [DCYF\G-S-DCYF-Attendance Developers]
GO
/****** Object:  User [DCYF\G-S-DCYF-Applications Manager]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE USER [DCYF\G-S-DCYF-Applications Manager] FOR LOGIN [DCYF\G-S-DCYF-Applications Manager]
GO
/****** Object:  DatabaseRole [rlReportUser]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE ROLE [rlReportUser]
GO
ALTER ROLE [db_owner] ADD MEMBER [DCYF\G-S-DCYF-Database Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Attendance Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCYF\G-S-DCYF-Applications Manager]
GO
/****** Object:  Schema [Calend]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [Calend]
GO
/****** Object:  Schema [Config]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [Config]
GO
/****** Object:  Schema [Detail]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [Detail]
GO
/****** Object:  Schema [ETLImport]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [ETLImport]
GO
/****** Object:  Schema [Lkup]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [Lkup]
GO
/****** Object:  Schema [SurveyResults]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [SurveyResults]
GO
/****** Object:  Schema [Veam]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE SCHEMA [Veam]
GO
/****** Object:  Table [Detail].[SQLServerProperties]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerProperties](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](100) NOT NULL,
	[ServiceName] [nvarchar](100) NULL,
	[SQLVersionBuild] [nvarchar](40) NULL,
	[Edition] [nvarchar](100) NULL,
	[SQLVersion] [nvarchar](1000) NULL,
	[OSVersion] [nvarchar](300) NULL,
	[EngineEdition] [nvarchar](100) NULL,
	[ProductVersion] [nvarchar](100) NULL,
	[SQLServerAgentRunning] [int] NULL,
	[SQLServerStartTime] [datetime2](4) NULL,
	[LogicalCPUCount] [int] NULL,
	[HyperthreadRatio] [int] NULL,
	[PhysicalMemoryKB] [bigint] NULL,
	[TargetServerMemoryKB] [bigint] NULL,
	[TotalUsedServerMemoryKB] [bigint] NULL,
	[ProcessRunDatetime] [datetime2](4) NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [PK_DetailSQLServerProperties_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLServerPropertiesCurrent]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Detail].[vwSQLServerPropertiesCurrent]

AS

SELECT
[RecordId]
,[ServerId]
,[ServerName]
,[ServiceName]
,[SQLVersionBuild]
,[Edition]
,[SQLVersion]
,[OSVersion]
,[EngineEdition]
,[ProductVersion]
,[SQLServerAgentRunning]
,[SQLServerStartTime]
,[LogicalCPUCount]
,[HyperthreadRatio]
,[LogicalCPUCount]/[HyperthreadRatio] AS [PhysicalCPUCount]
,[PhysicalMemoryKB]
,[TargetServerMemoryKB]
,[TotalUsedServerMemoryKB]
,[ProcessRunDatetime]
,[CurrentPreviousInd]
,[InsertDatetime]
FROM [Detail].[SQLServerProperties] AS svrpr
WHERE [CurrentPreviousInd] = 'C'
GO
/****** Object:  Table [Config].[ServerInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[ServerInfo](
	[ServerInfoId] [smallint] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerDomainId] [tinyint] NOT NULL,
	[ServerEnviromentId] [smallint] NULL,
	[ServerClassificationId] [smallint] NULL,
	[ServerTypeId] [smallint] NULL,
	[ServerDataCenterId] [smallint] NULL,
	[ServerClusterId] [smallint] NULL,
	[ServerReposityId] [smallint] NULL,
	[ServerPreviousId] [smallint] NULL,
	[ServerInfoIsActive] [bit] NULL,
	[LastUpdatedDatetime] [datetime2](4) NULL,
	[ServerDesignationId] [int] NULL,
 CONSTRAINT [pk_ServerInfo_ServerInfoId] PRIMARY KEY CLUSTERED 
(
	[ServerInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerList]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerList](
	[ServerId] [smallint] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](255) NOT NULL,
	[ServerDomain] [nvarchar](6) NOT NULL,
	[ServerDescription] [nvarchar](250) NULL,
	[ServerIPAddress] [nvarchar](25) NULL,
	[ADDistinguishedName] [nvarchar](500) NULL,
	[ADDescription] [nvarchar](4000) NULL,
	[ServerIsActive] [bit] NOT NULL,
	[RecordChangeType] [tinyint] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerList_RecordId] PRIMARY KEY CLUSTERED 
(
	[ServerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerDesignation]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerDesignation](
	[ServerDesignationId] [smallint] IDENTITY(1,1) NOT NULL,
	[ServerDesignationName] [nvarchar](50) NOT NULL,
	[ServerDesignationDescription] [nvarchar](250) NULL,
	[ServerDesignationIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerDesignation_ServerDesignationId] PRIMARY KEY CLUSTERED 
(
	[ServerDesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLDatabaseInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLDatabaseInfo](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[DatabaseId] [int] NOT NULL,
	[DatabaseName] [nvarchar](128) NOT NULL,
	[DatabaseOwner] [nvarchar](128) NULL,
	[DatabaseStatus] [nvarchar](16) NULL,
	[DatabaseStateDesc] [nvarchar](60) NULL,
	[DataFiles] [int] NULL,
	[DataFilesInMB] [int] NULL,
	[LogFiles] [int] NULL,
	[LogFilesInMB] [int] NULL,
	[UserAccess] [nvarchar](60) NULL,
	[RecoveryModel] [nvarchar](60) NULL,
	[CompatibilityLevel] [nvarchar](25) NULL,
	[CreationDate] [datetime2](4) NULL,
	[LastFullDatabaseBackupInDays] [int] NULL,
	[LastFullDatabseBackup] [nvarchar](180) NULL,
	[LastDiffDatabaseBackupInDays] [int] NULL,
	[LastDiffDatabseBackup] [nvarchar](180) NULL,
	[LastTLogDatabaseBackupInDays] [int] NULL,
	[LastTLogDatabseBackup] [nvarchar](180) NULL,
	[LastDatabaseRestoreInDays] [int] NULL,
	[LastDatabseRestore] [nvarchar](180) NULL,
	[RestoredFromServer] [nvarchar](128) NULL,
	[Fulltext] [nvarchar](16) NULL,
	[Autoclose] [nvarchar](9) NULL,
	[PageVerifyOption] [nvarchar](60) NULL,
	[ReadOnly] [nvarchar](9) NULL,
	[Autoshrink] [nvarchar](10) NULL,
	[AutoCreateStatistics] [nvarchar](22) NULL,
	[AutoUpdateStatistics] [nvarchar](22) NULL,
	[Standby] [nvarchar](7) NULL,
	[CleanlyShutdown] [nvarchar](16) NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[RecordHash] [char](66) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[ProcessDatetime] [datetime2](4) NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [PK_SQLDatabaseInfo_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[Classification]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[Classification](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationName] [varchar](50) NOT NULL,
	[ClassificationDesc] [varchar](200) NOT NULL,
	[ClassificationIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwServersWithoutDBMaint]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Detail].[vwServersWithoutDBMaint]

AS

SELECT
svrl.[ServerId]
,svrl.[ServerName]
,svrl.ADDescription AS ServerADDescription
,svrc.ClassificationName
,svrdsg.ServerDesignationName
FROM Lkup.ServerList AS svrl
INNER JOIN Config.ServerInfo AS svrinfo
    ON svrl.ServerId = svrinfo.ServerId
    AND svrinfo.ServerInfoIsActive = 1
LEFT OUTER JOIN Lkup.[Classification] AS svrc
	ON svrinfo.ServerClassificationId = svrc.RecordId
	AND svrc.ClassificationIsActive = 1
LEFT OUTER JOIN	Lkup.ServerDesignation AS svrdsg
	ON svrinfo.ServerDesignationId = svrdsg.ServerDesignationId
	AND svrdsg.ServerDesignationIsActive = 1
LEFT OUTER JOIN [Detail].[SQLDatabaseInfo] AS dbinfo
    ON svrinfo.ServerId = dbinfo.ServerId
    AND dbinfo.DatabaseName = 'DBMaint'
    AND dbinfo.CurrentPreviousInd = 'C'
WHERE svrl.ServerIsActive = 1
    AND svrl.ServerDomain = 'DCYF'
    AND svrinfo.ServerDomainId = 1
    AND svrInfo.ServerTypeId = 3
    AND dbinfo.ServerId IS NULL
GO
/****** Object:  Table [Lkup].[Environment]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[Environment](
	[EnvironmentId] [int] IDENTITY(1,1) NOT NULL,
	[EnvironmentName] [varchar](50) NOT NULL,
	[EnvironmentEnterpriseName] [varchar](50) NULL,
	[EnvironmentDesc] [varchar](200) NULL,
	[EnvironmentIsActive] [bit] NOT NULL,
	[LastUpdateDatetime] [datetime2](4) NOT NULL,
	[EnvironmentPriority] [tinyint] NOT NULL,
	[IsProduction] [bit] NULL,
 CONSTRAINT [PK_Environment] PRIMARY KEY CLUSTERED 
(
	[EnvironmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwServersMissingFromCMS]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Detail].[vwServersMissingFromCMS]
AS

SELECT
svrl.[ServerId]
,svrl.[ServerName]
,svrl.[ServerDomain]
,svrl.[ServerDescription]
,svrl.[ServerIPAddress]
,svrl.[ADDescription]
,svre.EnvironmentDesc
,svrc.ClassificationName
,svrl.[LastUpdatedDatetime]
FROM [Lkup].[ServerList] AS svrl

LEFT OUTER JOIN Config.ServerInfo AS svrinfo
    ON svrl.ServerId = svrinfo.ServerId
    AND svrinfo.ServerInfoIsActive = 1
    AND svrinfo.ServerDomainId = 1

LEFT OUTER JOIN lkup.Environment AS svre
    ON svrinfo.ServerEnviromentId = svre.EnvironmentId
    AND svre.EnvironmentIsActive = 1

LEFT OUTER JOIN Lkup.[Classification] AS svrc
    ON svrinfo.ServerClassificationId = svrc.RecordId
    AND svrc.ClassificationIsActive = 1

LEFT OUTER JOIN msdb.dbo.sysmanagement_shared_registered_servers AS cms
ON svrl.ServerName = cms.name

WHERE svrl.[ServerDomain] = 'DCYF'
    AND CHARINDEX('OU=Database',svrl.[ADDistinguishedName]) > 0

    AND cms.server_id IS NULL
GO
/****** Object:  Table [Calend].[DateDimension]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Calend].[DateDimension](
	[TheDate] [date] NULL,
	[TheDay] [int] NULL,
	[TheDaySuffix] [char](2) NULL,
	[TheDayName] [nvarchar](30) NULL,
	[TheDayOfWeek] [int] NULL,
	[TheDayOfWeekInMonth] [tinyint] NULL,
	[TheDayOfYear] [int] NULL,
	[IsWeekend] [int] NOT NULL,
	[TheWeek] [int] NULL,
	[TheISOweek] [int] NULL,
	[TheFirstOfWeek] [date] NULL,
	[TheLastOfWeek] [date] NULL,
	[TheWeekOfMonth] [tinyint] NULL,
	[TheMonth] [int] NULL,
	[TheMonthName] [nvarchar](30) NULL,
	[TheFirstOfMonth] [date] NULL,
	[TheLastOfMonth] [date] NULL,
	[TheFirstOfNextMonth] [date] NULL,
	[TheLastOfNextMonth] [date] NULL,
	[TheQuarter] [int] NULL,
	[TheFirstOfQuarter] [date] NULL,
	[TheLastOfQuarter] [date] NULL,
	[TheYear] [int] NULL,
	[TheISOYear] [int] NULL,
	[TheFirstOfYear] [date] NULL,
	[TheLastOfYear] [date] NULL,
	[IsLeapYear] [bit] NULL,
	[Has53Weeks] [int] NOT NULL,
	[Has53ISOWeeks] [int] NOT NULL,
	[MMYYYY] [char](6) NULL,
	[MonthOfService] [int] NULL,
	[Style101] [char](10) NULL,
	[Style103] [char](10) NULL,
	[Style112] [char](8) NULL,
	[Style120] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [pkCalendDateDimension_TheDate]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE UNIQUE CLUSTERED INDEX [pkCalendDateDimension_TheDate] ON [Calend].[DateDimension]
(
	[TheDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [Calend].[HolidayDimension]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Calend].[HolidayDimension](
	[TheDate] [date] NOT NULL,
	[HolidayText] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [cixHolidayDimension]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE CLUSTERED INDEX [cixHolidayDimension] ON [Calend].[HolidayDimension]
(
	[TheDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [Calend].[vwTheCalendar]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Calend].[vwTheCalendar]
AS 
  SELECT
    d.TheDate,
    d.TheDay,
    d.TheDaySuffix,
    d.TheDayName,
    d.TheDayOfWeek,
    d.TheDayOfWeekInMonth,
    d.TheDayOfYear,
    d.IsWeekend,
    d.TheWeek,
    d.TheISOweek,
    d.TheFirstOfWeek,
    d.TheLastOfWeek,
    d.TheWeekOfMonth,
    d.TheMonth,
    d.TheMonthName,
    d.TheFirstOfMonth,
    d.TheLastOfMonth,
    d.TheFirstOfNextMonth,
    d.TheLastOfNextMonth,
    d.TheQuarter,
    d.TheFirstOfQuarter,
    d.TheLastOfQuarter,
    d.TheYear,
    d.TheISOYear,
    d.TheFirstOfYear,
    d.TheLastOfYear,
    d.IsLeapYear,
    d.Has53Weeks,
    d.Has53ISOWeeks,
    d.MMYYYY,
    d.Style101,
    d.Style103,
    d.Style112,
    d.Style120,
    IsHoliday = CASE WHEN h.TheDate IS NOT NULL THEN 1 ELSE 0 END,
    h.HolidayText
  FROM Calend.DateDimension AS d
  LEFT OUTER JOIN Calend.HolidayDimension AS h
  ON d.TheDate = h.TheDate;
GO
/****** Object:  Table [Detail].[SQLServerAgentJobFailure]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerAgentJobFailure](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobGuid] [uniqueidentifier] NOT NULL,
	[StepId] [int] NOT NULL,
	[StepName] [nvarchar](128) NOT NULL,
	[FailureDateTime] [datetime2](4) NULL,
	[NextRunDateTime] [datetime2](4) NULL,
	[StepDuration] [int] NOT NULL,
	[ExecutionStatus] [nvarchar](50) NOT NULL,
	[RetriesAttempted] [int] NOT NULL,
	[SQLSeverity] [int] NOT NULL,
	[SQLMessageId] [int] NOT NULL,
	[InstanceId] [int] NOT NULL,
	[ErrorMessage] [nvarchar](4000) NOT NULL,
	[HasBeenRepotedOn] [bit] NOT NULL,
	[HasBeenFixed] [bit] NOT NULL,
	[InsertDateTime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_SQLServerAgentJobFailure_ServerName_InstanceId] PRIMARY KEY NONCLUSTERED 
(
	[ServerName] ASC,
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [ix_FailureDatetime]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE CLUSTERED INDEX [ix_FailureDatetime] ON [Detail].[SQLServerAgentJobFailure]
(
	[FailureDateTime] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLAgnetJobFailure]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Detail].[vwSQLAgnetJobFailure]

AS


SELECT 
ajf.[ServerName]
,svre.EnvironmentName
,ajf.[JobName]
,ajf.[JobGuid]
,ajf.[StepId]
,ajf.[StepName]
,ajf.[FailureDateTime]
,ajf.[NextRunDateTime]
,ajf.[StepDuration]
,ajf.[ExecutionStatus]
,ajf.[RetriesAttempted]
,ajf.[SQLSeverity]
,ajf.[SQLMessageId]
,ajf.[InstanceId]
,ajf.[ErrorMessage]
,ajf.[HasBeenRepotedOn]
,ajf.[HasBeenFixed]
,ajf.[InsertDateTime]
,svre.[EnvironmentId]
,svre.[EnvironmentPriority]
FROM [ServerAdmin].[Detail].[SQLServerAgentJobFailure] AS ajf
INNER JOIN Lkup.ServerList AS svr
ON ajf.ServerId = svr.ServerId
INNER JOIN Config.ServerInfo AS svcinfo
ON svr.ServerId = svcinfo.ServerId
LEFT OUTER JOIN Lkup.Environment AS svre
ON svcinfo.ServerEnviromentId = svre.EnvironmentId
GO
/****** Object:  Table [Detail].[SQLServerDriveSpace]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerDriveSpace](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[DriveLetter] [varchar](8000) NULL,
	[DriveLabel] [varchar](255) NULL,
	[CapacityGB] [decimal](18, 4) NULL,
	[FreespaceGB] [decimal](18, 4) NULL,
	[ProcessRunDatetime] [datetime2](4) NULL,
	[CurrnetPreviousInd] [char](1) NOT NULL,
	[InsertDateTime] [datetime2](4) NOT NULL,
 CONSTRAINT [pkDetailSQLServerDriveSpace_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[DataCenterInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[DataCenterInfo](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[DataCenterName] [nvarchar](50) NOT NULL,
	[DataCenterDescription] [nvarchar](250) NULL,
	[DataCenterIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupDataCenterInfo_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerCluster]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerCluster](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[ClusterName] [nvarchar](50) NOT NULL,
	[ClusterDescription] [nvarchar](250) NULL,
	[ClusterIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerCluster_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerRepository]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerRepository](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[RepositoryName] [nvarchar](50) NOT NULL,
	[RepositoryDescription] [nvarchar](250) NULL,
	[RepositoryIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerRepository_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerDomain]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerDomain](
	[RecordId] [tinyint] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](20) NOT NULL,
	[DomainDescription] [nvarchar](250) NULL,
	[DomainIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerDomain_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerType]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerType](
	[ServerTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[ServerTypeName] [nvarchar](50) NOT NULL,
	[ServerTypeDescription] [nvarchar](250) NULL,
	[ServerTypeIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerType_RecordId] PRIMARY KEY CLUSTERED 
(
	[ServerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Config].[vwServerInformation]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Config].[vwServerInformation]

AS

SELECT 
svrl.ServerName
,svrl.[ServerId]
,svrinfo.[ServerInfoId]
,svrl.ServerIPAddress

,svrinfo.[ServerDomainId]
,svrd.DomainName

,svrinfo.[ServerEnviromentId]
,svre.EnvironmentName
,svre.EnvironmentDesc
,svre.EnvironmentEnterpriseName
,svre.EnvironmentPriority
,svre.IsProduction

,svrinfo.[ServerTypeId]
,svrt.ServerTypeName

,svrinfo.ServerDesignationId
,svrdesg.[ServerDesignationName]

,svrinfo.[ServerClassificationId]
,svrc.ClassificationName

,svrinfo.[ServerDataCenterId]
,svrdc.DataCenterName

,svrinfo.[ServerClusterId]
,svrclstr.ClusterName

,svrinfo.[ServerReposityId]
,svrrpy.RepositoryName

,svrl.ADDescription
,svrl.ADDistinguishedName

,svrinfo.ServerInfoIsActive
--,[ServerPreviousId]
--,[LastUpdatedDatetime]
FROM Lkup.ServerList AS svrl

LEFT OUTER JOIN [Config].[ServerInfo] AS svrinfo
ON svrl.[ServerId] = svrinfo.[ServerId]
AND svrl.ServerIsActive = 1

LEFT OUTER JOIN Lkup.ServerDomain AS svrd
ON svrinfo.[ServerDomainId] = svrd.RecordId
AND svrd.DomainIsActive = 1

LEFT OUTER JOIN Lkup.Environment AS svre
ON svrinfo.[ServerEnviromentId] = svre.EnvironmentId
AND svre.EnvironmentIsActive = 1

LEFT OUTER JOIN Lkup.[Classification] AS svrc
ON svrinfo.[ServerClassificationId] = svrc.RecordId
AND svrc.ClassificationIsActive = 1

LEFT OUTER JOIN Lkup.ServerType AS svrt
ON svrinfo.[ServerTypeId] = svrt.ServerTypeId
AND svrt.ServerTypeIsActive = 1

LEFT OUTER JOIN Lkup.DataCenterInfo AS svrdc
ON svrinfo.[ServerDataCenterId] = svrdc.RecordId
AND svrdc.DataCenterIsActive = 1

LEFT OUTER JOIN Lkup.ServerCluster AS svrclstr
ON svrinfo.ServerClusterId = svrclstr.RecordId
AND svrclstr.ClusterIsActive = 1

LEFT OUTER JOIN Lkup.ServerRepository AS svrrpy
ON svrinfo.ServerReposityId = svrrpy.RecordId
AND svrrpy.RepositoryIsActive = 1

LEFT OUTER JOIN [Lkup].[ServerDesignation] AS svrdesg
ON svrinfo.ServerDesignationId = svrdesg.ServerDesignationId
AND svrdesg.[ServerDesignationIsActive] = 1

WHERE svrl.ServerIsActive = 1





GO
/****** Object:  View [Detail].[vwServerDriveSpaceCurrent]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Detail].[vwServerDriveSpaceCurrent]

AS

SELECT
svrinfo.EnvironmentName
,svrdr.[ServerId]
,svrdr.[ServerName]
,svrinfo.ADDescription
,svrdr.[DriveLetter]
,svrdr.[DriveLabel]
,CONVERT(INT,svrdr.[CapacityGB]) AS [CapacityGB]
,CONVERT(INT,svrdr.[CapacityGB] - [FreespaceGB]) AS [UsedSpaceGB]
,CONVERT(INT,svrdr.[FreespaceGB]) AS [FreespaceGB]
,CONVERT(DECIMAL(6,2),(svrdr.[FreespaceGB] / svrdr.[CapacityGB]) * 100) AS PctFreeSpace
,svrdr.[ProcessRunDatetime]
--,[CurrnetPreviousInd]
--,[InsertDateTime]
,svrinfo.EnvironmentPriority
FROM [Detail].[SQLServerDriveSpace] AS svrdr
INNER JOIN Config.vwServerInformation AS svrinfo
	ON svrdr.ServerId = svrinfo.ServerId
WHERE svrdr.CurrnetPreviousInd = 'C'
GO
/****** Object:  View [Detail].[vwSQLAgnetJobFailureLast24H]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Detail].[vwSQLAgnetJobFailureLast24H]

AS


SELECT 
ajf.[ServerName]
,svre.[EnvironmentName]
,svrdg.ServerDesignationName
,ajf.[JobName]
,ajf.[JobGuid]
,ajf.[StepId]
,ajf.[StepName]
,ajf.[FailureDateTime]
,ajf.[NextRunDateTime]
,ajf.[StepDuration]
,ajf.[ExecutionStatus]
,ajf.[RetriesAttempted]
,ajf.[SQLSeverity]
,ajf.[SQLMessageId]
,ajf.[InstanceId]
,ajf.[ErrorMessage]
,ajf.[HasBeenRepotedOn]
,ajf.[HasBeenFixed]
,ajf.[InsertDateTime]
,svre.[EnvironmentId]
,svre.[EnvironmentPriority]
FROM [ServerAdmin].[Detail].[SQLServerAgentJobFailure] AS ajf
INNER JOIN Lkup.ServerList AS svr
ON ajf.ServerId = svr.ServerId
INNER JOIN Config.ServerInfo AS svcinfo
ON svr.ServerId = svcinfo.ServerId
LEFT OUTER JOIN Lkup.Environment AS svre
ON svcinfo.ServerEnviromentId = svre.EnvironmentId

LEFT OUTER JOIN Lkup.ServerDesignation AS svrdg
ON svcinfo.ServerDesignationId = svrdg.ServerDesignationId

WHERE ajf.FailureDateTime >= DATEADD(HOUR, -25, SYSDATETIME())
GO
/****** Object:  Table [Detail].[SQLServerPatchingResultsProd]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerPatchingResultsProd](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NULL,
	[ServerName] [nvarchar](128) NULL,
	[ServerVersion] [nvarchar](1000) NULL,
	[ServiceName] [nvarchar](100) NULL,
	[SQLVersionBuild] [nvarchar](75) NULL,
	[Edition] [nvarchar](100) NULL,
	[OSVersion] [nvarchar](300) NULL,
	[EngineEdition] [nvarchar](100) NULL,
	[ProductVersion] [nvarchar](100) NULL,
	[SQLServerStartTime] [datetime] NULL,
	[SQLServerAgentRunning] [int] NULL,
	[ProcessRunDatetime] [datetime] NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLServerPatchingResultsProd]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Detail].[vwSQLServerPatchingResultsProd]

AS 

SELECT 
svrinfo.[ServerId]
,svrl.[ServerName]
,COALESCE(svrl.ADDescription, 'Unknown') AS ADDescription
,PatchRs.[ServerVersion]
,PatchRs.[ServiceName]
,PatchRs.[SQLVersionBuild]
,PatchRs.[Edition]
,PatchRs.[OSVersion]
,PatchRs.[EngineEdition]
,PatchRs.[ProductVersion]
,PatchRs.[SQLServerStartTime]
,PatchRs.[SQLServerAgentRunning]
,PatchRs.[ProcessRunDatetime]
,PatchRs.[InsertDatetime]
FROM Config.ServerInfo AS svrinfo

INNER JOIN Lkup.ServerList AS svrl
    ON svrinfo.ServerId = svrl.ServerId
	AND svrl.ServerIsActive = 1

INNER JOIN Lkup.Environment AS svrenv
	ON svrinfo.ServerEnviromentId = svrenv.EnvironmentId
	AND svrenv.IsProduction = 1

LEFT OUTER JOIN [Detail].[SQLServerPatchingResultsProd] AS PatchRs
    ON svrinfo.ServerId = PatchRs.[ServerId]


WHERE svrinfo.ServerDomainId = 1
AND svrinfo.ServerTypeId = 3
--AND svrinfo.ServerEnviromentId IN  (1,7,8,9)
GO
/****** Object:  View [Detail].[vwDatabseInformationWithServer]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwDatabseInformationWithServer]

AS

SELECT
dbinfo.ServerId
,dbinfo.[ServerName]
,envc.[EnvironmentDesc]
,dbinfo.[DatabaseName]
--,dbinfo.[DatabaseOwner]
,dbinfo.[DatabaseStatus]
--,dbinfo.[DatabaseStateDesc]
--,dbinfo.[DataFiles]
,dbinfo.[DataFilesInMB]
--,dbinfo.[LogFiles]
,dbinfo.[LogFilesInMB]
--,dbinfo.[UserAccess]
,dbinfo.[RecoveryModel]
,dbinfo.[CompatibilityLevel]
,dbinfo.[CreationDate]
--,dbinfo.[LastFullDatabaseBackupInDays]
,dbinfo.[LastFullDatabseBackup]
--,dbinfo.[LastDiffDatabaseBackupInDays]
,dbinfo.[LastDiffDatabseBackup]
--,dbinfo.[LastTLogDatabaseBackupInDays]
,dbinfo.[LastTLogDatabseBackup]
--,dbinfo.[LastDatabaseRestoreInDays]
,dbinfo.[LastDatabseRestore]
,dbinfo.[RestoredFromServer]
--,dbinfo.[Fulltext]
--,dbinfo.[Autoclose]
--,dbinfo.[PageVerifyOption]
,dbinfo.[ReadOnly]
--,dbinfo.[Autoshrink]
--,dbinfo.[AutoCreateStatistics]
--,dbinfo.[AutoUpdateStatistics]
--,dbinfo.[Standby]
--,dbinfo.[CleanlyShutdown]
,envc.EnvironmentPriority
FROM [Detail].[SQLDatabaseInfo] AS dbinfo
INNER JOIN Config.ServerInfo AS svrc
ON dbinfo.ServerId = svrc.ServerId
INNER JOIN Lkup.Environment AS envc
ON svrc.ServerEnviromentId = envc.EnvironmentId
WHERE dbinfo.CurrentPreviousInd = 'C'
--ORDER BY envc.EnvironmentPriority, dbinfo.ServerName;
GO
/****** Object:  View [Detail].[vwSQLAgnetJobFailureLast72H]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Detail].[vwSQLAgnetJobFailureLast72H]

AS


SELECT 
ajf.[ServerName]
,svre.[EnvironmentName]
,ajf.[JobName]
,ajf.[JobGuid]
,ajf.[StepId]
,ajf.[StepName]
,ajf.[FailureDateTime]
,ajf.[NextRunDateTime]
,ajf.[StepDuration]
,ajf.[ExecutionStatus]
,ajf.[RetriesAttempted]
,ajf.[SQLSeverity]
,ajf.[SQLMessageId]
,ajf.[InstanceId]
,ajf.[ErrorMessage]
,ajf.[HasBeenRepotedOn]
,ajf.[HasBeenFixed]
,ajf.[InsertDateTime]
,svre.[EnvironmentId]
,svre.[EnvironmentPriority]
FROM [ServerAdmin].[Detail].[SQLServerAgentJobFailure] AS ajf
INNER JOIN Lkup.ServerList AS svr
ON ajf.ServerId = svr.ServerId
INNER JOIN Config.ServerInfo AS svcinfo
ON svr.ServerId = svcinfo.ServerId
LEFT OUTER JOIN Lkup.Environment AS svre
ON svcinfo.ServerEnviromentId = svre.EnvironmentId

WHERE ajf.FailureDateTime >= DATEADD(HOUR, -72, SYSDATETIME())
GO
/****** Object:  Table [SurveyResults].[SurveyResponse]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[SurveyResponse](
	[SurveyResponseId] [smallint] IDENTITY(1,1) NOT NULL,
	[SurveyResponseText] [nvarchar](50) NOT NULL,
	[SurveyResponseWeightValue] [decimal](10, 2) NOT NULL,
	[SurveyResponseCurrnetPrevInd] [nchar](1) NOT NULL,
	[SurveyResponseEffectiveDate] [datetime2](4) NOT NULL,
	[SurveyResponseExpirationDate] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SurveyResults].[SurveyResults]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[SurveyResults](
	[SurveyResultId] [int] IDENTITY(1,1) NOT NULL,
	[SurveyResultUserId] [nvarchar](200) NOT NULL,
	[SurveyId] [smallint] NOT NULL,
	[SurveyQuestionId] [smallint] NOT NULL,
	[SurveyResponseId] [smallint] NULL,
	[SurveyResultIsActive] [bit] NOT NULL,
	[SurveyResultInsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SurveyResults].[HierarchyInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[HierarchyInfo](
	[HierarchyId] [smallint] IDENTITY(1,1) NOT NULL,
	[EmployeeUserId] [nvarchar](200) NOT NULL,
	[ReportToUserId] [nvarchar](200) NOT NULL,
	[HierarchyIsActive] [bit] NOT NULL,
	[HierarchyInsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [PK_HierarchyInfo] PRIMARY KEY CLUSTERED 
(
	[HierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [SurveyResults].[vwSurveyResultsResponses]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [SurveyResults].[vwSurveyResultsResponses]
AS 

SELECT
hri.[ReportToUserId]
, PivotTable.*
FROM
(
SELECT
svryr.[SurveyResultUserId]
,svryr.[SurveyId]
,svryr.[SurveyQuestionId]
--,svryr.[SurveyResponseId]
--,svryr.[SurveyResultIsActive]
,svryresp.[SurveyResponseText]
--,svryresp.[SurveyResponseWeightValue]
FROM [SurveyResults].[SurveyResults] AS svryr
INNER JOIN [SurveyResults].[SurveyResponse] AS svryresp
ON svryr.[SurveyResponseId] = svryresp.[SurveyResponseId]
WHERE svryr.[SurveyId] = 1
--AND svryr.[SurveyResultUserId] = 'mark.chard@dcyf.wa.gov'
) AS SourceData
PIVOT
(MAX([SurveyResponseText]) FOR [SurveyQuestionId] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
)AS PivotTable
LEFT OUTER JOIN [SurveyResults].[HierarchyInfo] AS hri
ON PivotTable.[SurveyResultUserId] = hri.[EmployeeUserId]
GO
/****** Object:  View [SurveyResults].[vwSurveyResultsResponseValues]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [SurveyResults].[vwSurveyResultsResponseValues]
AS 

SELECT
hri.[ReportToUserId]
, PivotTable.*
FROM
(
SELECT
svryr.[SurveyResultUserId]
,svryr.[SurveyId]
,svryr.[SurveyQuestionId]
--,svryr.[SurveyResponseId]
--,svryr.[SurveyResultIsActive]
--,svryresp.[SurveyResponseText]
,svryresp.[SurveyResponseWeightValue]
FROM [SurveyResults].[SurveyResults] AS svryr
INNER JOIN [SurveyResults].[SurveyResponse] AS svryresp
ON svryr.[SurveyResponseId] = svryresp.[SurveyResponseId]
WHERE svryr.[SurveyId] = 1
--AND svryr.[SurveyResultUserId] = 'mark.chard@dcyf.wa.gov'
) AS SourceData
PIVOT
(MAX([SurveyResponseWeightValue]) FOR [SurveyQuestionId] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
)AS PivotTable
LEFT OUTER JOIN [SurveyResults].[HierarchyInfo] AS hri
ON PivotTable.[SurveyResultUserId] = hri.[EmployeeUserId]
GO
/****** Object:  View [SurveyResults].[vwSurveyResultsSummaryByUser]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [SurveyResults].[vwSurveyResultsSummaryByUser]
AS 

SELECT
hri.[ReportToUserId]
,[SurveyResultUserId]
,[SurveyId]
,SUM([1]+[2])/2 AS BaseCamp1
,SUM([3]+[4]+[5]+[6])/4 AS BaseCamp2
,SUM([7]+[8]+[9]+[10])/4 AS BaseCamp3
,SUM([11]+[12])/2 AS SUMMIT
FROM
(
SELECT
svryr.[SurveyResultUserId]
,svryr.[SurveyId]
,svryr.[SurveyQuestionId]
--,svryr.[SurveyResponseId]
--,svryr.[SurveyResultIsActive]
--,svryresp.[SurveyResponseText]
,svryresp.[SurveyResponseWeightValue]
FROM [SurveyResults].[SurveyResults] AS svryr
INNER JOIN [SurveyResults].[SurveyResponse] AS svryresp
ON svryr.[SurveyResponseId] = svryresp.[SurveyResponseId]
WHERE svryr.[SurveyId] = 1
--AND svryr.[SurveyResultUserId] = 'mark.chard@dcyf.wa.gov'
) AS SourceData
PIVOT
(MAX([SurveyResponseWeightValue]) FOR [SurveyQuestionId] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
)AS PivotTable
LEFT OUTER JOIN [SurveyResults].[HierarchyInfo] AS hri
ON PivotTable.[SurveyResultUserId] = hri.[EmployeeUserId]
GROUP BY hri.[ReportToUserId],[SurveyResultUserId]
,[SurveyId]
GO
/****** Object:  Table [Detail].[SQLServerAgentJob]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerAgentJob](
	[sql_server_agent_job_id] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[sql_server_name] [nvarchar](128) NOT NULL,
	[sql_server_agent_job_id_guid] [uniqueidentifier] NOT NULL,
	[sql_server_agent_job_name] [nvarchar](128) NOT NULL,
	[job_create_datetime_utc] [datetime] NOT NULL,
	[job_last_modified_datetime_utc] [datetime] NOT NULL,
	[is_enabled] [bit] NOT NULL,
	[is_deleted] [bit] NOT NULL,
	[job_category_name] [nvarchar](100) NOT NULL,
	[HashByte] [char](66) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [PK_SQLServerAgentJob_ServerName_JobGuid] PRIMARY KEY CLUSTERED 
(
	[sql_server_name] ASC,
	[sql_server_agent_job_id_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLJobSchedules]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLJobSchedules](
	[JobSchedulesRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[schedule_id] [int] NULL,
	[job_id] [uniqueidentifier] NULL,
	[next_run_date] [int] NOT NULL,
	[next_run_time] [int] NOT NULL,
	[HashByte] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLSysSchedules]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLSysSchedules](
	[SchedulesRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[schedule_id] [int] NOT NULL,
	[schedule_uid] [uniqueidentifier] NOT NULL,
	[originating_server_id] [int] NOT NULL,
	[name] [sysname] NOT NULL,
	[owner_sid] [varbinary](85) NOT NULL,
	[enabled] [int] NOT NULL,
	[freq_type] [int] NOT NULL,
	[freq_interval] [int] NOT NULL,
	[freq_subday_type] [int] NOT NULL,
	[freq_subday_interval] [int] NOT NULL,
	[freq_relative_interval] [int] NOT NULL,
	[freq_recurrence_factor] [int] NOT NULL,
	[active_start_date] [int] NOT NULL,
	[active_end_date] [int] NOT NULL,
	[active_start_time] [int] NOT NULL,
	[active_end_time] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NOT NULL,
	[version_number] [int] NOT NULL,
	[HashByte] [char](66) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[EffecitveDate] [datetime2](4) NOT NULL,
	[ExpirationDate] [datetime2](4) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLAgentJobSchedules]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwSQLAgentJobSchedules]
AS

SELECT --TOP (1000)
--[sql_server_agent_job_id]
svr.[ServerId]
,svrl.ServerName
,sajs.[sql_server_name]
,senv.EnvironmentDesc
,senv.EnvironmentPriority
--,[sql_server_agent_job_id_guid]
,sajs.[sql_server_agent_job_name]
--,[job_create_datetime_utc]
,sajs.[job_last_modified_datetime_utc] AS LastModifiedDatetime
,sajs.[is_enabled]
--,[is_deleted]
,sajs.[job_category_name] AS JobCategoryName
--,[HashByte]
--,[InsertDatetime]
--,[LastUpdatedDatetime]
, CASE(ssys.freq_type)
WHEN 1  THEN 'Once'
WHEN 4  THEN 'Daily'
WHEN 8  THEN (case when (ssys.freq_recurrence_factor > 1) then  'Every ' + convert(varchar(3),ssys.freq_recurrence_factor) + ' Weeks'  else 'Weekly'  end)
WHEN 16 THEN (case when (ssys.freq_recurrence_factor > 1) then  'Every ' + convert(varchar(3),ssys.freq_recurrence_factor) + ' Months' else 'Monthly' end)
WHEN 32 THEN 'Every ' + convert(varchar(3),ssys.freq_recurrence_factor) + ' Months' -- RELATIVE
WHEN 64 THEN 'SQL Startup'
WHEN 128 THEN 'SQL Idle'
ELSE NULL
END AS Frequency,  
CASE
WHEN (freq_type = 1)                       then 'One time only'
WHEN (freq_type = 4 and freq_interval = 1) then 'Every Day'
WHEN (freq_type = 4 and freq_interval > 1) then 'Every ' + convert(varchar(10),freq_interval) + ' Days'
WHEN (freq_type = 8) THEN (
    SELECT 'Weekly Schedule' = MIN(D1+ D2+D3+D4+D5+D6+D7 )
    FROM (
        SELECT ss.ServerId, ss.schedule_id,freq_interval, 
        'D1' = CASE WHEN (freq_interval & 1  <> 0) then 'Sun ' ELSE '' END,
        'D2' = CASE WHEN (freq_interval & 2  <> 0) then 'Mon '  ELSE '' END,
        'D3' = CASE WHEN (freq_interval & 4  <> 0) then 'Tue '  ELSE '' END,
        'D4' = CASE WHEN (freq_interval & 8  <> 0) then 'Wed '  ELSE '' END,
        'D5' = CASE WHEN (freq_interval & 16 <> 0) then 'Thu '  ELSE '' END,
        'D6' = CASE WHEN (freq_interval & 32 <> 0) then 'Fri '  ELSE '' END,
        'D7' = CASE WHEN (freq_interval & 64 <> 0) then 'Sat '  ELSE '' END
        FROM Detail.SQLSysSchedules ss
        WHERE freq_type = 8
        ) AS F
    WHERE schedule_id = sjs.schedule_id
    AND  ServerId = sjs.ServerId
    )
WHEN (freq_type = 16) then 'Day ' + convert(varchar(2),freq_interval) 
WHEN (freq_type = 32) THEN (
    SELECT  freq_rel + WDAY 
    FROM (
        SELECT ss.ServerId,ss.schedule_id,
        'freq_rel' = CASE(freq_relative_interval)
        WHEN 1 then 'First'
        WHEN 2 then 'Second'
        WHEN 4 then 'Third'
        WHEN 8 then 'Fourth'
        WHEN 16 then 'Last'
        ELSE NULL
        END,
        'WDAY'     = CASE (freq_interval)
        WHEN 1 then ' Sun'
        WHEN 2 then ' Mon'
        WHEN 3 then ' Tue'
        WHEN 4 then ' Wed'
        WHEN 5 then ' Thu'
        WHEN 6 then ' Fri'
        WHEN 7 then ' Sat'
        WHEN 8 then ' Day'
        WHEN 9 then ' Weekday'
        WHEN 10 then ' Weekend'
        ELSE NULL
        END
        FROM Detail.SQLSysSchedules SS
        WHERE ssys.freq_type = 32
        ) as WS 
    WHERE WS.schedule_id = ssys.schedule_id
    AND WS.ServerId = ssys.ServerId
) END AS Interval,
CASE (freq_subday_type)
WHEN 1 then   left(stuff((stuff((replicate('0', 6 - len(active_start_time)))+ convert(varchar(6),active_start_time),3,0,':')),6,0,':'),8)
WHEN 2 then 'Every ' + convert(varchar(10),freq_subday_interval) + ' seconds'
WHEN 4 then 'Every ' + convert(varchar(10),freq_subday_interval) + ' minutes'
WHEN 8 then 'Every ' + convert(varchar(10),freq_subday_interval) + ' hours'
ELSE NULL
END AS [Time],
CASE sjs.next_run_date
WHEN 0 THEN cast('n/a' as char(10))
ELSE convert(char(10), convert(datetime, convert(char(8),sjs.next_run_date)),120)  + ' ' + left(stuff((stuff((replicate('0', 6 - len(next_run_time)))+ convert(varchar(6),next_run_time),3,0,':')),6,0,':'),8)
END AS NextRunTime
,ssys.[enabled] AS ScheduleEnabled

FROM Config.ServerInfo AS svr

INNER JOIN Lkup.ServerList AS svrl
	ON svr.ServerId = svrl.ServerId
	AND svrl.ServerIsActive = 1

LEFT OUTER JOIN Detail.SQLServerAgentJob AS sajs
	ON svr.ServerId = sajs.ServerId 

LEFT OUTER JOIN Lkup.Environment AS senv
    ON svr.ServerEnviromentId = senv.EnvironmentId
    AND senv.EnvironmentIsActive = 1

LEFT OUTER JOIN Detail.SQLJobSchedules AS sjs --SJ
    ON sajs.ServerId = sjs.ServerId
    AND sajs.sql_server_agent_job_id_guid = sjs.job_id
    AND sjs.CurrentPreviousInd = 'C'
    
LEFT OUTER JOIN Detail.SQLSysSchedules AS ssys --SS
    ON sajs.ServerId = ssys.ServerId
    AND sjs.schedule_id = ssys.schedule_id
    AND sjs.CurrentPreviousInd = 'C'

WHERE svr.ServerInfoIsActive = 1
	AND svr.ServerTypeId = 3


GO
/****** Object:  Table [Detail].[SSISTableErrors]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SSISTableErrors](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](150) NOT NULL,
	[PackageTaskName] [nvarchar](150) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorDescription] [nvarchar](1000) NULL,
	[ErrorColumn] [int] NULL,
	[ColumnName] [nvarchar](100) NULL,
	[LookUpValues] [nvarchar](400) NULL,
	[Comments] [nvarchar](500) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLServerPatchingResultsErrors]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Detail].[vwSQLServerPatchingResultsErrors]

AS 

SELECT
TOP (1000)
[RecordId]
,[PackageName]
,[PackageTaskName]
,[ErrorCode]
,[ErrorDescription]
,[ErrorColumn]
,[ColumnName]
,[LookUpValues]
,[Comments]
,[InsertDatetime]
FROM [ServerAdmin].[Detail].[SSISTableErrors]
WHERE PackageName IN ('SQLProdPatchingCheckItems','SQLNonProdPatchingCheckItems')
GO
/****** Object:  Table [Detail].[SQLServerPatchingResultsNonProd]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerPatchingResultsNonProd](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NULL,
	[ServerName] [nvarchar](128) NULL,
	[ServerVersion] [nvarchar](1000) NULL,
	[ServiceName] [nvarchar](100) NULL,
	[SQLVersionBuild] [nvarchar](75) NULL,
	[Edition] [nvarchar](100) NULL,
	[OSVersion] [nvarchar](300) NULL,
	[EngineEdition] [nvarchar](100) NULL,
	[ProductVersion] [nvarchar](100) NULL,
	[SQLServerStartTime] [datetime] NULL,
	[SQLServerAgentRunning] [int] NULL,
	[ProcessRunDatetime] [datetime] NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [Detail].[vwSQLServerPatchingResultsNonProd]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Detail].[vwSQLServerPatchingResultsNonProd]

AS 

SELECT 
svrinfo.[ServerId]
,svrl.[ServerName]
,COALESCE(svrl.ADDescription, 'Unknown') AS ADDescription
,PatchRs.[ServerVersion]
,PatchRs.[ServiceName]
,PatchRs.[SQLVersionBuild]
,PatchRs.[Edition]
,PatchRs.[OSVersion]
,PatchRs.[EngineEdition]
,PatchRs.[ProductVersion]
,PatchRs.[SQLServerStartTime]
,PatchRs.[SQLServerAgentRunning]
,PatchRs.[ProcessRunDatetime]
,PatchRs.[InsertDatetime]
FROM Config.ServerInfo AS svrinfo

INNER JOIN Lkup.ServerList AS svrl
    ON svrinfo.ServerId = svrl.ServerId
	AND svrl.ServerIsActive = 1

INNER JOIN Lkup.Environment AS svrenv
	ON svrinfo.ServerEnviromentId = svrenv.EnvironmentId
	AND svrenv.IsProduction = 0

LEFT OUTER JOIN [Detail].[SQLServerPatchingResultsNonProd] AS PatchRs
    ON svrinfo.ServerId = PatchRs.[ServerId]


WHERE svrinfo.ServerDomainId = 1
AND svrinfo.ServerTypeId = 3
--AND svrinfo.ServerEnviromentId IN (2,3,4,5,10)


GO
/****** Object:  UserDefinedFunction [Calend].[fnGetEasterHolidays]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Calend].[fnGetEasterHolidays](@TheYear INT) 
RETURNS TABLE
WITH SCHEMABINDING
AS 
RETURN 
(
  WITH x AS 
  (
    SELECT TheDate = DATEFROMPARTS(@TheYear, [Month], [Day])
      FROM (SELECT [Month], [Day] = DaysToSunday + 28 - (31 * ([Month] / 4))
      FROM (SELECT [Month] = 3 + (DaysToSunday + 40) / 44, DaysToSunday
      FROM (SELECT DaysToSunday = paschal - ((@TheYear + (@TheYear / 4) + paschal - 13) % 7)
      FROM (SELECT paschal = epact - (epact / 28)
      FROM (SELECT epact = (24 + 19 * (@TheYear % 19)) % 30) 
        AS epact) AS paschal) AS dts) AS m) AS d
  )
  SELECT TheDate, HolidayText = 'Easter Sunday' FROM x
    UNION ALL SELECT DATEADD(DAY, -2, TheDate), 'Good Friday'   FROM x
    UNION ALL SELECT DATEADD(DAY,  1, TheDate), 'Easter Monday' FROM x
);
GO
/****** Object:  Table [Config].[DatabaseDetail]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[DatabaseDetail](
	[DatabaseID] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [varchar](50) NOT NULL,
	[DatabaseDescription] [varchar](max) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId ] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Config].[EnvironmentType]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[EnvironmentType](
	[EnvironmentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionShort] [varchar](50) NULL,
	[DescriptionLong] [varchar](1000) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkEnvironmentType_EnvironmentTypeID] PRIMARY KEY CLUSTERED 
(
	[EnvironmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[Instance]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[Instance](
	[InstanceID] [int] IDENTITY(1,1) NOT NULL,
	[ServerID] [int] NOT NULL,
	[InstancePurposeID] [int] NULL,
	[InstanceName] [varchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkInstance_InstancePurposeID] PRIMARY KEY CLUSTERED 
(
	[InstanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[InstanceDatabase]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[InstanceDatabase](
	[InstanceDatabaseID] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseID] [int] NOT NULL,
	[InstanceID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[InstancePurpose]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[InstancePurpose](
	[InstancePurposeID] [int] IDENTITY(1,1) NOT NULL,
	[InstancePurposeDescriptionShort] [varchar](50) NULL,
	[InstancePurposeDescriptionMedium] [varchar](50) NULL,
	[InstancePurposeDescriptionLong] [varchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId ] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkInstancePurpose_InstancePurposeID] PRIMARY KEY CLUSTERED 
(
	[InstancePurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[NetworkType]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[NetworkType](
	[NetworkTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionShort] [varchar](50) NULL,
	[DescriptionLong] [varchar](1000) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkNetworkType_NetworkTypeID] PRIMARY KEY CLUSTERED 
(
	[NetworkTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[ServerDetail]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[ServerDetail](
	[ServerID] [int] IDENTITY(1,1) NOT NULL,
	[NetworkTypeID] [int] NULL,
	[EnvironmentTypeID] [int] NULL,
	[ServerPurposeID] [int] NULL,
	[ServerName] [varchar](50) NOT NULL,
	[ServerIPAddress] [varchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkServerDetail_ServerID] PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Config].[ServerPurpose]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Config].[ServerPurpose](
	[ServerPurposeID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionShort] [varchar](50) NULL,
	[DescriptionLong] [varchar](max) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserId] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedByUserId] [varchar](50) NULL,
	[VerCtrlNum] [int] NOT NULL,
 CONSTRAINT [pkServerPurpose_ServerPurposeID] PRIMARY KEY CLUSTERED 
(
	[ServerPurposeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQLSchedules]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQLSchedules](
	[SQLSchedulesRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[schedule_id] [int] NOT NULL,
	[schedule_uid] [uniqueidentifier] NOT NULL,
	[originating_server_id] [int] NOT NULL,
	[name] [sysname] NOT NULL,
	[owner_sid] [varbinary](85) NOT NULL,
	[enabled] [int] NOT NULL,
	[freq_type] [int] NOT NULL,
	[freq_interval] [int] NOT NULL,
	[freq_subday_type] [int] NOT NULL,
	[freq_subday_interval] [int] NOT NULL,
	[freq_relative_interval] [int] NOT NULL,
	[freq_recurrence_factor] [int] NOT NULL,
	[active_start_date] [int] NOT NULL,
	[active_end_date] [int] NOT NULL,
	[active_start_time] [int] NOT NULL,
	[active_end_time] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NOT NULL,
	[version_number] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[ADAccountExpiryDate]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[ADAccountExpiryDate](
	[RecordID] [smallint] IDENTITY(1,1) NOT NULL,
	[samaccountname] [nvarchar](255) NOT NULL,
	[displayname] [nvarchar](255) NOT NULL,
	[ExpiryDate] [nvarchar](255) NULL,
	[LastLogonDate] [nvarchar](255) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[DatabaseFileSizes]    Script Date: 9/7/2021 2:17:36 PM ******/
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
/****** Object:  Table [Detail].[SQLBackups]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLBackups](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[backup_server_name] [nvarchar](128) NOT NULL,
	[backup_set_id] [int] NOT NULL,
	[media_set_id] [int] NOT NULL,
	[database_name] [nvarchar](128) NULL,
	[backup_start_date] [datetime] NULL,
	[backup_finish_date] [datetime] NULL,
	[DurationMin] [int] NULL,
	[DurationSec] [int] NULL,
	[type] [char](1) NULL,
	[BackupType] [varchar](21) NULL,
	[BackupSizeMb] [decimal](18, 2) NULL,
	[CompressedBackupSizeMb] [decimal](18, 2) NULL,
	[has_bulk_logged_data] [bit] NULL,
	[is_snapshot] [bit] NULL,
	[is_readonly] [bit] NULL,
	[is_single_user] [bit] NULL,
	[has_backup_checksums] [bit] NULL,
	[is_damaged] [bit] NULL,
	[begins_log_chain] [bit] NULL,
	[is_force_offline] [bit] NULL,
	[user_name] [nvarchar](128) NULL,
	[IsSystemDatabase] [int] NOT NULL,
	[restore_date] [datetime2](4) NULL,
	[restore_history_id] [int] NULL,
	[destination_database_name] [nvarchar](128) NULL,
	[restore_type] [char](1) NULL,
	[replace] [bit] NULL,
	[recovery] [bit] NULL,
	[restart] [bit] NULL,
	[IsRestoreRecord] [bit] NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
	[ProcessDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_DetailSQLBackup_ServerName_BackupSetId] PRIMARY KEY NONCLUSTERED 
(
	[ServerName] ASC,
	[backup_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLJobHistory]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLJobHistory](
	[JobHistoryRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[instance_id] [int] NOT NULL,
	[job_id] [uniqueidentifier] NOT NULL,
	[step_id] [int] NOT NULL,
	[step_name] [sysname] NOT NULL,
	[sql_message_id] [int] NOT NULL,
	[sql_severity] [int] NOT NULL,
	[message] [nvarchar](4000) NULL,
	[run_status] [int] NOT NULL,
	[run_date] [int] NOT NULL,
	[run_time] [int] NOT NULL,
	[run_duration] [int] NOT NULL,
	[operator_id_emailed] [int] NOT NULL,
	[operator_id_netsent] [int] NOT NULL,
	[operator_id_paged] [int] NOT NULL,
	[retries_attempted] [int] NOT NULL,
	[server] [sysname] NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLJobSteps]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLJobSteps](
	[JobStepsRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[job_id] [uniqueidentifier] NOT NULL,
	[step_id] [int] NOT NULL,
	[step_name] [sysname] NOT NULL,
	[subsystem] [nvarchar](40) NOT NULL,
	[command] [nvarchar](max) NULL,
	[flags] [int] NOT NULL,
	[additional_parameters] [nvarchar](max) NULL,
	[cmdexec_success_code] [int] NOT NULL,
	[on_success_action] [tinyint] NOT NULL,
	[on_success_step_id] [int] NOT NULL,
	[on_fail_action] [tinyint] NOT NULL,
	[on_fail_step_id] [int] NOT NULL,
	[server] [sysname] NULL,
	[database_name] [sysname] NULL,
	[database_user_name] [sysname] NULL,
	[retry_attempts] [int] NOT NULL,
	[retry_interval] [int] NOT NULL,
	[os_run_priority] [int] NOT NULL,
	[output_file_name] [nvarchar](200) NULL,
	[last_run_outcome] [int] NOT NULL,
	[last_run_duration] [int] NOT NULL,
	[last_run_retries] [int] NOT NULL,
	[last_run_date] [int] NOT NULL,
	[last_run_time] [int] NOT NULL,
	[proxy_id] [int] NULL,
	[step_uid] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLServerAgentJobHistory]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerAgentJobHistory](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobGuid] [uniqueidentifier] NOT NULL,
	[StepId] [int] NOT NULL,
	[StepName] [nvarchar](128) NOT NULL,
	[JobRunDatetime] [datetime2](4) NULL,
	[NextRunDatetime] [datetime2](4) NULL,
	[StepDuration] [int] NOT NULL,
	[ExecutionStatus] [nvarchar](50) NOT NULL,
	[RetriesAttempted] [int] NOT NULL,
	[SQLSeverity] [int] NOT NULL,
	[SQLMessageId] [int] NOT NULL,
	[InstanceId] [int] NOT NULL,
	[JobHistoryMessage] [nvarchar](4000) NOT NULL,
	[HasBeenRepotedOn] [bit] NOT NULL,
	[HasBeenFixed] [bit] NOT NULL,
	[InsertDateTime] [datetime2](4) NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
 CONSTRAINT [pk_SQLServerAgentJobHistory_ServerName_InstanceId] PRIMARY KEY NONCLUSTERED 
(
	[ServerName] ASC,
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SQLServerAgentJobStepHistory]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SQLServerAgentJobStepHistory](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobGuid] [uniqueidentifier] NOT NULL,
	[StepId] [int] NOT NULL,
	[StepName] [nvarchar](128) NOT NULL,
	[JobRunDatetime] [datetime2](4) NULL,
	[NextRunDatetime] [datetime2](4) NULL,
	[StepDuration] [int] NOT NULL,
	[ExecutionStatus] [nvarchar](50) NOT NULL,
	[RetriesAttempted] [int] NOT NULL,
	[SQLSeverity] [int] NOT NULL,
	[SQLMessageId] [int] NOT NULL,
	[InstanceId] [int] NOT NULL,
	[JobHistoryMessage] [nvarchar](4000) NOT NULL,
	[HasBeenRepotedOn] [bit] NOT NULL,
	[HasBeenFixed] [bit] NOT NULL,
	[CurrentPreviousInd] [char](1) NOT NULL,
	[InsertDateTime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_DetailSQLServerAgentJobStepHistory_ServerName_InstanceId] PRIMARY KEY NONCLUSTERED 
(
	[ServerName] ASC,
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Detail].[SSISPackageProcessInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Detail].[SSISPackageProcessInfo](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[PackageStartTime] [datetime2](4) NOT NULL,
	[PackageEndTime] [datetime2](4) NOT NULL,
	[ServerStartTime] [datetime2](4) NOT NULL,
	[ServerEndTime] [datetime2](4) NOT NULL,
	[InsertedRecords] [int] NOT NULL,
	[NewRecords] [int] NOT NULL,
	[ChangedRecords] [int] NOT NULL,
	[UpdatedRecords] [int] NOT NULL,
	[DeletedRecords] [int] NOT NULL,
	[ErrorSourceRecords] [int] NOT NULL,
	[ErrorDestinationRecords] [int] NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_SSISPackageProcessInfo_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ActiveDirectoryServerList]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ActiveDirectoryServerList](
	[name] [nvarchar](255) NULL,
	[samaccountname] [nvarchar](255) NULL,
	[displayname] [nvarchar](255) NULL,
	[operatingSystem] [nvarchar](255) NULL,
	[distinguishedname] [nvarchar](500) NULL,
	[description] [nvarchar](4000) NULL,
	[InsertDatetime] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ActiveDirectoryUsers]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ActiveDirectoryUsers](
	[givenname] [nvarchar](255) NULL,
	[sn] [nvarchar](255) NULL,
	[samaccountname] [nvarchar](255) NULL,
	[displayname] [nvarchar](255) NULL,
	[telephonenumber] [nvarchar](255) NULL,
	[mail] [nvarchar](255) NULL,
	[mobile] [nvarchar](255) NULL,
	[physicaldeliveryofficename] [nvarchar](255) NULL,
	[department] [nvarchar](255) NULL,
	[division] [nvarchar](255) NULL,
	[initials] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[streetaddress] [nvarchar](255) NULL,
	[l] [nvarchar](255) NULL,
	[st] [nvarchar](255) NULL,
	[postalcode] [nvarchar](255) NULL,
	[manager] [nvarchar](255) NULL,
	[employeeid] [nvarchar](255) NULL,
	[distinguishedname] [nvarchar](500) NULL,
	[company] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[UserPrincipalName] [nvarchar](255) NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ADAccountExpiryDate]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ADAccountExpiryDate](
	[samaccountname] [nvarchar](255) NOT NULL,
	[displayname] [nvarchar](255) NOT NULL,
	[ExpiryDate] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[BaseDNSData]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[BaseDNSData](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[RecordData] [nvarchar](250) NULL,
	[Comments] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[IISLOG]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[IISLOG](
	[DATE] [varchar](150) NULL,
	[TIME] [varchar](150) NULL,
	[s-ip] [varchar](150) NULL,
	[cs-method] [varchar](150) NULL,
	[cs-uri-stem] [varchar](5000) NULL,
	[cs-uri-query] [varchar](5000) NULL,
	[s-port] [varchar](150) NULL,
	[s-username] [nvarchar](256) NULL,
	[c-ip] [varchar](50) NULL,
	[cs_User_Agent] [varchar](1024) NULL,
	[cs_Referer] [varchar](5000) NULL,
	[sc-STATUS] [varchar](150) NULL,
	[sc-substatus] [varchar](150) NULL,
	[sc-win32-STATUS] [varchar](150) NULL,
	[time-taken] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[ServerDriveSpace]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[ServerDriveSpace](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ServerId] [int] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[DriveLetter] [varchar](8000) NULL,
	[DriveLabel] [varchar](255) NULL,
	[capacityGB] [decimal](18, 4) NULL,
	[freespaceGB] [decimal](18, 4) NULL,
	[RecordHash] [varchar](66) NULL,
	[ProcessRunDatetime] [datetime2](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SQLDatabaseInfo]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SQLDatabaseInfo](
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NULL,
	[DatabaseId] [int] NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[DatabaseOwner] [nvarchar](128) NULL,
	[DatabaseStatus] [nvarchar](16) NULL,
	[DatabaseStateDesc] [nvarchar](60) NULL,
	[DataFiles] [int] NULL,
	[DataFilesInMB] [int] NULL,
	[LogFiles] [int] NULL,
	[LogFilesInMB] [int] NULL,
	[UserAccess] [nvarchar](60) NULL,
	[RecoveryModel] [nvarchar](60) NULL,
	[CompatibilityLevel] [nvarchar](25) NULL,
	[CreationDate] [datetime2](4) NULL,
	[LastFullDatabaseBackupInDays] [int] NULL,
	[LastFullDatabseBackup] [nvarchar](180) NULL,
	[LastDiffDatabaseBackupInDays] [int] NULL,
	[LastDiffDatabseBackup] [nvarchar](180) NULL,
	[LastTLogDatabaseBackupInDays] [int] NULL,
	[LastTLogDatabseBackup] [nvarchar](180) NULL,
	[LastDatabaseRestoreInDays] [int] NULL,
	[LastDatabseRestore] [nvarchar](180) NULL,
	[RestoredFromServer] [nvarchar](128) NULL,
	[Fulltext] [nvarchar](16) NULL,
	[Autoclose] [nvarchar](9) NULL,
	[PageVerifyOption] [nvarchar](60) NULL,
	[ReadOnly] [nvarchar](9) NULL,
	[Autoshrink] [nvarchar](10) NULL,
	[AutoCreateStatistics] [nvarchar](22) NULL,
	[AutoUpdateStatistics] [nvarchar](22) NULL,
	[Standby] [nvarchar](7) NULL,
	[CleanlyShutdown] [nvarchar](16) NULL,
	[RecordHash] [char](66) NOT NULL,
	[ProcessDatetime] [datetime2](4) NOT NULL,
	[InsertDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ETLImport].[SQLServerAgentJobHistory]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLImport].[SQLServerAgentJobHistory](
	[ServerId] [smallint] NOT NULL,
	[ServerName] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobGuid] [uniqueidentifier] NOT NULL,
	[StepId] [int] NOT NULL,
	[StepName] [nvarchar](128) NOT NULL,
	[JobRunDatetime] [datetime2](4) NULL,
	[NextRunDatetime] [datetime2](4) NULL,
	[StepDuration] [int] NOT NULL,
	[ExecutionStatus] [nvarchar](50) NOT NULL,
	[RetriesAttempted] [int] NOT NULL,
	[SQLSeverity] [int] NOT NULL,
	[SQLMessageId] [int] NOT NULL,
	[InstanceId] [int] NOT NULL,
	[JobHistoryMessage] [nvarchar](4000) NOT NULL,
	[CurrentPreviousInd] [char](1) NULL,
	[InsertDateTime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[RecordChangeType]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[RecordChangeType](
	[RecordChangeTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[RecordChageTypeDesc] [nvarchar](100) NOT NULL,
	[RecordChangeTypeIsActive] [bit] NOT NULL,
	[RecordChageTypeLastUpdated] [datetime2](4) NOT NULL,
 CONSTRAINT [pkLkupRecordChangeType] PRIMARY KEY CLUSTERED 
(
	[RecordChangeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerListOrg]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerListOrg](
	[ServerId] [smallint] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](255) NOT NULL,
	[ServerDescription] [nvarchar](250) NULL,
	[ServerIPAddress] [nvarchar](25) NULL,
	[ADDistinguishedNname] [nvarchar](500) NULL,
	[ADDescription] [nvarchar](4000) NULL,
	[ServerIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Lkup].[ServerRestorePoint]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lkup].[ServerRestorePoint](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[RestorePoint] [tinyint] NOT NULL,
	[RestorePointDescription] [nvarchar](250) NULL,
	[RestorePointIsActive] [bit] NOT NULL,
	[LastUpdatedDatetime] [datetime2](4) NOT NULL,
 CONSTRAINT [pk_LkupServerRestorePoint_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SurveyResults].[SurveyQuestions]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[SurveyQuestions](
	[SurveyQuestionId] [smallint] IDENTITY(1,1) NOT NULL,
	[SurveyId] [smallint] NOT NULL,
	[SurveyQuetion] [nvarchar](4000) NOT NULL,
	[SurveyQuestionOrder] [smallint] NOT NULL,
	[SurveyQuestionIsActive] [bit] NOT NULL,
	[InsetDatetime] [datetime2](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SurveyResults].[Surveys]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[Surveys](
	[SurveyId] [smallint] IDENTITY(1,1) NOT NULL,
	[SurveyName] [nvarchar](100) NOT NULL,
	[SurveyDescription] [nvarchar](150) NULL,
	[SurveyIsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SurveyResults].[Table_1]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SurveyResults].[Table_1](
	[RecordId] [smallint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[Q1] [nvarchar](50) NULL,
	[Q2] [nvarchar](50) NULL,
	[Q3] [nvarchar](50) NULL,
	[Q4] [nvarchar](50) NULL,
	[Q5] [nvarchar](50) NULL,
	[Q6] [nvarchar](50) NULL,
	[Q7] [nvarchar](50) NULL,
	[Q8] [nvarchar](50) NULL,
	[Q9] [nvarchar](50) NULL,
	[Q10] [nvarchar](50) NULL,
	[Q11] [nvarchar](50) NULL,
	[Q12] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [ix_ServerId_ServerInfoIsActive]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE NONCLUSTERED INDEX [ix_ServerId_ServerInfoIsActive] ON [Config].[ServerInfo]
(
	[ServerId] ASC,
	[ServerInfoIsActive] ASC
)
INCLUDE([ServerDomainId],[ServerEnviromentId],[ServerClassificationId],[ServerTypeId],[ServerDataCenterId],[ServerClusterId],[ServerReposityId]) WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [ix_ServerId_INC]    Script Date: 9/7/2021 2:17:36 PM ******/
CREATE NONCLUSTERED INDEX [ix_ServerId_INC] ON [Detail].[SQLServerAgentJobFailure]
(
	[ServerId] ASC
)
INCLUDE([ServerName],[JobName],[JobGuid],[StepId],[StepName],[FailureDateTime],[NextRunDateTime],[StepDuration],[ExecutionStatus],[RetriesAttempted],[SQLSeverity],[SQLMessageId],[InstanceId],[ErrorMessage],[HasBeenRepotedOn],[HasBeenFixed],[InsertDateTime]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Config].[EnvironmentType] ADD  CONSTRAINT [DF_ConfigEnvironmentType_StartDate]  DEFAULT (sysdatetime()) FOR [StartDate]
GO
ALTER TABLE [Config].[EnvironmentType] ADD  CONSTRAINT [DF_ConfigEnvironmentType_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [Config].[EnvironmentType] ADD  CONSTRAINT [DF_ConfigEnvironmentType_ModifiedDate]  DEFAULT (sysdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [Config].[EnvironmentType] ADD  CONSTRAINT [DF_ConfigEnvironmentType_VerCtrlNum]  DEFAULT ((1)) FOR [VerCtrlNum]
GO
ALTER TABLE [Config].[InstancePurpose] ADD  CONSTRAINT [DF_ConfigInstancePurpose_StartDate]  DEFAULT (sysdatetime()) FOR [StartDate]
GO
ALTER TABLE [Config].[InstancePurpose] ADD  CONSTRAINT [DF_ConfigInstancePurpose_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [Config].[InstancePurpose] ADD  CONSTRAINT [DF_ConfigInstancePurpose_ModifiedDate]  DEFAULT (sysdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [Config].[InstancePurpose] ADD  CONSTRAINT [DF_ConfigInstancePurpose_VerCtrlNum]  DEFAULT ((1)) FOR [VerCtrlNum]
GO
ALTER TABLE [Config].[NetworkType] ADD  CONSTRAINT [DF_ConfigNetworkType_StartDate]  DEFAULT (sysdatetime()) FOR [StartDate]
GO
ALTER TABLE [Config].[NetworkType] ADD  CONSTRAINT [DF_ConfigNetworkType_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [Config].[NetworkType] ADD  CONSTRAINT [DF_ConfigNetworkType_ModifiedDate]  DEFAULT (sysdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [Config].[NetworkType] ADD  CONSTRAINT [DF_ConfigNetworkType_VerCtrlNum]  DEFAULT ((1)) FOR [VerCtrlNum]
GO
ALTER TABLE [Config].[ServerDetail] ADD  CONSTRAINT [DF_ConfigServerDetail_StartDate]  DEFAULT (sysdatetime()) FOR [StartDate]
GO
ALTER TABLE [Config].[ServerDetail] ADD  CONSTRAINT [DF_ConfigServerDetail_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [Config].[ServerDetail] ADD  CONSTRAINT [DF_ConfigServerDetail_ModifiedDate]  DEFAULT (sysdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [Config].[ServerDetail] ADD  CONSTRAINT [DF_ConfigServerDetail_VerCtrlNum]  DEFAULT ((1)) FOR [VerCtrlNum]
GO
ALTER TABLE [Config].[ServerInfo] ADD  CONSTRAINT [DF_ServerInfo_ServerDomainId]  DEFAULT ((1)) FOR [ServerDomainId]
GO
ALTER TABLE [Config].[ServerInfo] ADD  CONSTRAINT [DF_ServerInfo_ServerInfoIsActive]  DEFAULT ((1)) FOR [ServerInfoIsActive]
GO
ALTER TABLE [Config].[ServerInfo] ADD  CONSTRAINT [DF_ServerInfo_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Config].[ServerPurpose] ADD  CONSTRAINT [DF_ConfigServerPurpose_StartDate]  DEFAULT (sysdatetime()) FOR [StartDate]
GO
ALTER TABLE [Config].[ServerPurpose] ADD  CONSTRAINT [DF_ConfigServerPurpose_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [Config].[ServerPurpose] ADD  CONSTRAINT [DF_ConfigServerPurpose_ModifiedDate]  DEFAULT (sysdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [Config].[ServerPurpose] ADD  CONSTRAINT [DF_ConfigServerPurpose_VerCtrlNum]  DEFAULT ((1)) FOR [VerCtrlNum]
GO
ALTER TABLE [Detail].[ADAccountExpiryDate] ADD  CONSTRAINT [DF_ADAccountExpiryDate_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
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
ALTER TABLE [Detail].[SQLBackups] ADD  CONSTRAINT [DF_SQLBackups_IsRestoreRecor]  DEFAULT ((0)) FOR [IsRestoreRecord]
GO
ALTER TABLE [Detail].[SQLBackups] ADD  CONSTRAINT [DF_SQLBackups_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLBackups] ADD  CONSTRAINT [DF_SQLBackups_ProcessDatetime]  DEFAULT (sysdatetime()) FOR [ProcessDatetime]
GO
ALTER TABLE [Detail].[SQLDatabaseInfo] ADD  CONSTRAINT [DF_DetailSQLDatabaseInfot_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLDatabaseInfo] ADD  CONSTRAINT [DF_DetailSQLDatabaseInfont_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SQLDatabaseInfo] ADD  CONSTRAINT [DF_SQLDatabaseInfo_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLJobSchedules] ADD  CONSTRAINT [DF_DetailSQLJobSchedules_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLJobSchedules] ADD  CONSTRAINT [DF_DetailSQLJobSchedules_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SQLJobSchedules] ADD  CONSTRAINT [DF_DetailSQLJobSchedules_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLServerAgentJob] ADD  CONSTRAINT [DF_SQLServerAgentJob_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLServerAgentJob] ADD  CONSTRAINT [DF_SQLServerAgentJob_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Detail].[SQLServerAgentJobFailure] ADD  CONSTRAINT [DF_SQLServerAgentJobFailure_HasBeenRepotedOn]  DEFAULT ((0)) FOR [HasBeenRepotedOn]
GO
ALTER TABLE [Detail].[SQLServerAgentJobFailure] ADD  CONSTRAINT [DF_SQLServerAgentJobFailure_HasBeenFixed]  DEFAULT ((0)) FOR [HasBeenFixed]
GO
ALTER TABLE [Detail].[SQLServerAgentJobFailure] ADD  CONSTRAINT [DF_SQLServerAgentJobFailure_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[SQLServerAgentJobHistory] ADD  CONSTRAINT [DF_SQLServerAgentJobHistory_HasBeenRepotedOn]  DEFAULT ((0)) FOR [HasBeenRepotedOn]
GO
ALTER TABLE [Detail].[SQLServerAgentJobHistory] ADD  CONSTRAINT [DF_SQLServerAgentJobHistory_HasBeenFixed]  DEFAULT ((0)) FOR [HasBeenFixed]
GO
ALTER TABLE [Detail].[SQLServerAgentJobHistory] ADD  CONSTRAINT [DF_SQLServerAgentJobHistory_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[SQLServerAgentJobHistory] ADD  CONSTRAINT [DF_DetailSQLServerAgentJobHistory_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLServerAgentJobStepHistory] ADD  CONSTRAINT [DF_DetailSQLServerAgentJobStepHistory_HasBeenRepotedOn]  DEFAULT ((0)) FOR [HasBeenRepotedOn]
GO
ALTER TABLE [Detail].[SQLServerAgentJobStepHistory] ADD  CONSTRAINT [DF_DetailSQLServerAgentJobStepHistory_HasBeenFixed]  DEFAULT ((0)) FOR [HasBeenFixed]
GO
ALTER TABLE [Detail].[SQLServerAgentJobStepHistory] ADD  CONSTRAINT [DF_DetailSQLServerAgentJobStepHistory_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLServerAgentJobStepHistory] ADD  CONSTRAINT [DF_DetailSQLServerAgentJobStepHistory_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[SQLServerDriveSpace] ADD  CONSTRAINT [DF_DetailSQLServerDriveSpace_CurrnetPreviousInd]  DEFAULT ('C') FOR [CurrnetPreviousInd]
GO
ALTER TABLE [Detail].[SQLServerDriveSpace] ADD  CONSTRAINT [DF_DetailSQLServerDriveSpace_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Detail].[SQLServerPatchingResultsNonProd] ADD  CONSTRAINT [DF_DettailSQLServerPatchingResultsNonProd_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLServerPatchingResultsProd] ADD  CONSTRAINT [DF_DettailSQLServerPatchingResultsProd_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLServerProperties] ADD  CONSTRAINT [DF_DetailSQLServerProperties_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLServerProperties] ADD  CONSTRAINT [DF_SQLServerProperties_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SQLSysSchedules] ADD  CONSTRAINT [DF_DetailSQLSysSchedules_CurrentPreviousInd]  DEFAULT ('C') FOR [CurrentPreviousInd]
GO
ALTER TABLE [Detail].[SQLSysSchedules] ADD  CONSTRAINT [DF_DetailSQLSysSchedules_EffecitveDate]  DEFAULT (sysdatetime()) FOR [EffecitveDate]
GO
ALTER TABLE [Detail].[SQLSysSchedules] ADD  CONSTRAINT [DF_DetailSQLSysSchedules_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_InsertedRecords]  DEFAULT ((0)) FOR [InsertedRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_NewRecords]  DEFAULT ((0)) FOR [NewRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_ChangedRecords]  DEFAULT ((0)) FOR [ChangedRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_UpdatedRecords]  DEFAULT ((0)) FOR [UpdatedRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_DeletedRecords]  DEFAULT ((0)) FOR [DeletedRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_ErrorSourceRecords]  DEFAULT ((0)) FOR [ErrorSourceRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_ErrorDestinationRecords]  DEFAULT ((0)) FOR [ErrorDestinationRecords]
GO
ALTER TABLE [Detail].[SSISPackageProcessInfo] ADD  CONSTRAINT [DF_SSISPackageProcessInfo_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [Detail].[SSISTableErrors] ADD  CONSTRAINT [DF_DetailSSISTableErrors_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[ActiveDirectoryUsers] ADD  CONSTRAINT [DF_ActiveDirectoryUsers_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[SQLDatabaseInfo] ADD  CONSTRAINT [DF_SQLDatabaseInfo_InsertDatetime]  DEFAULT (sysdatetime()) FOR [InsertDatetime]
GO
ALTER TABLE [ETLImport].[SQLServerAgentJobHistory] ADD  CONSTRAINT [DF_ETLImportSQLServerAgentJobHistory_InsertDateTime]  DEFAULT (sysdatetime()) FOR [InsertDateTime]
GO
ALTER TABLE [Lkup].[Classification] ADD  CONSTRAINT [DF_Classification_IsActive]  DEFAULT ((1)) FOR [ClassificationIsActive]
GO
ALTER TABLE [Lkup].[Classification] ADD  CONSTRAINT [DF_Classification_LastupdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[DataCenterInfo] ADD  CONSTRAINT [DF_DataCenterInfo_DataCenterIsActive]  DEFAULT ((1)) FOR [DataCenterIsActive]
GO
ALTER TABLE [Lkup].[DataCenterInfo] ADD  CONSTRAINT [DF_DataCenterInfo_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[Environment] ADD  CONSTRAINT [DF_Environment_EnvironmentIsActive]  DEFAULT ((1)) FOR [EnvironmentIsActive]
GO
ALTER TABLE [Lkup].[Environment] ADD  CONSTRAINT [DF_Environment_LastUpdateDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdateDatetime]
GO
ALTER TABLE [Lkup].[RecordChangeType] ADD  CONSTRAINT [DF_LkupRecordChangeType_RecordChangeTypeIsActive]  DEFAULT ((1)) FOR [RecordChangeTypeIsActive]
GO
ALTER TABLE [Lkup].[RecordChangeType] ADD  CONSTRAINT [DF_LkupRecordChangeType_RecordChageTypeLastUpdated]  DEFAULT (sysdatetime()) FOR [RecordChageTypeLastUpdated]
GO
ALTER TABLE [Lkup].[ServerCluster] ADD  CONSTRAINT [DF_ServerCluster_ClusterIsActive]  DEFAULT ((1)) FOR [ClusterIsActive]
GO
ALTER TABLE [Lkup].[ServerCluster] ADD  CONSTRAINT [DF_ServerCluster_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerDesignation] ADD  CONSTRAINT [DF_LkupServerDesignation_ClusterIsActive]  DEFAULT ((1)) FOR [ServerDesignationIsActive]
GO
ALTER TABLE [Lkup].[ServerDesignation] ADD  CONSTRAINT [DF_LkupServerDesignation_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerDomain] ADD  CONSTRAINT [DF_ServerDomain_DomainIsActive]  DEFAULT ((1)) FOR [DomainIsActive]
GO
ALTER TABLE [Lkup].[ServerDomain] ADD  CONSTRAINT [DF_ServerDomain_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerList] ADD  CONSTRAINT [DF_LkupServerList_ServerDomain]  DEFAULT ('DCYF') FOR [ServerDomain]
GO
ALTER TABLE [Lkup].[ServerList] ADD  CONSTRAINT [DF_LkupServerList_ServerIsActive]  DEFAULT ((1)) FOR [ServerIsActive]
GO
ALTER TABLE [Lkup].[ServerList] ADD  CONSTRAINT [DF_LkupServerList_RecordChangeType]  DEFAULT ((1)) FOR [RecordChangeType]
GO
ALTER TABLE [Lkup].[ServerList] ADD  CONSTRAINT [DF_LkupServerList_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerRepository] ADD  CONSTRAINT [DF_ServerRepository_RepositoryActive]  DEFAULT ((1)) FOR [RepositoryIsActive]
GO
ALTER TABLE [Lkup].[ServerRepository] ADD  CONSTRAINT [DF_ServerRepository_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerRestorePoint] ADD  CONSTRAINT [DF_ServerRestorePoint_RestorePointIsActive]  DEFAULT ((1)) FOR [RestorePointIsActive]
GO
ALTER TABLE [Lkup].[ServerRestorePoint] ADD  CONSTRAINT [DF_ServerRestorePoint_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [Lkup].[ServerType] ADD  CONSTRAINT [DF_ServerType_ServerTypeIsActive]  DEFAULT ((1)) FOR [ServerTypeIsActive]
GO
ALTER TABLE [Lkup].[ServerType] ADD  CONSTRAINT [DF_ServerType_LastUpdatedDatetime]  DEFAULT (sysdatetime()) FOR [LastUpdatedDatetime]
GO
ALTER TABLE [SurveyResults].[HierarchyInfo] ADD  CONSTRAINT [DF_HierarchyInfo_HierarchyIsActive]  DEFAULT ((1)) FOR [HierarchyIsActive]
GO
ALTER TABLE [SurveyResults].[HierarchyInfo] ADD  CONSTRAINT [DF_HierarchyInfo_HierarchyInsertDatetime]  DEFAULT (sysdatetime()) FOR [HierarchyInsertDatetime]
GO
ALTER TABLE [SurveyResults].[SurveyQuestions] ADD  CONSTRAINT [DF_SurveyQuestions_SurveyQuestionIsActive]  DEFAULT ((1)) FOR [SurveyQuestionIsActive]
GO
ALTER TABLE [SurveyResults].[SurveyQuestions] ADD  CONSTRAINT [DF_SurveyQuestions_InsetDatetime]  DEFAULT (sysdatetime()) FOR [InsetDatetime]
GO
ALTER TABLE [SurveyResults].[SurveyResponse] ADD  CONSTRAINT [DF_SR_SurveyResponse_SurveyResponseWeightValue]  DEFAULT ((0.0)) FOR [SurveyResponseWeightValue]
GO
ALTER TABLE [SurveyResults].[SurveyResponse] ADD  CONSTRAINT [DF_SR_SurveyResponse_SurveyResponseCurrnetPrevInd]  DEFAULT (N'C') FOR [SurveyResponseCurrnetPrevInd]
GO
ALTER TABLE [SurveyResults].[SurveyResponse] ADD  CONSTRAINT [DF_SR_SurveyResponse_SurveyResponseEffectiveDate]  DEFAULT (sysdatetime()) FOR [SurveyResponseEffectiveDate]
GO
ALTER TABLE [SurveyResults].[SurveyResults] ADD  CONSTRAINT [DF_SurveyResults_SurveyResultIsActive]  DEFAULT ((1)) FOR [SurveyResultIsActive]
GO
ALTER TABLE [SurveyResults].[SurveyResults] ADD  CONSTRAINT [DF_SurveyResults_SurveyResultInsertDatetime]  DEFAULT (sysdatetime()) FOR [SurveyResultInsertDatetime]
GO
ALTER TABLE [SurveyResults].[Surveys] ADD  CONSTRAINT [DF_Surveys_SurveyIsActive]  DEFAULT ((1)) FOR [SurveyIsActive]
GO
ALTER TABLE [Calend].[HolidayDimension]  WITH CHECK ADD  CONSTRAINT [fkDateDimension] FOREIGN KEY([TheDate])
REFERENCES [Calend].[DateDimension] ([TheDate])
GO
ALTER TABLE [Calend].[HolidayDimension] CHECK CONSTRAINT [fkDateDimension]
GO
/****** Object:  StoredProcedure [Detail].[LowDriveSpaceWarningEmails]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[LowDriveSpaceWarningEmails]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Sends emails to a group of users on servers that may have low disk space
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2021-02-24: Created by william benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
EXEC [Detail].[LowDriveSpaceWarningEmails]
@DrivePercentToCheck = 10.00
,@MailProfile = 'DCYF Database Server Notifications'
,@EmailRecipients = 'William.Benson@dcyf.wa.gov'
,@Debug = 1
 
**************************************************************************************************/
CREATE PROC [Detail].[LowDriveSpaceWarningEmails]

@DrivePercentToCheck DECIMAL(8,2) = 10.00
,@MailProfile NVARCHAR(250) = 'DCYF Database Server Notifications'
,@EmailRecipients NVARCHAR(MAX) = 'William.Benson@dcyf.wa.gov'
,@Debug BIT = 0

AS

BEGIN
	SET NOCOUNT ON;

	BEGIN TRY

	DECLARE
		@CountOfServerDriveSpaceRecords INT = 0
		,@Subject AS VARCHAR(250) --Subject of the email
		,@Message AS NVARCHAR(MAX) --Mesage body of the email
		,@SendEmail BIT = 0
		,@MailProfileToUse AS NVARCHAR(250);
	
	DECLARE @ErrMsg NVARCHAR(4000)
		, @ErrorMessage NVARCHAR(4000)
	    , @ErrorSeverity SMALLINT
	    , @ErrorDatabaseName VARCHAR(100)
	    , @ErrorSchemaName VARCHAR(100)
	    , @ErrorProcedureName VARCHAR(255)
	    , @ErrorLineNumber AS SMALLINT
	    ;

	DECLARE @ServerDriveSpaceJobs TABLE (
	[RecordId] SMALLINT IDENTITY(1,1) NOT NULL
	,[EnvironmentName] [VARCHAR](50) NULL
    ,[ServerName] [NVARCHAR](128) NOT NULL
	,[ADDescription] [NVARCHAR](4000) NOT NULL
    ,[DriveLabel] [VARCHAR](255) NULL
    ,[DriveLetter] [VARCHAR](10) NULL
    ,[CapacityGB] INT NULL
	,[UsedSpaceGB] INT NULL
	,[FreespaceGB] INT NULL
	,[PctFreeSpace] DECIMAL(10,2) NULL
	,[ProcessRunDatetime] [DATETIME2](4) NULL
    );


	IF @Debug = 1
        BEGIN
            PRINT '------------ Debug Inoformation ----------------' ;
		    PRINT '@DrivePercentToCheck: ' + ISNULL(CAST(@DrivePercentToCheck AS VARCHAR(100)), 'NULL') ;
            PRINT '@MailProfile: ' + ISNULL(CAST(@MailProfile AS VARCHAR(100)), 'NULL') ;
            PRINT '@EmailRecipients: ' + ISNULL(CAST(@EmailRecipients AS VARCHAR(MAX)), 'NULL') ;
        END

	INSERT INTO @ServerDriveSpaceJobs
	(
	    EnvironmentName,
		ServerName,
		ADDescription,
	    DriveLabel,
	    DriveLetter,
	    CapacityGB,
	    UsedSpaceGB,
	    FreespaceGB,
	    PctFreeSpace,
	    ProcessRunDatetime
	)
	SELECT
	[EnvironmentName]
	,[ServerName]
	,[ADDescription]
	,[DriveLabel]
	,[DriveLetter]
	,[CapacityGB]
	,[UsedSpaceGB]
	,[FreespaceGB]
	,[PctFreeSpace]
	,[ProcessRunDatetime]
	FROM [Detail].[vwServerDriveSpaceCurrent]
	WHERE [PctFreeSpace] <= @DrivePercentToCheck
	ORDER BY [EnvironmentPriority] 
	;

	SELECT @CountOfServerDriveSpaceRecords= @@ROWCOUNT;

	IF @Debug = 1
    BEGIN
		PRINT '@CountOfServerDriveSpaceRecords: ' + ISNULL(CAST(@CountOfServerDriveSpaceRecords AS VARCHAR(100)), 'NULL') ;
    END

	IF @CountOfServerDriveSpaceRecords = 0
	BEGIN
		/* No records where inserted*/
		RETURN
	END

	/* Create the HTML Email */
	SET @Subject = 'DCYF Servers with low drive space';
            
	SET @Message = '<html>' + '<body style="font: 12px Arial;">'
		+ '<div id="intro2" style="width:670px;">Below is a list of server with low drive space.' + '<br><br>' ;
            
	SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
		+ N'Please take a moment to review the list of servers and drive space below'
		+ N'</div><div style="margin-top:10px;">'
		+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
		+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
		+ N'<td>Environment Name</td>'
		+ N'<td>Server Name</td>'
		+ N'<td>AD Description</td>'
		+ N'<td>Drive Label</td>'
		+ N'<td>Drive Letter</td>'
		+ N'<td>Capacity(GB)</td>'
		+ N'<td>Used Space(GB)</td>'
		+ N'<td>Free Space(GB)</td>'
		+ N'<td>Percent of Free Space</td>'
		+ N'<td>Process Run Datetime</td>'		
		+'</tr>'
		+ CAST((SELECT
				"td/@align" = 'CENTER'
				, td = [EnvironmentName]
				, ''
				, "td/@align" = 'Center'
				, td = [ServerName]
				, ''
				, "td/@align" = 'Center'
				, td = [ADDescription]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [DriveLabel]
                , ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [DriveLetter]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [CapacityGB]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [UsedSpaceGB]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [FreespaceGB]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [PctFreeSpace]
				, ''
				, "td/@align" = 'Center' --[MinThreshholdSecs]
				, td = [ProcessRunDatetime]
				FROM @ServerDriveSpaceJobs
				--ORDER BY [JobName]
			FOR	XML PATH('tr'), TYPE) AS NVARCHAR(MAX)) + N'</table></div>'
		;			

	SET @Message = @Message
		--+ '</div>
		+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
		+ '<div style="margin-top:10px;"> '
		+ '<br>' + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button</div>'
		--+ '<a href="mailto:dcyfdldatabaseadmins@dcyf.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
		+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
		+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
		+ '</body></html>'
		--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ;


	IF @Debug = 1
		BEGIN
			PRINT '@Subject: ' + ISNULL(CAST(@MailProfile AS VARCHAR(100)), 'NULL') ;
			PRINT '@Message: ' + ISNULL(CAST(@Message AS VARCHAR(MAX)), 'NULL') ;
		END


	IF @Message IS NOT NULL AND @Subject IS NOT NULL AND @EmailRecipients IS NOT NULL
		BEGIN
			SELECT @SendEmail = 1
		END

	IF @Debug = 1
		BEGIN
			PRINT '@SendEmail: ' + ISNULL(CAST(@SendEmail AS VARCHAR(100)), 'NULL') ;
		END

	IF @SendEmail = 1
	BEGIN

		EXEC [DBMaint].[Utilities].[uspCheckMailProfileToUse]
		@MailProfileToSearchFor = @MailProfile
		,@ProfileNameToUse = @MailProfileToUse OUTPUT;

		EXEC msdb.dbo.sp_send_dbmail  
		    @profile_name = @MailProfileToUse
		    ,@recipients = @EmailRecipients 
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
			, @ErrorDatabaseName = DB_NAME()
			, @ErrorSchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
			, @ErrorProcedureName = OBJECT_NAME(@@PROCID) 
			, @ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;

	END CATCH

END


GO
/****** Object:  StoredProcedure [Detail].[uspGetListOfADAcctExpiratin_SendEmail]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspGetListOfADAcctExpiratin_SendEmail]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Gets a list of AD Amin accounts that will or have expired
**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2020-11-25: Created by william benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE ServerAdmin
GO

EXEC Detail.uspGetListOfADAcctExpiratin_SendEmail
@DaysToCheckExpiryDate = 11
,@MailProfile = 'DCYF Database Server Notifications'
,@EmailRecipients = 'dcyfdldatabaseadmins@dcyf.wa.gov;'
,@AdditionalRecipientsEmailAddress = ';'
,@DefaultTestingEmailAddress = 'William.Benson@dcyf.wa.gov'  
,@Debug = 0
 
**************************************************************************************************/
CREATE PROCEDURE [Detail].[uspGetListOfADAcctExpiratin_SendEmail]
@DaysToCheckExpiryDate SMALLINT = 11
,@MailProfile NVARCHAR(250) = 'DCYF Database Server Notifications'
,@EmailRecipients NVARCHAR(250) = 'dcyfdldatabaseadmins@dcyf.wa.gov;'
,@AdditionalRecipientsEmailAddress AS VARCHAR(MAX) = ';'
,@DefaultTestingEmailAddress NVARCHAR(250) = NULL 
,@Debug BIT = 0

AS


BEGIN

	SET NOCOUNT ON;

    BEGIN TRY

	    DECLARE
	    @ServerName AS VARCHAR(50)
	    ,@ServerType AS VARCHAR(50)
        ,@MailProfileToUse AS NVARCHAR(250)
	    ,@NewRecordCount AS INT = 0
        ,@PersonResultCount AS INT = 0
        ,@Subject AS VARCHAR(250) --Subject of the email
	    ,@Message AS NVARCHAR(MAX) --Mesage body of the email
	    ,@SendEmail BIT = 0
        ,@ExpirationDatetime AS DATETIME2(4)
        ,@CurrentDatetime AS DATETIME2(4)
        ,@M_ErrorMessage NVARCHAR(250)
        ,@EmailLoopCounter SMALLINT = 1
        ,@PersonResultLoopCounter SMALLINT = 1
        ,@DisplayName NVARCHAR(255)
        ,@EmailAddress NVARCHAR(255)
        ,@ADAccountName NVARCHAR(255)
        ,@ExpiryDate DATE
        ;


        /* Used for the details of the exception */
	    DECLARE @ErrMsg NVARCHAR(4000)
	    , @ErrorMessage NVARCHAR(4000)
	    , @ErrorSeverity SMALLINT
	    , @ErrorDatabaseName VARCHAR(100)
	    , @ErrorSchemaName VARCHAR(100)
	    , @ErrorProcedureName VARCHAR(255)
	    , @ErrorLineNumber AS SMALLINT
	    ;
	
        DECLARE @ResultTable TABLE(DisplayName NVARCHAR(255), EmailAddress NVARCHAR(255), ADAccountName NVARCHAR(255), ExpiryDate DATETIME2(4), AccountIsExpired NVARCHAR(5), DaysTillExpiration SMALLINT NULL, LastLogonDate DATETIME2(4) NULL)
        ;
        DECLARE @PersonResultTable TABLE(RecordId SMALLINT IDENTITY(1,1) NOT NULL,DisplayName NVARCHAR(255) NULL, EmailAddress NVARCHAR(255) NULL)
        ;
        
        SELECT @CurrentDatetime = CONVERT(CHAR(10), SYSDATETIME(), 121)
        ,@ExpirationDatetime = CONVERT(CHAR(10), DATEADD(DAY, @DaysToCheckExpiryDate, SYSDATETIME()), 121)

        INSERT @ResultTable
        (
          DisplayName
          ,EmailAddress
          ,ADAccountName
          ,Expirydate
          ,AccountIsExpired
          ,DaysTillExpiration
          ,LastLogonDate
        )
        SELECT TOP 1
        tblBase.DisplayName
        ,tblBase.EmailAddress
        ,tblBase.ADAccountName
        ,tblBase.ExpiryDate
        , CASE WHEN tblBase.ExpiryDate <@CurrentDatetime THEN 'Yes'
            ELSE 'No'
        END AS AccountIsExpired
        , CASE WHEN  tblBase.ExpiryDate <@CurrentDatetime THEN 0
            ELSE DATEDIFF(DAY,@CurrentDatetime,ExpiryDate)
        END AS DaysTillExpertion
        ,tblBase.LastLogonDate
        FROM (
        SELECT
        adex.[displayname] AS DisplayName
        ,adusr.mail AS EmailAddress
        ,adex.[samaccountname] AS ADAccountName
        ,TRY_CONVERT(DATETIME2(4),adex.[ExpiryDate]) AS ExpiryDate
        ,TRY_CONVERT(DATETIME2(4),adex.[LastLogonDate]) AS LastLogonDate
        FROM [Detail].[ADAccountExpiryDate] AS adex
        INNER JOIN ETLImport.ActiveDirectoryUsers AS adusr
        ON adex.[displayname] = adusr.displayname
        ) AS tblBase
        WHERE tblBase.EmailAddress IS NOT NULL
            AND  ((tblBase.ExpiryDate >=@CurrentDatetime AND tblBase.ExpiryDate <@ExpirationDatetime)
            OR (tblBase.ExpiryDate <@CurrentDatetime))
        ;   
    
        --CHeck for new records
        SELECT @NewRecordCount = @@ROWCOUNT;
   
        IF @Debug = 1
	    BEGIN
		    PRINT '------------ Debug Inoformation ----------------' ;
		    PRINT '@CurrentDatetime: ' + ISNULL(CAST(@CurrentDatetime AS VARCHAR(100)), 'NULL') ;
            PRINT '@ExpirationDatetime: ' + ISNULL(CAST(@ExpirationDatetime AS VARCHAR(100)), 'NULL') ;
            PRINT '@NewRecordCount: ' + ISNULL(CAST(@NewRecordCount AS VARCHAR(100)), 'NULL') ;
            SELECT * FROM @ResultTable
	    END

        IF @NewRecordCount = 0
        BEGIN
            RETURN
        END


    	    /* Start generatiing the email as long as we have history records */
	    IF @NewRecordCount > 0 
	    BEGIN
    
            INSERT INTO @PersonResultTable (DisplayName, EmailAddress)
            SELECT DISTINCT DisplayName, EmailAddress FROM @ResultTable;

            SELECT @PersonResultCount = @@ROWCOUNT

            IF @Debug = 1
	        BEGIN
		        PRINT '@PersonResultCount: ' + ISNULL(CAST(@PersonResultCount AS VARCHAR(100)), 'NULL') ;
                PRINT '@PersonResultLoopCounter: ' + ISNULL(CAST(@PersonResultLoopCounter AS VARCHAR(100)), 'NULL') ;
	        END
                
	        /* Loop Through Records to send each person an email about the expiration */
            WHILE @PersonResultLoopCounter <= @PersonResultCount
            BEGIN

                SELECT
                @DisplayName = DisplayName
                ,@EmailAddress = EmailAddress
                FROM @PersonResultTable
                WHERE RecordId = @PersonResultLoopCounter
                ;

                IF @Debug = 1
	            BEGIN
		            PRINT '@DisplayName: ' + ISNULL(CAST(@DisplayName AS VARCHAR(100)), 'NULL') ;
                    PRINT '@EmailAddress: ' + ISNULL(CAST(@EmailAddress AS VARCHAR(100)), 'NULL') ;
	            END
        
                SET @Subject = 'Notification of Password Expiration';
            
		        SET @Message = '<html>' + '<body style="font: 12px Arial;">'
			        + '<div id="intro2" style="width:670px;">Please review the inforamtion below regarding your AD accounts that are showing as expiring soon or already expired.'
			        + '<br><br>' ;
            
		        SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			        + N'Please review the list below about your accounts'
			        + N'</div><div style="margin-top:10px;">'
			        + N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			        + N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
					+ N'<td>User Display Name</td>'
			        + N'<td>Admin Tiered Account</td>'
			        + N'<td>Account Is Expired</td>'
			        + N'<td>Days Till Expiration</td>'   
                    + N'<td>Expiration Date</td>'
                    + N'<td>Last Logon Datetime</td>'
                    +'</tr>'
			        + CAST((SELECT
							"td/@align" = 'CENTER'
							, td = tblrst.DisplayName
					        , ''
					        ,"td/@align" = 'CENTER'
					        --,td = tblrst.[ADAccountName]
							, td = SUBSTRING(DBMaint.[Utilities].[udfRemoveStringData](tblrst.ADAccountName),2,1) 
					        , ''
					        , "td/@align" = 'CENTER'
					        , td = tblrst.[AccountIsExpired]
					        , ''
					        , "td/@align" = 'CENTER'
					        , td = tblrst.DaysTillExpiration
                            , ''
					        , "td/@align" = 'CENTER'
					        , td = FORMAT(CAST(CONVERT(CHAR(10),tblrst.ExpiryDate, 121) AS DATE), 'MM/dd/yyy') --tblrst.ExpiryDate
                            , ''
                            , "td/@align" = 'CENTER'
					        , td = FORMAT(CAST(tblrst.LastLogonDate AS DATETIME2(4)), 'MM/dd/yyyy hh:mm:ss tt') --FORMAT(CAST(tblrst.LastLogonDate AS DATE), 'MM/dd/yyy') --tblrst.ExpiryDate
					        FROM @ResultTable AS tblrst
					        WHERE tblrst.DisplayName = @DisplayName
                                AND tblrst.EmailAddress = @EmailAddress
					        ORDER BY tblrst.ADAccountName
                         FOR
					        XML PATH('tr')
						        , TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;


		        SET @Message = @Message
			        --+ '</div>
			        + '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
			        + '<div style="margin-top:10px;"> '
			        --+ '<br>'
                    + '<br>'
                    + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button.</div>'
			        --+ '<a href="mailto:dcyfdldatabaseadmins@dcyf.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
			        + '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
			        + '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
			        + '</body></html>'
			        --+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 

	        IF @Debug = 1
	        BEGIN
		        PRINT '@Subject: ' + ISNULL(CAST(@Subject AS VARCHAR(100)), 'NULL') ;
		        PRINT '@Message: ' + ISNULL(CAST(@Message AS VARCHAR(MAX)), 'NULL') ;
		        SELECT  @Message;
	        END

	        /* If no mail profile was passed in @MailProfileToUse then we set it to a defaul */ --this could be changed to a configuration table
            IF @MailProfileToUse IS NULL
	        BEGIN

		        EXEC [DBMaint].[Utilities].[uspCheckMailProfileToUse]
		        @MailProfileToSearchFor = @MailProfile
		        ,@ProfileNameToUse = @MailProfileToUse OUTPUT;
			
	        END

            IF @Subject IS NOT NULL AND @Message IS NOT NULL
            BEGIN
                SELECT @SendEmail = 1
            END
        
            IF @DefaultTestingEmailAddress IS NOT NULL
            BEGIN
                SELECT @EmailRecipients = @DefaultTestingEmailAddress;
            END

	        IF @Debug = 1
	        BEGIN
		        PRINT '@SendEmail: ' + ISNULL(CAST(@SendEmail AS VARCHAR(100)), 'NULL') ;
                PRINT '@EmailRecipients: ' + ISNULL(CAST(@EmailRecipients AS VARCHAR(100)), 'NULL') ;
	        END

	        IF @SendEmail = 1
	        BEGIN

		        EXEC msdb.dbo.sp_send_dbmail  
		            @profile_name = @MailProfileToUse
		            ,@recipients = @EmailRecipients 
			        ,@copy_recipients = @AdditionalRecipientsEmailAddress 
		            ,@subject = @Subject
			        ,@body = @Message
			        ,@body_format = 'HTML' 
			        ,@importance = 'High'
			        ;

	        END

            SELECT @PersonResultLoopCounter = @PersonResultLoopCounter + 1

    	    IF @Debug = 1
	        BEGIN
		        PRINT 'End Of Loop @PersonResultLoopCounter: ' + ISNULL(CAST(@PersonResultLoopCounter AS VARCHAR(MAX)), 'NULL') ;
                PRINT '------------ End Inoformation ----------------' ;
	        END
        END               
    END
    END TRY
	BEGIN CATCH
		 
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @ErrorDatabaseName = DB_NAME()
		, @ErrorSchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @ErrorProcedureName = OBJECT_NAME(@@PROCID) 
		, @ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;		
		
	END CATCH
END


GO
/****** Object:  StoredProcedure [Detail].[uspGetListOfUpdatedServers_SendEmail]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[Detail].[uspGetListOfUpdatedServers_SendEmail]

**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
Gets a list of server updates based on the date passed in
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
USE ServerAdmin
GO

EXEC [Detail].[uspGetListOfUpdatedServers_SendEmail]
@MailProfile = 'DCYF Database Server Notifications'
,@EmailRecipients = 'William.Benson@dcyf.wa.gov;'
--@SearchStartDate DATETIME2 = NULL
--,@AdditionalRecipientsEmailAddress = ';'
,@Debug = 0

**************************************************************************************************/
CREATE PROCEDURE [Detail].[uspGetListOfUpdatedServers_SendEmail]
@SearchStartDate DATETIME2 = NULL
,@MailProfile NVARCHAR(250) = 'DCYF Database Server Notifications'
,@EmailRecipients NVARCHAR(250) = 'dcyfdldatabaseadmins@dcyf.wa.gov;'
,@AdditionalRecipientsEmailAddress AS VARCHAR(MAX) = ';'
,@Debug BIT = 0

AS

BEGIN

	SET NOCOUNT ON;

    BEGIN TRY

	DECLARE
	@ServerName AS VARCHAR(50)
	,@ServerType AS VARCHAR(50)
    ,@MailProfileToUse AS NVARCHAR(250)
	,@NewRecordCount AS INT = 0	
    ,@Subject AS VARCHAR(250) --Subject of the email
	,@Message AS NVARCHAR(MAX) --Mesage body of the email
	,@SendEmail BIT = 0
    ,@M_ErrorMessage NVARCHAR(250);

    /* Used for the details of the exception */
	DECLARE @ErrMsg NVARCHAR(4000)
	, @ErrorMessage NVARCHAR(4000)
	, @ErrorSeverity SMALLINT
	, @ErrorDatabaseName VARCHAR(100)
	, @ErrorSchemaName VARCHAR(100)
	, @ErrorProcedureName VARCHAR(255)
	, @ErrorLineNumber AS SMALLINT
	;
	
    IF @SearchStartDate IS NULL
    BEGIN
        SELECT @SearchStartDate = CONVERT(CHAR(10), DATEADD(DAY, -1, SYSDATETIME()), 121)
    END

    --CHeck for new records
    SELECT @NewRecordCount = COUNT(1) FROM [Lkup].[ServerList] WHERE LastUpdatedDatetime >= @SearchStartDate;
   
    IF @Debug = 1
	BEGIN
		PRINT '------------ Debug Inoformation ----------------' ;
		PRINT '@NewRecordCount: ' + ISNULL(CAST(@NewRecordCount AS VARCHAR(100)), 'NULL') ;
        PRINT '@SearchStartDate: ' + ISNULL(CAST(@SearchStartDate AS VARCHAR(100)), 'NULL') ;
	END

    IF @NewRecordCount = 0
    BEGIN
        RETURN
    END


    	/* Start generatiing the email as long as we have history records */
	IF @NewRecordCount > 0 
	BEGIN 
                
		SET @Subject = 'DCYF Server Information'
            
		SET @Message = '<html>' + '<body style="font: 12px Arial;">'
			+ '<div id="intro2" style="width:670px;">New and or changed Servers in the DCYF Domain in the last 24 hours.'
			+ '<br><br>' ;
            
		SET @Message = @Message + N'<div style="margin-top:10px; margin-left:0px; font:12px Arial">'
			+ N'Please take a moment to review the list of server updates below'
			+ N'</div><div style="margin-top:10px;">'
			+ N'<table border="1" bordercolor=Black cellspacing="0" cellpadding="2" style="font:12px Arial">'
			+ N'<tr style="color:white;font-weight:bold;background-color:black;text-align:center">'
			+ N'<td>Server Domain</td>'
			+ N'<td>Server Name</td>'
			+ N'<td>Server Id</td>'   
            + N'<td>AD Description</td>'
			+ N'<td>Record Change Type</td>'
			+ N'<td>Last Updated Datetime</td>' 
            +'</tr>'
			+ CAST((SELECT
					"td/@align" = 'CENTER'
					, td = svrlst.[ServerDomain]
					, ''
					, "td/@align" = 'LEFT'
					, td = svrlst.[ServerName]
					, ''
					, "td/@align" = 'CENTER'
					, td = svrlst.[ServerId]
                    , ''
					, "td/@align" = 'CENTER'
					, td = svrlst.[ADDescription]
                    , ''
					, "td/@align" = 'CENTER'
					, td = rcng.RecordChageTypeDesc
                    , ''
					, "td/@align" = 'CENTER'
					, td = CONVERT(CHAR(10), svrlst.[LastUpdatedDatetime],101)
					FROM [Lkup].[ServerList] AS svrlst
                    INNER JOIN Lkup.RecordChangeType AS rcng
                        ON svrlst.RecordChangeType = rcng.RecordChangeTypeId
                        AND rcng.RecordChangeTypeIsActive = 1
					WHERE svrlst.LastUpdatedDatetime >= @SearchStartDate
					ORDER BY svrlst.[RecordChangeType], svrlst.[ServerId]
                 FOR
					XML PATH('tr')
						, TYPE) AS NVARCHAR(MAX)) + N'</table></div>' ;


		SET @Message = @Message
			--+ '</div>
			+ '<div id="notchanged" style="margin-top:10px; width:670px;"></div>'
			+ '<div style="margin-top:10px;"> '
			+ '<br>'
            + '<br>'
            + 'If you have any questions or concerns regarding this email, please feel free to contact your Database Administrators by hitting the Reply button.</div>'
			--+ '<a href="mailto:dcyfdldatabaseadmins@dcyf.wa.gov?Subject='+ @Subject + '"> the Database Administrators</a>.</div>'
			+ '<div style="margin-top:10px;">Sincerely,</div><div style="margin-top:10px;"></div>'
			+ '<div style="margin-top:10px;">The Database Administration Team</div><div style="margin-top:10px;"></div>'
			+ '</body></html>'
			--+ '<div id="disclaimer" style="margin-top:10px; font-weight:bold;">**** Please do not reply to this email. ****</div></div></div></body></html>' ; 

	END 

	IF @Debug = 1
	BEGIN
		PRINT '@Subject: ' + ISNULL(CAST(@Subject AS VARCHAR(100)), 'NULL') ;
		PRINT '@Message: ' + ISNULL(CAST(@Message AS VARCHAR(MAX)), 'NULL') ;

		SELECT  @Message;
	END

	/* If no mail profile was passed in @MailProfileToUse then we set it to a defaul */ --this could be changed to a configuration table
    IF @MailProfileToUse IS NULL
	BEGIN

		EXEC [DBMaint].[Utilities].[uspCheckMailProfileToUse]
		@MailProfileToSearchFor = @MailProfile
		,@ProfileNameToUse = @MailProfileToUse OUTPUT;
			
	END

    IF @Subject IS NOT NULL AND @Message IS NOT NULL
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
		    ,@recipients = @EmailRecipients 
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

    END TRY
	BEGIN CATCH
		 
		SELECT @ErrorSeverity = ERROR_SEVERITY()
		, @ErrorMessage = ERROR_MESSAGE()
		, @ErrorDatabaseName = DB_NAME()
		, @ErrorSchemaName = OBJECT_SCHEMA_NAME(@@PROCID)
		, @ErrorProcedureName = OBJECT_NAME(@@PROCID) 
		, @ErrorLineNumber = ERROR_LINE();                   
                
		SET @ErrMsg = @ErrorMessage + ' Occurred at Line_Number: ' + CAST(ERROR_LINE() AS VARCHAR(50)) + ' (Severity ' + CAST(@ErrorSeverity AS VARCHAR) + ')'
		RAISERROR (@ErrMsg, 18, 1) ;		
		
	END CATCH
END


GO
/****** Object:  StoredProcedure [ETLImport].[spCleanUpColumnDataByLength]    Script Date: 9/7/2021 2:17:36 PM ******/
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
/****** Object:  StoredProcedure [ETLImport].[SSISTableErrorsInsert]    Script Date: 9/7/2021 2:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************************************************
*** OBJECT NAME                                                                                ***
**************************************************************************************************
[ETLImport].[SSISTableErrorsInsert]
**************************************************************************************************
*** DESCRIPTION                                                                                ***
**************************************************************************************************
--Insert a row into the error loging - manual method

**************************************************************************************************
*** CHANGE HISTORY                                                                             ***
**************************************************************************************************
2020-08-29 Created by William Benson

**************************************************************************************************
*** PERFORMANCE HISTORY                                                                        ***
**************************************************************************************************
 
**************************************************************************************************
*** TEST SCRIPT                                                                                ***
**************************************************************************************************
USE ServerAdmin
GO

EXEC ETLImport.SSISTableErrorsInsert
@PackageName = 'This Package'
,@PackageTaskName = 'Package Task Name'
,@ErrorCode = 1
,@ErrorDescription = 'This is an error desc'
,@ErrorColumn = 12345
,@ColumnName = 'Error Column Name
,@LookUpValues 'ServerName|InstanceId'
,@Comments = 'Something here'
--,@Debug = 1
GO

**************************************************************************************************/
CREATE PROCEDURE [ETLImport].[SSISTableErrorsInsert]
@PackageName nvarchar(150)
,@PackageTaskName nvarchar(150)
,@ErrorCode INT = -1
,@ErrorDescription nvarchar(1000) = NULL
,@ErrorColumn INT = -1
,@ColumnName nvarchar(100) = NULL
,@LookUpValues nvarchar(400) = NULL
,@Comments nvarchar(500) = NULL
,@Debug BIT = 0

AS

BEGIN
    
    SET NOCOUNT ON;

    INSERT INTO [Detail].[SSISTableErrors]
        ([PackageName]
        ,[PackageTaskName]
        ,[ErrorCode]
        ,[ErrorDescription]
        ,[ErrorColumn]
        ,[ColumnName]
        ,[LookUpValues]
        ,[Comments])
    VALUES
        (@PackageName
        ,@PackageTaskName
        ,@ErrorCode
        ,@ErrorDescription
        ,@ErrorColumn
        ,@ColumnName
        ,@LookUpValues
        ,@Comments
        );

END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'DatabaseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physical name of the database' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'DatabaseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the database' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'DatabaseDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the database is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that a Database is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'CreatedByUserId '
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of DEL databases' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'DatabaseDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'EnvironmentTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Environment abreviation' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'DescriptionShort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the environment' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'DescriptionLong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'effective date' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ending date' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List types of environments' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'EnvironmentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'InstanceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK references Server' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK references Instance purpose' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'InstancePurposeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Instance' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'InstanceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Instance is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that an Instance is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lists the instance for all servers.' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'Instance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'InstanceDatabaseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK references Database' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'DatabaseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK references Instance' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'InstanceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Database Instance is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that a Database Instance is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Matches the databases for each instance.' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstanceDatabase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'InstancePurposeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instance purpose abreviation' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'InstancePurposeDescriptionShort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Medium description of the instance purpose' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'InstancePurposeDescriptionMedium'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the Instance Purpose' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'InstancePurposeDescriptionLong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Instance Purpose is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that an Instance purpose is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'CreatedByUserId '
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of instance purpose types' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'InstancePurpose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'NetworkTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Environment abreviation' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'DescriptionShort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the environment' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'DescriptionLong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'effective date' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ending date' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List types of environments' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'NetworkType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to Network type' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'NetworkTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to Environment type' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'EnvironmentTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the server' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ServerPurposeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the Server' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ServerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Server IP Address' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ServerIPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the Server is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that a Server is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Server list' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique system generated ID for the table row' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'ServerPurposeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Server purpose abreviation' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'DescriptionShort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the server purpose' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'DescriptionLong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the server purpose is effective' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the server purpose is terminated' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is created' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process creating this record
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record is Modified' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the user or system process modifying this record' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'ModifiedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A version control number used for Point-in-time temporal processing
' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose', @level2type=N'COLUMN',@level2name=N'VerCtrlNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'list of server purposes' , @level0type=N'SCHEMA',@level0name=N'Config', @level1type=N'TABLE',@level1name=N'ServerPurpose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is to track the different classification of servers that we have' , @level0type=N'SCHEMA',@level0name=N'Lkup', @level1type=N'TABLE',@level1name=N'Classification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unigue Record Id for the table' , @level0type=N'SCHEMA',@level0name=N'Lkup', @level1type=N'TABLE',@level1name=N'DataCenterInfo', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
USE [master]
GO
ALTER DATABASE [ServerAdmin] SET  READ_WRITE 
GO
