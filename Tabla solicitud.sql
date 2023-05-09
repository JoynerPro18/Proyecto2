USE [Empresa]
GO

/****** Object:  Table [dbo].[Solicitud]    Script Date: 09/05/2023 12:12:31 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Solicitud](
	[Num_solicitud] [int] IDENTITY(1,1) NOT NULL,
	[Id_cliente] [int] NULL,
	[Nombre_empresa] [varchar](50) NOT NULL,
	[Cant_empleados] [int] NOT NULL,
	[Sexo_empleado] [varchar](10) NOT NULL,
	[Fecha_requerida] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [FK_Cliente] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO

ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [FK_Cliente]
GO


