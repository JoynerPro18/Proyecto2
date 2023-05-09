USE [Empresa]
GO

/****** Object:  Table [dbo].[Candidato]    Script Date: 8/5/2023 22:59:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Candidato](
	[Id_candidato] [int] IDENTITY(1,1) NOT NULL,
	[Id_puesto] [int] NULL,
	[Id_reclutamiento] [int] NULL,
	[Cedula] [varchar](30) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Sexo] [varchar](10) NOT NULL,
	[Años_experiencia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Puesto] FOREIGN KEY([Id_puesto])
REFERENCES [dbo].[Puesto] ([Id_puesto])
GO

ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Puesto]
GO

ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Reclutamiento] FOREIGN KEY([Id_reclutamiento])
REFERENCES [dbo].[Encargado_reclutamiento] ([Id])
GO

ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Reclutamiento]
GO


