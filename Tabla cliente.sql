USE [Empresa]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 9/5/2023 00:38:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Telefono] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


