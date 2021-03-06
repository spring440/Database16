USE [master]
GO
/****** Object:  Database [s17guest16]    Script Date: 5/15/2017 11:53:21 PM ******/
CREATE DATABASE [s17guest16]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N's17guest16', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest16.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N's17guest16_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest16_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [s17guest16] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [s17guest16].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [s17guest16] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [s17guest16] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [s17guest16] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [s17guest16] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [s17guest16] SET ARITHABORT OFF 
GO
ALTER DATABASE [s17guest16] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [s17guest16] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest16] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [s17guest16] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest16] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [s17guest16] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [s17guest16] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [s17guest16] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [s17guest16] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [s17guest16] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [s17guest16] SET  ENABLE_BROKER 
GO
ALTER DATABASE [s17guest16] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [s17guest16] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [s17guest16] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [s17guest16] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [s17guest16] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [s17guest16] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [s17guest16] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [s17guest16] SET RECOVERY FULL 
GO
ALTER DATABASE [s17guest16] SET  MULTI_USER 
GO
ALTER DATABASE [s17guest16] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [s17guest16] SET DB_CHAINING OFF 
GO
ALTER DATABASE [s17guest16] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [s17guest16] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N's17guest16', N'ON'
GO
USE [s17guest16]
GO
/****** Object:  User [s17guest16]    Script Date: 5/15/2017 11:53:22 PM ******/
CREATE USER [s17guest16] FOR LOGIN [s17guest16] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest16]
GO
/****** Object:  StoredProcedure [dbo].[SubmitClass]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SubmitClass]
@Title varchar(50),
@Des varchar(max),
@Duration int,
@level int

as begin

insert Class
values(@Title, @Des, @Duration, @level, 1, -1)

end


GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[street] [varchar](250) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[stateID] [int] NOT NULL,
	[zipcode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttendeeRole]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendeeRole](
	[attendeeID] [int] NOT NULL,
	[roleID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attendees]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendees](
	[attendeeID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[addressID] [int] NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Attendee] PRIMARY KEY CLUSTERED 
(
	[attendeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Class]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[classID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[duration] [int] NOT NULL,
	[levelID] [int] NOT NULL,
	[statusID] [int] NOT NULL,
	[trackID] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[countryID] [int] NOT NULL,
	[countryName] [varchar](50) NOT NULL,
	[abreviation] [varchar](5) NOT NULL,
	[regionID] [int] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[countryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Events]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventDate] [date] NOT NULL,
	[eventName] [varchar](50) NOT NULL,
	[regionID] [int] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Levels](
	[levelID] [int] IDENTITY(1,1) NOT NULL,
	[levelName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[levelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PresenterClass]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresenterClass](
	[attendeeID] [int] NULL,
	[classID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RaffleAttendee]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaffleAttendee](
	[raffleID] [int] NOT NULL,
	[attendeeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Raffles]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Raffles](
	[raffleID] [int] IDENTITY(1,1) NOT NULL,
	[prize] [varchar](50) NOT NULL,
	[vendorID] [int] NOT NULL,
 CONSTRAINT [PK_Raffles] PRIMARY KEY CLUSTERED 
(
	[raffleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regions](
	[regionID] [int] IDENTITY(1,1) NOT NULL,
	[regionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomID] [int] IDENTITY(1,1) NOT NULL,
	[room] [int] NOT NULL,
	[capacity] [int] NOT NULL,
	[venueID] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomClass]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomClass](
	[roomID] [int] NOT NULL,
	[classID] [int] NOT NULL,
	[classTime] [time](2) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SponsorRanking]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SponsorRanking](
	[sponsorRankingID] [int] IDENTITY(1,1) NOT NULL,
	[sponsorRanking] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SponsorRanking] PRIMARY KEY CLUSTERED 
(
	[sponsorRankingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sponsors](
	[sponsorID] [int] IDENTITY(1,1) NOT NULL,
	[sponsorName] [varchar](50) NOT NULL,
	[sponsorRankingID] [int] NOT NULL,
	[eventID] [int] NULL,
 CONSTRAINT [PK_Sponsors] PRIMARY KEY CLUSTERED 
(
	[sponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateName] [varchar](50) NOT NULL,
	[abreviation] [varchar](5) NOT NULL,
	[countryID] [int] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[statusID] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentClass]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClass](
	[attendeeID] [int] NOT NULL,
	[classID] [int] NOT NULL,
	[grade] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tables]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[tableID] [int] IDENTITY(1,1) NOT NULL,
	[venueID] [int] NOT NULL,
	[vendorID] [int] NOT NULL,
	[tableNumber] [int] NOT NULL,
 CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED 
(
	[tableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tracks]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tracks](
	[trackID] [int] IDENTITY(1,1) NOT NULL,
	[trackName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tracks] PRIMARY KEY CLUSTERED 
(
	[trackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors](
	[vendorID] [int] IDENTITY(1,1) NOT NULL,
	[vendorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 5/15/2017 11:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[venueID] [int] IDENTITY(1,1) NOT NULL,
	[addressID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[venueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_States] FOREIGN KEY([stateID])
REFERENCES [dbo].[States] ([stateID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_States]
GO
ALTER TABLE [dbo].[AttendeeRole]  WITH CHECK ADD  CONSTRAINT [FK_AttendeeRole_Attendees] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[Attendees] ([attendeeID])
GO
ALTER TABLE [dbo].[AttendeeRole] CHECK CONSTRAINT [FK_AttendeeRole_Attendees]
GO
ALTER TABLE [dbo].[AttendeeRole]  WITH CHECK ADD  CONSTRAINT [FK_AttendeeRole_Roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[AttendeeRole] CHECK CONSTRAINT [FK_AttendeeRole_Roles]
GO
ALTER TABLE [dbo].[Attendees]  WITH CHECK ADD  CONSTRAINT [FK_Attendees_Address] FOREIGN KEY([addressID])
REFERENCES [dbo].[Address] ([addressID])
GO
ALTER TABLE [dbo].[Attendees] CHECK CONSTRAINT [FK_Attendees_Address]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Levels] FOREIGN KEY([levelID])
REFERENCES [dbo].[Levels] ([levelID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Levels]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Status] FOREIGN KEY([statusID])
REFERENCES [dbo].[Status] ([statusID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Status]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Tracks] FOREIGN KEY([trackID])
REFERENCES [dbo].[Tracks] ([trackID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Tracks]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Regions] FOREIGN KEY([regionID])
REFERENCES [dbo].[Regions] ([regionID])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Regions]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Regions] FOREIGN KEY([regionID])
REFERENCES [dbo].[Regions] ([regionID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Regions]
GO
ALTER TABLE [dbo].[PresenterClass]  WITH CHECK ADD  CONSTRAINT [FK_PresenterClass_Attendees] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[Attendees] ([attendeeID])
GO
ALTER TABLE [dbo].[PresenterClass] CHECK CONSTRAINT [FK_PresenterClass_Attendees]
GO
ALTER TABLE [dbo].[PresenterClass]  WITH CHECK ADD  CONSTRAINT [FK_PresenterClass_Class] FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[PresenterClass] CHECK CONSTRAINT [FK_PresenterClass_Class]
GO
ALTER TABLE [dbo].[RaffleAttendee]  WITH CHECK ADD  CONSTRAINT [FK_RaffleAttendee_Attendees] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[Attendees] ([attendeeID])
GO
ALTER TABLE [dbo].[RaffleAttendee] CHECK CONSTRAINT [FK_RaffleAttendee_Attendees]
GO
ALTER TABLE [dbo].[RaffleAttendee]  WITH CHECK ADD  CONSTRAINT [FK_RaffleAttendee_Raffles] FOREIGN KEY([raffleID])
REFERENCES [dbo].[Raffles] ([raffleID])
GO
ALTER TABLE [dbo].[RaffleAttendee] CHECK CONSTRAINT [FK_RaffleAttendee_Raffles]
GO
ALTER TABLE [dbo].[Raffles]  WITH CHECK ADD  CONSTRAINT [FK_Raffles_Vendors] FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendors] ([vendorID])
GO
ALTER TABLE [dbo].[Raffles] CHECK CONSTRAINT [FK_Raffles_Vendors]
GO
ALTER TABLE [dbo].[RoomClass]  WITH CHECK ADD  CONSTRAINT [FK_RoomClass_Class] FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[RoomClass] CHECK CONSTRAINT [FK_RoomClass_Class]
GO
ALTER TABLE [dbo].[RoomClass]  WITH CHECK ADD  CONSTRAINT [FK_RoomClass_Room] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([roomID])
GO
ALTER TABLE [dbo].[RoomClass] CHECK CONSTRAINT [FK_RoomClass_Room]
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD  CONSTRAINT [FK_Sponsors_Events] FOREIGN KEY([eventID])
REFERENCES [dbo].[Events] ([eventID])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_Events]
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD  CONSTRAINT [FK_Sponsors_SponsorRanking] FOREIGN KEY([sponsorRankingID])
REFERENCES [dbo].[SponsorRanking] ([sponsorRankingID])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_SponsorRanking]
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD  CONSTRAINT [FK_States_Countries] FOREIGN KEY([countryID])
REFERENCES [dbo].[Countries] ([countryID])
GO
ALTER TABLE [dbo].[States] CHECK CONSTRAINT [FK_States_Countries]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_StudentClass_Attendees] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[Attendees] ([attendeeID])
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_StudentClass_Attendees]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_StudentClass_Class] FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_StudentClass_Class]
GO
ALTER TABLE [dbo].[Tables]  WITH CHECK ADD  CONSTRAINT [FK_Tables_Vendors] FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendors] ([vendorID])
GO
ALTER TABLE [dbo].[Tables] CHECK CONSTRAINT [FK_Tables_Vendors]
GO
ALTER TABLE [dbo].[Tables]  WITH CHECK ADD  CONSTRAINT [FK_Tables_Venues] FOREIGN KEY([venueID])
REFERENCES [dbo].[Venues] ([venueID])
GO
ALTER TABLE [dbo].[Tables] CHECK CONSTRAINT [FK_Tables_Venues]
GO
USE [master]
GO
ALTER DATABASE [s17guest16] SET  READ_WRITE 
GO
