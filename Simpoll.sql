USE [master]
GO
/****** Object:  Database [Simpoll]    Script Date: 23/01/2018 16:07:40 ******/
CREATE DATABASE [Simpoll]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Simpoll', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Simpoll.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Simpoll_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Simpoll_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Simpoll] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Simpoll].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Simpoll] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Simpoll] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Simpoll] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Simpoll] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Simpoll] SET ARITHABORT OFF 
GO
ALTER DATABASE [Simpoll] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Simpoll] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Simpoll] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Simpoll] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Simpoll] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Simpoll] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Simpoll] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Simpoll] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Simpoll] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Simpoll] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Simpoll] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Simpoll] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Simpoll] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Simpoll] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Simpoll] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Simpoll] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Simpoll] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Simpoll] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Simpoll] SET  MULTI_USER 
GO
ALTER DATABASE [Simpoll] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Simpoll] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Simpoll] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Simpoll] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Simpoll] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Simpoll] SET QUERY_STORE = OFF
GO
USE [Simpoll]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Simpoll]
GO
/****** Object:  Table [dbo].[Createur]    Script Date: 23/01/2018 16:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Createur](
	[IdCreateur] [int] IDENTITY(1,1) NOT NULL,
	[NomCreateur] [nvarchar](50) NOT NULL,
	[PrenomCreateur] [nvarchar](50) NOT NULL,
	[EmailCreateur] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Createur_1] PRIMARY KEY CLUSTERED 
(
	[IdCreateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reponse]    Script Date: 23/01/2018 16:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reponse](
	[IdReponse] [int] IDENTITY(1,1) NOT NULL,
	[IntituleReponse] [nvarchar](255) NOT NULL,
	[NbVoteReponse] [int] NOT NULL,
	[FKIdSondage] [int] NOT NULL,
 CONSTRAINT [PK_Reponse_1] PRIMARY KEY CLUSTERED 
(
	[IdReponse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sondage]    Script Date: 23/01/2018 16:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sondage](
	[IdSondage] [int] IDENTITY(1,1) NOT NULL,
	[QuestionSondage] [nvarchar](255) NOT NULL,
	[ChoixMultiple] [bit] NOT NULL,
	[NbVotant] [int] NOT NULL,
	[FKIdCreateur] [int] NOT NULL,
	[UrlPartage] [nvarchar](255) NULL,
	[UrlSuppression] [nvarchar](255) NULL,
	[UrlResultat] [nvarchar](255) NULL,
	[Guid] [nvarchar](100) NOT NULL,
	[Actif] [bit] NOT NULL,
 CONSTRAINT [PK_Sondage_1] PRIMARY KEY CLUSTERED 
(
	[IdSondage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Createur] ON 

INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (55, N'ZEGHAD', N'Amine', N'zghad.amine@yahoo.fr')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (56, N'ZEGHAD', N'Walid', N'zeghad.walid@yahoo.Fr')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (57, N'Meistertzheim', N'Damien', N'damien@gmail.com')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (58, N'ZEGHAD', N'Amine', N'zghad.amine@yahoo.fr')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (59, N'ZEGHAD', N'Amine', N'zghad.amine@yahoo.fr')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (60, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (61, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (62, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (63, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (64, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (65, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (66, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (67, N'', N'', N'')
INSERT [dbo].[Createur] ([IdCreateur], [NomCreateur], [PrenomCreateur], [EmailCreateur]) VALUES (68, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Createur] OFF
SET IDENTITY_INSERT [dbo].[Reponse] ON 

INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (96, N'Croq''Vite', 0, 1)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (97, N'j', 0, 1)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (98, N'Boulangerie', 0, 1)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (99, N'Croq''Vite', 0, 2)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (100, N'chinoi', 0, 2)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (101, N'Boulangerie', 0, 2)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (102, N'Croq''Vite', 0, 3)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (103, N'chinoi', 0, 3)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (104, N'turc', 0, 3)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (105, N'gfdh', 0, 4)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (106, N'dgh', 0, 4)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (107, N'fdgh', 0, 4)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (108, N'qsdf', 0, 5)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (109, N'dgh', 0, 5)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (110, N'Boulangerie', 0, 5)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (111, N'Croq''Vite', 0, 6)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (112, N'chinoi', 0, 6)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (113, N'Boulangerie', 0, 6)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (114, N'qsdf', 1, 7)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (115, N'j', 3, 7)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (116, N'Boulangerie', 1, 7)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (117, N'Croq''Vite', 0, 8)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (118, N'chinoi', 0, 8)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (119, N'Boulangerie', 0, 8)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (120, N'', 0, 9)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (121, N'', 0, 9)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (122, N'', 0, 9)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (123, N'', 0, 10)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (124, N'', 1, 10)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (125, N'', 0, 10)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (126, N'fdh', 0, 11)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (127, N'dfgh', 0, 11)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (128, N'fdgh', 0, 12)
INSERT [dbo].[Reponse] ([IdReponse], [IntituleReponse], [NbVoteReponse], [FKIdSondage]) VALUES (129, N'fdgh', 0, 12)
SET IDENTITY_INSERT [dbo].[Reponse] OFF
SET IDENTITY_INSERT [dbo].[Sondage] ON 

INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (1, N'Quel Resto ?', 0, 0, 55, N'localhost:8870/Simpoll/Vote?idSondage=1', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=3bdefe1d-7049-42c2-91d2-96035709c20d', N'localhost:8870/Simpoll/Resultat?idSondage=1', N'3bdefe1d-7049-42c2-91d2-96035709c20d', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (2, N'Quel Resto ?', 1, 0, 56, N'localhost:8870/Simpoll/Vote?idSondage=2', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=16db9fc4-a52b-4e11-a735-5c4e0b7687fc', N'localhost:8870/Simpoll/Resultat?idSondage=2', N'16db9fc4-a52b-4e11-a735-5c4e0b7687fc', 0)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (3, N'Quel Resto ?', 0, 0, 57, N'localhost:8870/Simpoll/Vote?idSondage=3', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=5ffc0a47-a595-44d4-82e5-e5aad621c9f4', N'localhost:8870/Simpoll/Resultat?idSondage=3', N'5ffc0a47-a595-44d4-82e5-e5aad621c9f4', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (4, N'Quel Resto ?', 0, 0, 58, N'localhost:8870/Simpoll/Vote?idSondage=4', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=7934c6d8-8e66-4e4a-9d72-2ebf65a56a60', N'localhost:8870/Simpoll/Resultat?idSondage=4', N'7934c6d8-8e66-4e4a-9d72-2ebf65a56a60', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (5, N'Quel Resto ?', 0, 0, 59, N'localhost:8870/Simpoll/Vote?idSondage=5', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=a2450b58-4cc9-4c38-b2d6-524862956629', N'localhost:8870/Simpoll/Resultat?idSondage=5', N'a2450b58-4cc9-4c38-b2d6-524862956629', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (6, N'Quel Resto ?', 0, 0, 60, N'localhost:8870/Simpoll/Vote?idSondage=6', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=b569b910-f845-4693-8d7a-deeb9047f9ef', N'localhost:8870/Simpoll/Resultat?idSondage=6', N'b569b910-f845-4693-8d7a-deeb9047f9ef', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (7, N'Quel Resto ?', 0, 5, 61, N'localhost:8870/Simpoll/Vote?idSondage=7', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=6d944f6d-21f4-4dcd-8cbf-3376cffecec5', N'localhost:8870/Simpoll/Resultat?idSondage=7', N'6d944f6d-21f4-4dcd-8cbf-3376cffecec5', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (8, N'Quel Resto ?', 0, 0, 62, N'localhost:8870/Simpoll/Vote?idSondage=8', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=0ef17757-ba1a-4407-82f7-acc75bfbf7a0', N'localhost:8870/Simpoll/Resultat?idSondage=8', N'0ef17757-ba1a-4407-82f7-acc75bfbf7a0', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (9, N'sdqf', 0, 0, 63, N'localhost:8870/Simpoll/Vote?idSondage=9', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=233bdab1-5559-4a78-a437-28c159d5d345', N'localhost:8870/Simpoll/Resultat?idSondage=9', N'233bdab1-5559-4a78-a437-28c159d5d345', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (10, N'', 0, 1, 64, N'localhost:8870/Simpoll/Vote?idSondage=10', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=4409ba79-a304-4157-8257-ab894b290d73', N'localhost:8870/Simpoll/Resultat?idSondage=10', N'4409ba79-a304-4157-8257-ab894b290d73', 0)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (11, N'fgh', 0, 0, 66, N'localhost:8870/Simpoll/Vote?idSondage=11', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=1f5c16b3-32ea-41f9-a691-66f1c6432b52', N'localhost:8870/Simpoll/Resultat?idSondage=11', N'1f5c16b3-32ea-41f9-a691-66f1c6432b52', 1)
INSERT [dbo].[Sondage] ([IdSondage], [QuestionSondage], [ChoixMultiple], [NbVotant], [FKIdCreateur], [UrlPartage], [UrlSuppression], [UrlResultat], [Guid], [Actif]) VALUES (12, N'fgh', 1, 0, 67, N'localhost:8870/Simpoll/Vote?idSondage=12', N'localhost:8870/Simpoll/DesactiverSondage?myGuid=322254b5-a155-491e-9b28-05821d8d37ff', N'localhost:8870/Simpoll/Resultat?idSondage=12', N'322254b5-a155-491e-9b28-05821d8d37ff', 1)
SET IDENTITY_INSERT [dbo].[Sondage] OFF
ALTER TABLE [dbo].[Reponse]  WITH CHECK ADD  CONSTRAINT [FK_Sondage_Reponse] FOREIGN KEY([FKIdSondage])
REFERENCES [dbo].[Sondage] ([IdSondage])
GO
ALTER TABLE [dbo].[Reponse] CHECK CONSTRAINT [FK_Sondage_Reponse]
GO
ALTER TABLE [dbo].[Sondage]  WITH CHECK ADD  CONSTRAINT [FK_Createur_Sondage] FOREIGN KEY([FKIdCreateur])
REFERENCES [dbo].[Createur] ([IdCreateur])
GO
ALTER TABLE [dbo].[Sondage] CHECK CONSTRAINT [FK_Createur_Sondage]
GO
USE [master]
GO
ALTER DATABASE [Simpoll] SET  READ_WRITE 
GO
