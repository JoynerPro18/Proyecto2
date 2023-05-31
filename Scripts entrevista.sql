USE [Empresa]
GO

/****** Object:  Table [dbo].[Entrevista]    Script Date: 25/5/2023 23:41:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Entrevista](
	[Id_entrevista] [int] IDENTITY(1,1) NOT NULL,
	[Id_candidato] [int] NULL,
	[Id_entrevistador] [int] NULL,
	[Fecha] [datetime] NULL,
	[Participante] [varchar](50) NULL,
	[Preguntas] [varchar](250) NULL,
	[Notas] [varchar](250) NULL,
	[Respuestas] [varchar](250) NULL,
 CONSTRAINT [PK__Entrevis__14043325F4BC7375] PRIMARY KEY CLUSTERED 
(
	[Id_entrevista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


