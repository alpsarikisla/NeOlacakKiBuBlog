--CREATE DATABASE NeOlacakKiBu_Db
--GO
USE NeOlacakKiBu_Db
GO
CREATE TABLE YoneticiTurleri
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_yoneticiTur PRIMARY KEY(ID)
)
GO
INSERT INTO YoneticiTurleri(Isim) VALUES('Admin')
INSERT INTO YoneticiTurleri(Isim) VALUES('Moderatör')
GO
CREATE TABLE Yoneticiler
(
	ID int IDENTITY(1,1),
	YoneticiTurID int,
	Isim nvarchar(50) NOT NULL,
	Soyisim nvarchar(50),
	Mail nvarchar(120),
	Sifre nvarchar(20),
	Durum bit,
	CONSTRAINT pk_yonetici PRIMARY KEY(ID),
	CONSTRAINT pk_yoneticiYoneticiTur FOREIGN KEY(YoneticiTurID)
	REFERENCES YoneticiTurleri(ID)
)
GO
INSERT INTO Yoneticiler(YoneticiTurID, Isim, Soyisim, Mail, Sifre, Durum) VALUES(1, 'Alp', 'Sarýkýþla', 'alpsarikisla@hotmail.com', '12345',1)
GO
CREATE TABLE Uyeler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	Soyisim nvarchar(50),
	KullaniciAdi nvarchar(20),
	Mail nvarchar(120),
	Sifre nvarchar(20),
	UyelikTarih datetime,
	Durum bit,
	CONSTRAINT pk_uye PRIMARY KEY(ID),
)
GO
CREATE TABLE Kategoriler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	Durum bit,
	CONSTRAINT pk_kategori PRIMARY KEY(ID)
)
GO
CREATE TABLE Makaleler
(
	ID int IDENTITY(1,1),
	KategoriID int,
	YazarID int,
	Baslik nvarchar(120) NOT NULL,
	Ozet nvarchar(500),
	Icerik nvarchar(MAX),
	GoruntulemeSayi int,
	KapakResim nvarchar(50),
	EklemeTarih datetime,
	Durum bit,
	CONSTRAINT pk_makale PRIMARY KEY(ID),
	CONSTRAINT fk_makaleKategori FOREIGN KEY(KategoriID) REFERENCES Kategoriler(ID),
	CONSTRAINT fk_makaleYonetici FOREIGN KEY(YazarID) REFERENCES Yoneticiler(ID)
)
GO
CREATE TABLE Yorumlar
(
	ID int IDENTITY(1,1),
	MakaleID int,
	UyeID int,
	Icerik nvarchar(500),
	EklemeTarihi date,
	Durum bit,
	CONSTRAINT pk_yorum PRIMARY KEY(ID),
	CONSTRAINT fk_yorumMakale FOREIGN KEY(MakaleID) REFERENCES Makaleler(ID),
	CONSTRAINT fk_yorumUye FOREIGN KEY(UyeID) REFERENCES Uyeler(ID)
)