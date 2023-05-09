USE [Empresa]
GO

/****** Object:  Table [dbo].[Encargado_reclutamiento]    Script Date: 8/5/2023 23:00:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Encargado_reclutamiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Num_solicitud] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Fecha_ingreso] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Encargado_reclutamiento]  WITH CHECK ADD  CONSTRAINT [FK_Solicitud] FOREIGN KEY([Num_solicitud])
REFERENCES [dbo].[Solicitud] ([Num_solicitud])
GO

ALTER TABLE [dbo].[Encargado_reclutamiento] CHECK CONSTRAINT [FK_Solicitud]
GO


