USE [Empresa]
GO

/****** Object:  Table [dbo].[Solicitud]    Script Date: 25/5/2023 23:42:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Solicitud](
	[IdSolicitud] [int] NOT NULL,
	[NombreEmpresa] [varchar](50) NULL,
	[CantEmpleados] [int] NULL,
	[FechaRequerida] [datetime] NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


