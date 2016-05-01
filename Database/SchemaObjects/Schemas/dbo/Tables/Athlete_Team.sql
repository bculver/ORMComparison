
USE [ORMCompare]
GO

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = N'Athlete_Team' AND type = 'U')
	DROP TABLE [dbo].[Athlete_Team]
GO

/****** Object:  Table [dbo].[Athlete_Team]    Script Date: 5/1/2016 6:33:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Athlete_Team](
	[AthleteId] [bigint] NOT NULL,
	[TeamId] [bigint] NOT NULL,
	[TeamRanking] [int] NOT NULL,
 CONSTRAINT [PK_Athlete_Team] PRIMARY KEY CLUSTERED 
(
	[AthleteId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Athlete_Team]  WITH CHECK ADD  CONSTRAINT [FK_Athlete_Team_Athletes] FOREIGN KEY([AthleteId])
REFERENCES [dbo].[Athletes] ([Id])
GO

ALTER TABLE [dbo].[Athlete_Team] CHECK CONSTRAINT [FK_Athlete_Team_Athletes]
GO

ALTER TABLE [dbo].[Athlete_Team]  WITH CHECK ADD  CONSTRAINT [FK_Athlete_Team_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
GO

ALTER TABLE [dbo].[Athlete_Team] CHECK CONSTRAINT [FK_Athlete_Team_Teams]
GO

