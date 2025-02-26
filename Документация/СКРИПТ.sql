USE [master]
GO
/****** Object:  Database [SportSchoolBD]    Script Date: 07.05.2024 16:12:30 ******/
CREATE DATABASE [SportSchoolBD]
 
GO
USE [SportSchoolBD]
GO
/****** Object:  Table [dbo].[Abonement]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTrainerId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[LessonCount] [int] NOT NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AbonementId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[LessonsLeftCount] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Abonement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTrainer]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTrainer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrainerId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryTrainer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[AbonementId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTrainerId] [int] NOT NULL,
	[DayWeek] [nvarchar](50) NOT NULL,
	[DayTime] [time](7) NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NOT NULL,
	[Birthday] [date] NOT NULL,
	[WorkExperience] [int] NOT NULL,
	[Info] [nvarchar](1000) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[PassportSeries] [nvarchar](50) NULL,
	[PassportNum] [nvarchar](50) NULL,
	[Role] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 07.05.2024 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuytId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abonement] ON 

INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (77, 72, 2500, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (78, 72, 3500, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (79, 72, 4370, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (80, 73, 2450, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (81, 73, 3600, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (82, 73, 4500, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (83, 76, 2600, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (84, 76, 3400, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (85, 76, 4600, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (86, 75, 2600, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (87, 75, 3450, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (88, 75, 4600, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (89, 74, 3000, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (90, 74, 3800, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (91, 74, 4600, 16)
SET IDENTITY_INSERT [dbo].[Abonement] OFF
GO
SET IDENTITY_INSERT [dbo].[Buy] ON 

INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (27, 77, CAST(N'2024-05-07T13:32:02.543' AS DateTime), 4, N'igor', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (28, 79, CAST(N'2024-05-07T15:01:59.667' AS DateTime), 16, N'danil', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (29, 78, CAST(N'2024-05-07T16:06:56.193' AS DateTime), 10, N'tamara', 1)
SET IDENTITY_INSERT [dbo].[Buy] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Спортивная акробатика')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Настольный теннис')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Плавание')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Художественная гимнастика')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Фиджитал-футбол')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Акробатический рок-н-ролл')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Карате')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Спортивная гимнастика')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryTrainer] ON 

INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (72, 3, 6)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (73, 5, 3)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (74, 4, 8)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (75, 1, 4)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (76, 2, 1)
SET IDENTITY_INSERT [dbo].[CategoryTrainer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (26, N'kamila', 90, CAST(N'2024-05-07T15:30:04.617' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (27, N'kazimira', 84, CAST(N'2024-05-07T15:30:27.197' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (28, N'shults', 80, CAST(N'2024-05-07T15:30:45.627' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (29, N'vladimir', 88, CAST(N'2024-05-07T15:31:04.187' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Status] ([Id], [Name], [Color]) VALUES (1, N'активирован', N'#FFFFFFF0')
INSERT [dbo].[Status] ([Id], [Name], [Color]) VALUES (2, N'истек', N'#FFFFE4E1')
GO
SET IDENTITY_INSERT [dbo].[TimeTable] ON 

INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (91, 72, N'Вторник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (92, 72, N'Понедельник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (93, 72, N'Четверг', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (94, 72, N'Пятница', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (95, 73, N'Понедельник', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (96, 76, N'Понедельник', CAST(N'15:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (97, 76, N'Среда', CAST(N'15:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (98, 76, N'Пятница', CAST(N'15:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (99, 73, N'Вторник', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (100, 73, N'Среда', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (101, 73, N'Четверг', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (102, 73, N'Пятница', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (103, 75, N'Понедельник', CAST(N'16:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (104, 75, N'Вторник', CAST(N'16:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (105, 75, N'Среда', CAST(N'16:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (106, 75, N'Четверг', CAST(N'16:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (107, 75, N'Пятница', CAST(N'16:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (108, 74, N'Понедельник', CAST(N'17:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (109, 74, N'Вторник', CAST(N'17:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (110, 74, N'Среда', CAST(N'17:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (111, 74, N'Четверг', CAST(N'17:30:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (112, 74, N'Пятница', CAST(N'17:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (1, N'Мухина', N'Антонина', N'Алексеевна', CAST(N'1987-01-01' AS Date), 15, N'Образование:  Высшее педагогическое образование.', N'IMG_4123.jpg')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (2, N'Залалетдинова', N'Диляра', N'Дулусовна', CAST(N'1998-05-21' AS Date), 8, N'Сертифицированный тренер
', N'14.jpg')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (3, N'Галиакберова', N'Анастасия', N'Евгеньевна', CAST(N'1998-03-12' AS Date), 10, N'Профессионал своего дела', N'1.jpg')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (4, N'Сибагатуллин ', N'Тимур', N'Эдуардович', CAST(N'1970-06-17' AS Date), 36, N'Профессионал своего дела', N'13.jpg')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (5, N'Голубев', N'Дмитрий', N'Сергеевич', CAST(N'1986-06-17' AS Date), 4, N'Сертифицированный специалист', N'2.jpg')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
GO
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'admin', N'1', N'Сафин', N'Алмаз', N'Айратович', N'+7 (900) 745-32-34', N'Almaz007@mail.ru', NULL, NULL, 1)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'danil', N'1', N'Гаранин', N'Даниил', N'Владимирович', N'+7 (969) 325-95-89', N'daniil8@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'igor', N'1', N'Дмитриев', N'Игорь', N'Денисович', N'+7 (965) 515-05-55', N'dimitrii7878@mail.ru', N'121', N'121221', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'kamila', N'1', N'Сивохина', N'Камилла', N'Радиковна', N'+7 (969) 005-13-41', N'kamil@mail.ru', N'11', N'1111', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'kazimira', N'1', N'Холодкова', N'Казимира ', N'Антоновна', N'+7 (953) 209-24-55', N'KazimiraHolodkova745@gmail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'klavdiya', N'1', N'Владимирова', N'Клавдия', N'Виталиевна', N'+7 (954) 343-27-62', N'KlavdiyaVladimirova425240@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'matvey', N'5', N'Быстров', N'Матвей', N'Сергеевич', N'+7 (911) 532-83-98', N'MatveyBystrov998@mail.ru', N'1111', N'1111111', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'shults', N'1', N'Шульц', N'Гурий', N'Геннадиевич', N'+7 (916) 871-77-61', N'GuriyShults13459@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'tamara', N'1', N'Городецкая', N'Тамара', N'Сергеевна', N'+7 (965) 574-31-54', N'TamaraGorodetskaya905@yandex.ru', N'1', N'2', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'vladimir', N'1', N'Богданов', N'Владимир', N'Максимович', N'+7 (942) 988-43-60', N'VladimirBogdanov278@mail.ru', NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Visit] ON 

INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (26, 27, CAST(N'2024-05-07T15:00:08.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (27, 27, CAST(N'2024-05-07T15:00:19.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (28, 27, CAST(N'2024-05-07T15:00:22.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (29, 27, CAST(N'2024-05-07T15:00:25.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (30, 29, CAST(N'2024-05-07T16:08:53.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (31, 29, CAST(N'2024-05-07T16:08:55.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Visit] OFF
GO
ALTER TABLE [dbo].[Abonement]  WITH CHECK ADD  CONSTRAINT [FK_Abonement_CategoryTrainer] FOREIGN KEY([CategoryTrainerId])
REFERENCES [dbo].[CategoryTrainer] ([Id])
GO
ALTER TABLE [dbo].[Abonement] CHECK CONSTRAINT [FK_Abonement_CategoryTrainer]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Abonement] FOREIGN KEY([AbonementId])
REFERENCES [dbo].[Abonement] ([Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_Abonement]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_Status]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_User]
GO
ALTER TABLE [dbo].[CategoryTrainer]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTrainer_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryTrainer] CHECK CONSTRAINT [FK_CategoryTrainer_Category]
GO
ALTER TABLE [dbo].[CategoryTrainer]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTrainer_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([Id])
GO
ALTER TABLE [dbo].[CategoryTrainer] CHECK CONSTRAINT [FK_CategoryTrainer_Trainer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Abonement] FOREIGN KEY([AbonementId])
REFERENCES [dbo].[Abonement] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Abonement]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Client1] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Rent_Client1]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_CategoryTrainer] FOREIGN KEY([CategoryTrainerId])
REFERENCES [dbo].[CategoryTrainer] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_CategoryTrainer]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Buy] FOREIGN KEY([BuytId])
REFERENCES [dbo].[Buy] ([Id])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Buy]
GO
USE [master]
GO
ALTER DATABASE [SportSchoolBD] SET  READ_WRITE 
GO
