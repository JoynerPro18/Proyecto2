USE [Empresa]
GO

/****** Object:  Table [dbo].[Candidato]    Script Date: 25/5/2023 23:40:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] NOT NULL,
	[Identificacion] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[Telefono] [int] NULL,
	[AniosExperiencia] [int] NULL,
	[Activo] [bit] NULL,
	[FechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_Candidato1] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidato] SET (LOCK_ESCALATION = DISABLE)
GO


