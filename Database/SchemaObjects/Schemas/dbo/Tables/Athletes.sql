/****** Object:  Table [dbo].[Athletes]    Script Date: 5/1/2016 6:22:50 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = N'Athletes' AND type = 'U')
    DROP TABLE [dbo].[Athletes];
GO

/****** Object:  Table [dbo].[Athletes]    Script Date: 5/1/2016 6:22:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Athletes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Position] [nvarchar](256) NULL,
	[age] [int] NULL,
	[birthday] [datetime] NULL,
	[created_by] [nvarchar](64) NULL,
	[created_date] [datetime] NULL,
	[modified_by] [nvarchar](64) NULL,
	[modified_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
