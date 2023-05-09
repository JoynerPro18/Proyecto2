USE [Empresa]
GO

/****** Object:  Table [dbo].[Puesto]    Script Date: 8/5/2023 23:51:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Puesto](
	[Id_puesto] [int] IDENTITY(1,1) NOT NULL,
	[Num_solicitud] [int] NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Requisitos] [varchar](50) NOT NULL,
	[Salario] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_Solic] FOREIGN KEY([Num_solicitud])
REFERENCES [dbo].[Solicitud] ([Num_solicitud])
GO

ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_Solic]
GO


