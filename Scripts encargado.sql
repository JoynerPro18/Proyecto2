USE [Empresa]
GO

/****** Object:  Table [dbo].[Encargado_reclutamiento]    Script Date: 25/5/2023 23:41:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Encargado_reclutamiento](
	[Id] [int] NOT NULL,
	[NumSolicitud] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](70) NULL,
	[FechaIngreso] [datetime] NULL,
 CONSTRAINT [PK_Encargado_reclutamient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


