USE [TestDBWpf]
GO
/****** Object:  Table [dbo].[Bets]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bets](
	[bet_id] [int] NOT NULL,
	[player_id] [int] NULL,
	[game_id] [int] NULL,
	[bet_amount] [decimal](10, 2) NULL,
	[bet_time] [timestamp] NOT NULL,
	[outcome] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[bet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bonuses]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonuses](
	[bonus_id] [int] NOT NULL,
	[player_id] [int] NULL,
	[bonus_type] [varchar](50) NULL,
	[bonus_amount] [decimal](10, 2) NULL,
	[bonus_date] [date] NULL,
	[expiration_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[bonus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[id_card] [int] IDENTITY(1,1) NOT NULL,
	[money] [int] NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[id_card] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kaktus_id] [int] NULL,
	[vistavka_id] [int] NULL,
 CONSTRAINT [PK_collection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[job_title] [varchar](50) NULL,
	[hire_date] [date] NULL,
	[salary] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[game_id] [int] NOT NULL,
	[game_name] [varchar](50) NULL,
	[game_type] [varchar](50) NULL,
	[min_bet] [decimal](10, 2) NULL,
	[max_bet] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryMatches]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryMatches](
	[id_match] [int] IDENTITY(1,1) NOT NULL,
	[postavil] [int] NULL,
	[result] [nvarchar](50) NULL,
 CONSTRAINT [PK_HistoryMatches] PRIMARY KEY CLUSTERED 
(
	[id_match] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kaktusi]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kaktusi](
	[id_kaktus] [int] IDENTITY(1,1) NOT NULL,
	[Vid] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Age] [int] NULL,
	[Proishojdenie] [nchar](10) NULL,
	[Instrukciya] [nchar](10) NULL,
 CONSTRAINT [PK_kaktusi] PRIMARY KEY CLUSTERED 
(
	[id_kaktus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logins]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logins](
	[id_login] [int] IDENTITY(1,1) NOT NULL,
	[login] [nchar](10) NULL,
	[passwod] [nchar](10) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_logins] PRIMARY KEY CLUSTERED 
(
	[id_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[player_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[registration_date] [date] NULL,
	[balance] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[transaction_id] [int] NOT NULL,
	[player_id] [int] NULL,
	[transaction_type] [varchar](20) NULL,
	[transaction_amount] [decimal](10, 2) NULL,
	[transaction_time] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Balance] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vistavki]    Script Date: 20.09.2024 21:09:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vistavki](
	[id_vistavka] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[location] [nchar](10) NULL,
	[awards] [nchar](10) NULL,
 CONSTRAINT [PK_Vistavki] PRIMARY KEY CLUSTERED 
(
	[id_vistavka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([id_card], [money]) VALUES (1, 500)
INSERT [dbo].[Card] ([id_card], [money]) VALUES (2, -4023)
INSERT [dbo].[Card] ([id_card], [money]) VALUES (3, 92)
SET IDENTITY_INSERT [dbo].[Card] OFF
GO
SET IDENTITY_INSERT [dbo].[HistoryMatches] ON 

INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (3, 500, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (6, 32, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (7, 2, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (8, 2, N'Проиграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (1006, 2, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (1007, 2, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (1008, 1, N'Проиграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (1009, 54, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2006, 200, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2007, 200, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2008, 200, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2009, 200, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2010, 200, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2011, 1544042, N'Проиграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2012, 5465, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2013, 10930, N'Проиграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2014, 300, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2015, 300, N'Проиграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2016, 300, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2017, 600, N'Выйграл')
INSERT [dbo].[HistoryMatches] ([id_match], [postavil], [result]) VALUES (2018, 1200, N'Проиграл')
SET IDENTITY_INSERT [dbo].[HistoryMatches] OFF
GO
SET IDENTITY_INSERT [dbo].[logins] ON 

INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (1, N'123       ', N'123       ', 1)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (2, N'123       ', N'123       ', 2)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (3, N'123       ', N'123       ', 3)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (4, N'222       ', N'222       ', 4)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (5, N'2222      ', N'2222      ', 5)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (6, N'123       ', N'123       ', 6)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (1002, N'admin     ', N'admin     ', 1)
INSERT [dbo].[logins] ([id_login], [login], [passwod], [user_id]) VALUES (2002, N'4354      ', N'5454      ', 3002)
SET IDENTITY_INSERT [dbo].[logins] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (1, N'123       ', 0)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (2, N'123       ', 20000)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (3, N'123       ', 17000)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (4, N'222       ', 7500)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (5, N'2222      ', 657678)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (6, N'123       ', 7000)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (1002, N'232       ', 24000)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (1003, N'333       ', 10000000)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (2002, N'admin     ', NULL)
INSERT [dbo].[users] ([id_user], [Name], [Balance]) VALUES (3002, N'4354      ', NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD FOREIGN KEY([game_id])
REFERENCES [dbo].[Games] ([game_id])
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[Players] ([player_id])
GO
ALTER TABLE [dbo].[Bonuses]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[Players] ([player_id])
GO
ALTER TABLE [dbo].[collection]  WITH CHECK ADD  CONSTRAINT [FK_collection_kaktusi] FOREIGN KEY([kaktus_id])
REFERENCES [dbo].[kaktusi] ([id_kaktus])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[collection] CHECK CONSTRAINT [FK_collection_kaktusi]
GO
ALTER TABLE [dbo].[collection]  WITH CHECK ADD  CONSTRAINT [FK_collection_Vistavki] FOREIGN KEY([vistavka_id])
REFERENCES [dbo].[Vistavki] ([id_vistavka])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[collection] CHECK CONSTRAINT [FK_collection_Vistavki]
GO
ALTER TABLE [dbo].[logins]  WITH CHECK ADD  CONSTRAINT [FK_logins_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id_user])
GO
ALTER TABLE [dbo].[logins] CHECK CONSTRAINT [FK_logins_users]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[Players] ([player_id])
GO
