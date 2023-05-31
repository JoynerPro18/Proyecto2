USE [Empresa]
GO

/****** Object:  Table [dbo].[Reclutador]    Script Date: 25/5/2023 23:42:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reclutador](
	[Id] [int] NOT NULL,
	[Identificacion] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](70) NULL,
	[Activo] [bit] NULL,
	[EsReclutador] [bit] NULL,
	[EsEntrevistador] [bit] NULL,
 CONSTRAINT [PK_Solicitud1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


