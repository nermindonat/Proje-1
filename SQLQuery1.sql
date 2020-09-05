USE [GorevYonetim]
GO
/****** Object:  Table [dbo].[AnaBilimDallar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaBilimDallar](
	[AbdId] [int] IDENTITY(1,1) NOT NULL,
	[AbdAd] [nvarchar](100) NULL,
 CONSTRAINT [PK_AnaBilimDallar] PRIMARY KEY CLUSTERED 
(
	[AbdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atamalar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atamalar](
	[AtamaId] [int] IDENTITY(1,1) NOT NULL,
	[FkKisiId] [int] NOT NULL,
	[FkAtayanKisiId] [int] NOT NULL,
	[FkGorevId] [int] NOT NULL,
 CONSTRAINT [PK_Atamalar] PRIMARY KEY CLUSTERED 
(
	[AtamaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bildirimler]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bildirimler](
	[BildirimId] [int] IDENTITY(1,1) NOT NULL,
	[FkKisiId] [int] NOT NULL,
	[FkGorevId] [int] NOT NULL,
	[Icerik] [nvarchar](50) NULL,
	[BildirimOkumaDurum] [bit] NULL,
	[BildirimOkumaTarih] [smalldatetime] NULL,
	[HatirlatmaSayisi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BildirimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bolumler]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolumler](
	[BolumId] [int] IDENTITY(1,1) NOT NULL,
	[FkOkulId] [int] NOT NULL,
	[BolumAdi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Bolumler] PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gorevler]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gorevler](
	[GorevId] [int] IDENTITY(1,1) NOT NULL,
	[FkToplantiId] [int] NOT NULL,
	[GorevAdi] [nvarchar](50) NULL,
	[GorevIcerigi] [nvarchar](max) NULL,
	[SonTarih] [smalldatetime] NULL,
	[SonSaat] [time](7) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Gorevler] PRIMARY KEY CLUSTERED 
(
	[GorevId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdarigorevUnvanlar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdarigorevUnvanlar](
	[IdarigorevUnvanId] [int] IDENTITY(1,1) NOT NULL,
	[IdariGorevUnvanAd] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdarigorevUnvanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KisiId] [int] IDENTITY(1,1) NOT NULL,
	[FkOkulId] [int] NOT NULL,
	[FkBolumId] [int] NOT NULL,
	[FkAbdId] [int] NOT NULL,
	[FkUnvanId] [int] NULL,
	[FkIdariGorevUnvanId] [int] NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Yetki] [bit] NULL,
 CONSTRAINT [PK_Kisiler] PRIMARY KEY CLUSTERED 
(
	[KisiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Okullar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Okullar](
	[OkulId] [int] IDENTITY(1,1) NOT NULL,
	[OkulAdi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Okullar] PRIMARY KEY CLUSTERED 
(
	[OkulId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] NOT NULL,
	[TanimAdi] [nvarchar](50) NULL,
	[KullaniciTuru] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tanimlar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tanimlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TanimAdi] [nvarchar](50) NULL,
	[KullaniciTuru] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToplantiDetay]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToplantiDetay](
	[ToplantiDetayId] [int] IDENTITY(1,1) NOT NULL,
	[ToplantiDurum] [bit] NULL,
	[AlinanKararlar] [nvarchar](max) NULL,
 CONSTRAINT [PK_ToplantiDetay] PRIMARY KEY CLUSTERED 
(
	[ToplantiDetayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Toplantilar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toplantilar](
	[ToplantiId] [int] IDENTITY(1,1) NOT NULL,
	[FkToplantiDetayId] [int] NULL,
	[ToplantiAdi] [nvarchar](50) NULL,
	[ToplantiIcerigi] [nvarchar](250) NULL,
	[Tarih] [smalldatetime] NULL,
	[Saat] [time](7) NULL,
	[Yer] [nvarchar](200) NULL,
 CONSTRAINT [PK_Toplantilar] PRIMARY KEY CLUSTERED 
(
	[ToplantiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unvanlar]    Script Date: 9/3/2020 6:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unvanlar](
	[UnvanId] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAd] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UnvanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnaBilimDallar] ON 

INSERT [dbo].[AnaBilimDallar] ([AbdId], [AbdAd]) VALUES (1, N'Yazılım Bilimi')
SET IDENTITY_INSERT [dbo].[AnaBilimDallar] OFF
SET IDENTITY_INSERT [dbo].[Bolumler] ON 

INSERT [dbo].[Bolumler] ([BolumId], [FkOkulId], [BolumAdi]) VALUES (1, 1, N'Bilişim Sistemleri Mühendisliği')
INSERT [dbo].[Bolumler] ([BolumId], [FkOkulId], [BolumAdi]) VALUES (2, 2, N'Ağaç İşleri')
SET IDENTITY_INSERT [dbo].[Bolumler] OFF
SET IDENTITY_INSERT [dbo].[IdarigorevUnvanlar] ON 

INSERT [dbo].[IdarigorevUnvanlar] ([IdarigorevUnvanId], [IdariGorevUnvanAd]) VALUES (6, N'Başkan    ')
SET IDENTITY_INSERT [dbo].[IdarigorevUnvanlar] OFF
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KisiId], [FkOkulId], [FkBolumId], [FkAbdId], [FkUnvanId], [FkIdariGorevUnvanId], [Ad], [Soyad], [Email], [Sifre], [Yetki]) VALUES (6, 1, 1, 1, 1, 6, N'Güncel', N'Sarıman', N'guncelsariman@gmail.com', N'guncel', 1)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
SET IDENTITY_INSERT [dbo].[Okullar] ON 

INSERT [dbo].[Okullar] ([OkulId], [OkulAdi]) VALUES (1, N'Muğla Sıtkı Koçman')
INSERT [dbo].[Okullar] ([OkulId], [OkulAdi]) VALUES (2, N'Süleyman Demirel Üniversitesi')
SET IDENTITY_INSERT [dbo].[Okullar] OFF
SET IDENTITY_INSERT [dbo].[Unvanlar] ON 

INSERT [dbo].[Unvanlar] ([UnvanId], [UnvanAd]) VALUES (1, N'Doç.')
INSERT [dbo].[Unvanlar] ([UnvanId], [UnvanAd]) VALUES (2, N'Dr.')
SET IDENTITY_INSERT [dbo].[Unvanlar] OFF
ALTER TABLE [dbo].[Bildirimler] ADD  DEFAULT ((0)) FOR [BildirimOkumaDurum]
GO
ALTER TABLE [dbo].[Gorevler] ADD  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Atamalar]  WITH CHECK ADD  CONSTRAINT [FK_Atamalar_Gorevler] FOREIGN KEY([FkGorevId])
REFERENCES [dbo].[Gorevler] ([GorevId])
GO
ALTER TABLE [dbo].[Atamalar] CHECK CONSTRAINT [FK_Atamalar_Gorevler]
GO
ALTER TABLE [dbo].[Atamalar]  WITH CHECK ADD  CONSTRAINT [FK_Atamalar_Kullanicilar] FOREIGN KEY([FkKisiId])
REFERENCES [dbo].[Kullanicilar] ([KisiId])
GO
ALTER TABLE [dbo].[Atamalar] CHECK CONSTRAINT [FK_Atamalar_Kullanicilar]
GO
ALTER TABLE [dbo].[Atamalar]  WITH CHECK ADD  CONSTRAINT [FK_Atamalar_Kullanicilar1] FOREIGN KEY([FkAtayanKisiId])
REFERENCES [dbo].[Kullanicilar] ([KisiId])
GO
ALTER TABLE [dbo].[Atamalar] CHECK CONSTRAINT [FK_Atamalar_Kullanicilar1]
GO
ALTER TABLE [dbo].[Bildirimler]  WITH CHECK ADD  CONSTRAINT [Fk_Bildirimler_Gorevler] FOREIGN KEY([FkGorevId])
REFERENCES [dbo].[Gorevler] ([GorevId])
GO
ALTER TABLE [dbo].[Bildirimler] CHECK CONSTRAINT [Fk_Bildirimler_Gorevler]
GO
ALTER TABLE [dbo].[Bildirimler]  WITH CHECK ADD  CONSTRAINT [Fk_Bildirimler_Kullanicilar] FOREIGN KEY([FkKisiId])
REFERENCES [dbo].[Kullanicilar] ([KisiId])
GO
ALTER TABLE [dbo].[Bildirimler] CHECK CONSTRAINT [Fk_Bildirimler_Kullanicilar]
GO
ALTER TABLE [dbo].[Bolumler]  WITH CHECK ADD  CONSTRAINT [FK_Okullar] FOREIGN KEY([FkOkulId])
REFERENCES [dbo].[Okullar] ([OkulId])
GO
ALTER TABLE [dbo].[Bolumler] CHECK CONSTRAINT [FK_Okullar]
GO
ALTER TABLE [dbo].[Gorevler]  WITH CHECK ADD  CONSTRAINT [FK_Gorevler_Toplantilar] FOREIGN KEY([FkToplantiId])
REFERENCES [dbo].[Toplantilar] ([ToplantiId])
GO
ALTER TABLE [dbo].[Gorevler] CHECK CONSTRAINT [FK_Gorevler_Toplantilar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_AnaBilimDallar] FOREIGN KEY([FkAbdId])
REFERENCES [dbo].[AnaBilimDallar] ([AbdId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_AnaBilimDallar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Bolumler] FOREIGN KEY([FkBolumId])
REFERENCES [dbo].[Bolumler] ([BolumId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Bolumler]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_IdariGorevUnvanlar] FOREIGN KEY([FkIdariGorevUnvanId])
REFERENCES [dbo].[IdarigorevUnvanlar] ([IdarigorevUnvanId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_IdariGorevUnvanlar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Okullar] FOREIGN KEY([FkOkulId])
REFERENCES [dbo].[Okullar] ([OkulId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Okullar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Unvanlar] FOREIGN KEY([FkUnvanId])
REFERENCES [dbo].[Unvanlar] ([UnvanId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Unvanlar]
GO
ALTER TABLE [dbo].[Toplantilar]  WITH CHECK ADD  CONSTRAINT [FK_Toplantilar_ToplantiDetay] FOREIGN KEY([FkToplantiDetayId])
REFERENCES [dbo].[ToplantiDetay] ([ToplantiDetayId])
GO
ALTER TABLE [dbo].[Toplantilar] CHECK CONSTRAINT [FK_Toplantilar_ToplantiDetay]
GO
