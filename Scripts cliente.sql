USE [Empresa]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 25/5/2023 23:40:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Contacto] [varchar](70) NULL,
	[Direccion] [varchar](70) NULL,
	[Activo] [bit] NULL,
	[Telefono] [int] NULL,
	[Identificacion] [float] NULL,
 CONSTRAINT [PK_Cliente1] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


