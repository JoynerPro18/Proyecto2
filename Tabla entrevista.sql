USE [Empresa]
GO

/****** Object:  Table [dbo].[Entrevista]    Script Date: 08/05/2023 11:50:27 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Entrevista](
	[Id_entrevista] [int] IDENTITY(1,1) NOT NULL,
	[Id_candidato] [int] NULL,
	[Id_entrevistador] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[Participante] [varchar](50) NOT NULL,
	[Preguntas] [varchar](50) NOT NULL,
	[Notas] [varchar](50) NOT NULL,
	[Respuestas] [nchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_entrevista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Entrevista]  WITH CHECK ADD  CONSTRAINT [FK_Candidato] FOREIGN KEY([Id_candidato])
REFERENCES [dbo].[Candidato] ([Id_candidato])
GO

ALTER TABLE [dbo].[Entrevista] CHECK CONSTRAINT [FK_Candidato]
GO

ALTER TABLE [dbo].[Entrevista]  WITH CHECK ADD  CONSTRAINT [FK_Entrevistador] FOREIGN KEY([Id_entrevistador])
REFERENCES [dbo].[Entrevistador] ([Id])
GO

ALTER TABLE [dbo].[Entrevista] CHECK CONSTRAINT [FK_Entrevistador]
GO


