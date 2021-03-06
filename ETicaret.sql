
GO
/****** Object:  Table [dbo].[Kargo]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](150) NULL,
	[Adres] [nvarchar](500) NULL,
	[Telefon] [char](15) NULL,
	[WebSite] [nvarchar](50) NULL,
	[EMail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kargo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[ResimID] [int] NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Parola] [nvarchar](20) NULL,
	[MailAdres] [nvarchar](50) NULL,
	[Cinsiyet] [bit] NULL,
	[DogumTarihi] [datetime] NULL,
	[KayitTarihi] [datetime] NULL,
	[RolID] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KullaniciRole]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciRole](
	[RoleID] [int] NOT NULL,
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_KullaniciRole_1] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marka]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[ResimID] [int] NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[EMail] [nvarchar](50) NULL,
	[Telefon] [char](15) NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Musteri_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MusteriAdres]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriAdres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[Adres] [nvarchar](500) NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_MusteriAdres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OzellikDeger]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzellikDeger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[OzellikTipID] [int] NULL,
 CONSTRAINT [PK_OzellikDeger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OzellikTip]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzellikTip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[KategoriID] [int] NULL,
 CONSTRAINT [PK_OzellikTip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Resim]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuyukYol] [nvarchar](250) NULL,
	[OrtaYol] [nvarchar](250) NULL,
	[KucukYol] [nvarchar](250) NULL,
	[Varsayılan] [bit] NULL,
	[SiraNo] [tinyint] NULL,
	[UrunID] [int] NULL,
 CONSTRAINT [PK_Resim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[RolID] [int] NOT NULL,
	[RolAdi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Satis]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[SatisTarihi] [datetime] NULL,
	[ToplamTutar] [money] NULL,
	[SepetteMi] [bit] NULL,
	[KargoID] [int] NULL,
	[SiparisDurumID] [int] NULL,
	[KargoTakipNo] [nvarchar](20) NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SatisDetay]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisDetay](
	[SatisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Adet] [int] NULL,
	[Fiyat] [money] NULL,
	[Indirim] [float] NULL,
 CONSTRAINT [PK_SatisDetay] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC,
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sepetimm]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepetimm](
	[aaa] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NOT NULL,
	[MusteriID] [int] NOT NULL,
	[adet] [smallint] NULL,
 CONSTRAINT [PK_Sepetim] PRIMARY KEY CLUSTERED 
(
	[aaa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sepetttr]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepetttr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[MusID] [int] NULL,
	[Adet] [int] NULL,
	[Tutar] [money] NULL,
 CONSTRAINT [PK_sepetttr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiparisDurum]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_SiparisDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urun]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[AlisFiyat] [money] NULL,
	[SatisFiyat] [money] NULL,
	[EklenmeTarihi] [datetime] NULL,
	[KategoriID] [int] NULL,
	[MarkaID] [int] NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunOzellik]    Script Date: 6.06.2017 20:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunOzellik](
	[UrunID] [int] NOT NULL,
	[OzellikTipID] [int] NOT NULL,
	[OzellikDegerID] [int] NOT NULL,
 CONSTRAINT [PK_UrunOzellik] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC,
	[OzellikTipID] ASC,
	[OzellikDegerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (7, N'Bilgisayar', N'a', NULL, 1)
INSERT [dbo].[Kategori] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (8, N'Telefon', NULL, NULL, 1)
INSERT [dbo].[Kategori] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (9, N'Tablet', NULL, NULL, 1)
INSERT [dbo].[Kategori] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (10, N'a', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([KullaniciID], [Adi], [Soyadi], [KullaniciAdi], [Parola], [MailAdres], [Cinsiyet], [DogumTarihi], [KayitTarihi], [RolID]) VALUES (1, N'Ferit', N'ALTINTAS', N'ferit', N'123456', N'ferit@hotmail.com', 1, CAST(N'1994-10-01T00:00:00.000' AS DateTime), CAST(N'2017-05-30T13:56:01.910' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Marka] ON 

INSERT [dbo].[Marka] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (17, N'Apple', NULL, 17, 1)
INSERT [dbo].[Marka] ([ID], [Adi], [Aciklama], [ResimID], [AktifMi]) VALUES (18, N'Lenova', NULL, 18, 1)
SET IDENTITY_INSERT [dbo].[Marka] OFF
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([ID], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [EMail], [Telefon], [AktifMi]) VALUES (1, N'Ferit', N'ALTINTAS', N'ferit', N'ferit', N'ferit@ferit.com', N'12345678911    ', NULL)
SET IDENTITY_INSERT [dbo].[Musteri] OFF
SET IDENTITY_INSERT [dbo].[OzellikDeger] ON 

INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (6, N'8 GB', NULL, 6)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (11, N'12 GB', NULL, 6)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (12, N'5.5 inç', NULL, 12)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (13, N'12 MP', NULL, 14)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (14, N'8 GB', NULL, 15)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (15, N'16 GB', NULL, 15)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (16, N'32 GB', NULL, 15)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (17, N'500 GB', NULL, 15)
INSERT [dbo].[OzellikDeger] ([ID], [Adi], [Aciklama], [OzellikTipID]) VALUES (18, N'500 GB', NULL, 11)
SET IDENTITY_INSERT [dbo].[OzellikDeger] OFF
SET IDENTITY_INSERT [dbo].[OzellikTip] ON 

INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (6, N'Ram', NULL, 7)
INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (11, N'Harrdisk', NULL, 7)
INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (12, N'Ekran', NULL, 8)
INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (13, N'Ekran', N'5.5 inc', 9)
INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (14, N'Kamera', NULL, 8)
INSERT [dbo].[OzellikTip] ([ID], [Adi], [Aciklama], [KategoriID]) VALUES (15, N'Hafıza', NULL, 8)
SET IDENTITY_INSERT [dbo].[OzellikTip] OFF
SET IDENTITY_INSERT [dbo].[Resim] ON 

INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (17, NULL, N'/Content/MarkaResim/eeb6f3a6-6444-4b51-b276-97ba30f8d06a.png', NULL, 1, NULL, NULL)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (18, NULL, N'/Content/MarkaResim/32b274b1-e173-4d67-a02b-3106f0f13840.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (19, N'/Content/SliderResim/0e028b2e-c806-4718-9b31-ab3bd0784deb.jpg', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (20, N'/Content/SliderResim/d973ba98-aa32-4c4e-8d8d-fd203e8500b8.jpg', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (21, N'/Content/SliderResim/8b84517f-c713-4123-9019-994e16cf8fee.jpg', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (22, N'/Content/UrunResim/buyuk/5bc82ac4-701d-4100-8aee-966afc1c84ce.jpg', N'/Content/UrunResim/Orta/2b64c6ae-7048-44f8-8352-2c2bf6cf830e.jpg', NULL, 1, NULL, 3)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (23, N'/Content/UrunResim/buyuk/67e9254d-b6ae-48e3-9bf8-73d5f04f100b.jpg', N'/Content/UrunResim/Orta/7762501e-8c35-4085-b013-363084fd6f8e.jpg', NULL, 1, NULL, 4)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (24, N'/Content/UrunResim/buyuk/1c3256bf-be29-4acb-b0f8-b0caa895318a.jpg', N'/Content/UrunResim/Orta/b197bfae-b324-4900-b6ad-947b1e598ebe.jpg', NULL, 1, NULL, 5)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (25, N'/Content/UrunResim/buyuk/3f0c0e12-61f6-4117-9fe6-67564424640a.png', N'/Content/UrunResim/Orta/e84363ab-996d-4fd8-ad5e-7c558dcf299f.png', NULL, 1, NULL, 4)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (27, N'/Content/UrunResim/buyuk/4a72d9ff-2958-43f8-94d6-2860a8d02567.jpg', N'/Content/UrunResim/Orta/358bb6c0-1986-402b-9dc6-cfcc8f3346e7.jpg', NULL, 1, NULL, 6)
INSERT [dbo].[Resim] ([ID], [BuyukYol], [OrtaYol], [KucukYol], [Varsayılan], [SiraNo], [UrunID]) VALUES (28, N'/Content/UrunResim/buyuk/a69dcbb1-74d7-4333-88d7-11b8f2a36569.jpg', N'/Content/UrunResim/Orta/2e3736d9-9380-4fc6-b31a-868d3fcb79ef.jpg', NULL, 1, NULL, 6)
SET IDENTITY_INSERT [dbo].[Resim] OFF
INSERT [dbo].[Rol] ([RolID], [RolAdi], [Aciklama]) VALUES (1, N'Üye', NULL)
SET IDENTITY_INSERT [dbo].[Sepetimm] ON 

INSERT [dbo].[Sepetimm] ([aaa], [UrunID], [MusteriID], [adet]) VALUES (16, 6, 1, NULL)
INSERT [dbo].[Sepetimm] ([aaa], [UrunID], [MusteriID], [adet]) VALUES (17, 5, 1, NULL)
INSERT [dbo].[Sepetimm] ([aaa], [UrunID], [MusteriID], [adet]) VALUES (18, 4, 1, NULL)
SET IDENTITY_INSERT [dbo].[Sepetimm] OFF
SET IDENTITY_INSERT [dbo].[sepetttr] ON 

INSERT [dbo].[sepetttr] ([ID], [UrunID], [MusID], [Adet], [Tutar]) VALUES (20, 4, 1, 1, 3200.0000)
INSERT [dbo].[sepetttr] ([ID], [UrunID], [MusID], [Adet], [Tutar]) VALUES (21, 5, 1, 1, 2800.0000)
INSERT [dbo].[sepetttr] ([ID], [UrunID], [MusID], [Adet], [Tutar]) VALUES (22, 6, 1, 2, 5998.0000)
SET IDENTITY_INSERT [dbo].[sepetttr] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([ID], [Adi], [Aciklama], [AlisFiyat], [SatisFiyat], [EklenmeTarihi], [KategoriID], [MarkaID], [AktifMi]) VALUES (3, N'Iphone 6', N'32 GB', 1399.0000, 1999.0000, NULL, 8, 17, 0)
INSERT [dbo].[Urun] ([ID], [Adi], [Aciklama], [AlisFiyat], [SatisFiyat], [EklenmeTarihi], [KategoriID], [MarkaID], [AktifMi]) VALUES (4, N'İphone 7', N'32 GB', 1800.0000, 3200.0000, NULL, 8, 17, 1)
INSERT [dbo].[Urun] ([ID], [Adi], [Aciklama], [AlisFiyat], [SatisFiyat], [EklenmeTarihi], [KategoriID], [MarkaID], [AktifMi]) VALUES (5, N'İphone 6S', N'32 GB', 1500.0000, 2800.0000, NULL, 8, 17, 1)
INSERT [dbo].[Urun] ([ID], [Adi], [Aciklama], [AlisFiyat], [SatisFiyat], [EklenmeTarihi], [KategoriID], [MarkaID], [AktifMi]) VALUES (6, N'MacBook Pro i5', N'asd', 1999.0000, 2999.0000, NULL, 7, 17, 1)
SET IDENTITY_INSERT [dbo].[Urun] OFF
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (3, 14, 13)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (3, 15, 15)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (4, 14, 13)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (4, 15, 16)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (5, 14, 13)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (5, 15, 16)
INSERT [dbo].[UrunOzellik] ([UrunID], [OzellikTipID], [OzellikDegerID]) VALUES (6, 11, 18)
ALTER TABLE [dbo].[Kategori] ADD  CONSTRAINT [DF_Kategori_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
ALTER TABLE [dbo].[Kullanici] ADD  CONSTRAINT [DF_Kullanici_KayitTarihi]  DEFAULT (getdate()) FOR [KayitTarihi]
GO
ALTER TABLE [dbo].[Marka] ADD  CONSTRAINT [DF_Marka_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
ALTER TABLE [dbo].[Musteri] ADD  CONSTRAINT [DF_Musteri_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
ALTER TABLE [dbo].[Resim] ADD  CONSTRAINT [DF_Resim_Varsayılan]  DEFAULT ((1)) FOR [Varsayılan]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_SatisTarihi]  DEFAULT (getdate()) FOR [SatisTarihi]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_SepetteMi]  DEFAULT ((1)) FOR [SepetteMi]
GO
ALTER TABLE [dbo].[Urun] ADD  CONSTRAINT [DF_Urun_EklenmeTarihi]  DEFAULT (getdate()) FOR [EklenmeTarihi]
GO
ALTER TABLE [dbo].[Urun] ADD  CONSTRAINT [DF_Urun_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
ALTER TABLE [dbo].[Kategori]  WITH CHECK ADD  CONSTRAINT [FK_Kategori_Resim] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[Kategori] CHECK CONSTRAINT [FK_Kategori_Resim]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([RolID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Rol]
GO
ALTER TABLE [dbo].[KullaniciRole]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciRole_Rol] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Rol] ([RolID])
GO
ALTER TABLE [dbo].[KullaniciRole] CHECK CONSTRAINT [FK_KullaniciRole_Rol]
GO
ALTER TABLE [dbo].[Marka]  WITH CHECK ADD  CONSTRAINT [FK_Marka_Resim] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[Marka] CHECK CONSTRAINT [FK_Marka_Resim]
GO
ALTER TABLE [dbo].[MusteriAdres]  WITH CHECK ADD  CONSTRAINT [FK_MusteriAdres_Musteri1] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([ID])
GO
ALTER TABLE [dbo].[MusteriAdres] CHECK CONSTRAINT [FK_MusteriAdres_Musteri1]
GO
ALTER TABLE [dbo].[OzellikDeger]  WITH CHECK ADD  CONSTRAINT [FK_OzellikDeger_OzellikTip] FOREIGN KEY([OzellikTipID])
REFERENCES [dbo].[OzellikTip] ([ID])
GO
ALTER TABLE [dbo].[OzellikDeger] CHECK CONSTRAINT [FK_OzellikDeger_OzellikTip]
GO
ALTER TABLE [dbo].[OzellikTip]  WITH CHECK ADD  CONSTRAINT [FK_OzellikTip_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([ID])
GO
ALTER TABLE [dbo].[OzellikTip] CHECK CONSTRAINT [FK_OzellikTip_Kategori]
GO
ALTER TABLE [dbo].[Resim]  WITH CHECK ADD  CONSTRAINT [FK_Resim_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[Resim] CHECK CONSTRAINT [FK_Resim_Urun]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Kargo] FOREIGN KEY([KargoID])
REFERENCES [dbo].[Kargo] ([ID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Kargo]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteri1] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([ID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteri1]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteri2] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([ID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteri2]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_SiparisDurum] FOREIGN KEY([SiparisDurumID])
REFERENCES [dbo].[SiparisDurum] ([ID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_SiparisDurum]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Satis] FOREIGN KEY([SatisID])
REFERENCES [dbo].[Satis] ([ID])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Satis]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Urun]
GO
ALTER TABLE [dbo].[Sepetimm]  WITH CHECK ADD  CONSTRAINT [FK_Sepetim_Musteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([ID])
GO
ALTER TABLE [dbo].[Sepetimm] CHECK CONSTRAINT [FK_Sepetim_Musteri]
GO
ALTER TABLE [dbo].[Sepetimm]  WITH CHECK ADD  CONSTRAINT [FK_Sepetim_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[Sepetimm] CHECK CONSTRAINT [FK_Sepetim_Urun]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Marka] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Marka] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Marka]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_OzellikDeger] FOREIGN KEY([OzellikDegerID])
REFERENCES [dbo].[OzellikDeger] ([ID])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_OzellikDeger]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_OzellikTip] FOREIGN KEY([OzellikTipID])
REFERENCES [dbo].[OzellikTip] ([ID])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_OzellikTip]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_Urun]
GO
USE [master]
GO
ALTER DATABASE [ETicaret] SET  READ_WRITE 
GO
