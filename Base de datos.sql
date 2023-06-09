USE [master]
GO
/****** Object:  Database [Empresa]    Script Date: 24/5/2023 02:03:50 ******/
CREATE DATABASE [Empresa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Empresa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empresa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Empresa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Empresa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empresa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Empresa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Empresa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Empresa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Empresa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Empresa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Empresa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Empresa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Empresa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Empresa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Empresa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Empresa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Empresa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Empresa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Empresa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Empresa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Empresa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Empresa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Empresa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Empresa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Empresa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Empresa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Empresa] SET RECOVERY FULL 
GO
ALTER DATABASE [Empresa] SET  MULTI_USER 
GO
ALTER DATABASE [Empresa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Empresa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Empresa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Empresa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Empresa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Empresa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Empresa] SET QUERY_STORE = OFF
GO
USE [Empresa]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](30) NULL,
	[Nombre] [varchar](30) NULL,
	[Apellido] [varchar](30) NULL,
	[Sexo] [varchar](10) NULL,
	[Direccion] [varchar](80) NULL,
	[Telefono] [int] NULL,
	[AniosExperiencia] [int] NULL,
	[Activo] [bit] NULL,
	[FechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK__Candidat__D01F62F25EB9BF97] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Contacto] [varchar](70) NULL,
	[Direccion] [varchar](70) NULL,
	[Activo] [bit] NULL,
	[Telefono] [int] NULL,
	[Identificacion] [varchar](50) NULL,
 CONSTRAINT [PK__Cliente__FCE0399237F03AB4] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encargado_reclutamiento]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encargado_reclutamiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumSolicitud] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrevista]    Script Date: 24/5/2023 02:03:50 ******/
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
	[Preguntas] [varchar](250) NULL,
	[Notas] [varchar](250) NULL,
	[Respuestas] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_entrevista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[IdPuesto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[IdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestob1]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestob1](
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
/****** Object:  Table [dbo].[Reclutador]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reclutador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](30) NULL,
	[Nombres] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](70) NULL,
	[Activo] [bit] NULL,
	[EsReclutador] [bit] NULL,
	[EsEntrevistador] [bit] NULL,
 CONSTRAINT [PK__Entrevis__3214EC07E5411027] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 24/5/2023 02:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[NumeroSolicitud] [int] NULL,
	[CantidadEmpleados] [int] NULL,
	[FechaRequerida] [datetime] NULL,
	[Sexo] [varchar](10) NULL,
 CONSTRAINT [PK_Solicitud_1] PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (12, N'123456789', N'John', N'Doe', N'M', N'Calle Principal 123', -679, 5, 1, CAST(N'1990-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (13, N'543216789', N'Juan', N'Pérez', N'M', N'Calle Secundaria 789', -5123, 8, 1, CAST(N'1905-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (15, N'123459876', N'Pedro', N'López', N'M', N'Calle Principal 567', -8210, NULL, 1, CAST(N'1905-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (16, N'543217890', N'María', N'Torres', N'F', N'Avenida Secundaria 890', -3810, 4, 1, CAST(N'1905-06-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (17, N'567894321', N'Carlos', N'Ramírez', N'M', N'Calle Principal 234', -9321, 6, 1, CAST(N'1988-06-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (18, N'295874632', N'Laura', N'García', N'F', N'Avenida 20, #30', -5995, 8, 1, CAST(N'1905-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (20, N'543216789', N'Ana', N'Garcia', N'F', N'Calle Secundaria 789', -3766, 2, 0, CAST(N'1905-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Candidato] ([IdCandidato], [Identificacion], [Nombre], [Apellido], [Sexo], [Direccion], [Telefono], [AniosExperiencia], [Activo], [FechaNacimiento]) VALUES (21, N'85738462', N'Luis', N'Hernández', N'M', N'Calle 9, #5', -6941, 10, 0, CAST(N'1905-05-28T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (1, N'Vao', NULL, N'Veracruz', NULL, -444, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (2, N'ABC Company', NULL, N'Calle 10, #5', NULL, -5555, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (3, N'XYZ Corporation', NULL, N'Avenida Principal, #20', NULL, -6666, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (4, N'Acme Inc.', NULL, N'Calle 15, #12', NULL, -7777, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (5, N'Smith & Sons', NULL, N'Avenida Central, #8', NULL, -8888, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (6, N'García Enterprises', NULL, N'Calle 3, #10', NULL, -9999, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (7, N'Mendez Co.', NULL, N'Avenida 5, #15', NULL, -1111, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (8, N'Rodríguez Ltd.', NULL, N'Calle 7, #22', NULL, -2222, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contacto], [Direccion], [Activo], [Telefono], [Identificacion]) VALUES (24, N'Vao', N'Veracruz', N'Andres', 1, -444, N'25769423')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Encargado_reclutamiento] ON 

INSERT [dbo].[Encargado_reclutamiento] ([Id], [NumSolicitud], [Nombre], [Telefono], [Direccion], [FechaIngreso]) VALUES (5, 12, N'Juan Pérez', -679, N'Calle Principal 123', CAST(N'1905-07-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Encargado_reclutamiento] OFF
GO
SET IDENTITY_INSERT [dbo].[Entrevista] ON 

INSERT [dbo].[Entrevista] ([Id_entrevista], [Id_candidato], [Id_entrevistador], [Fecha], [Participante], [Preguntas], [Notas], [Respuestas]) VALUES (11, 2, 1, CAST(N'2023-05-12T00:00:00.000' AS DateTime), N'Carlos Estrada', N'¿Cómo manejas el estrés?', N'La candidata demostró habilidades para mantener la calma en situaciones de presión', N'La candidata mencionó que utiliza técnicas de respiración y organización para manejar el estrés     ')
INSERT [dbo].[Entrevista] ([Id_entrevista], [Id_candidato], [Id_entrevistador], [Fecha], [Participante], [Preguntas], [Notas], [Respuestas]) VALUES (16, 3, 1, CAST(N'2023-05-13T00:00:00.000' AS DateTime), N'Juan Gonzales', N'¿Cuál es tu mayor logro profesional?', N'El candidato destacó haber liderado un proyecto exitoso que generó ahorros significativos para la empresa', N'El candidato explicó en detalle cómo planificó y ejecutó el proyecto, así como los resultados obtenidos')
INSERT [dbo].[Entrevista] ([Id_entrevista], [Id_candidato], [Id_entrevistador], [Fecha], [Participante], [Preguntas], [Notas], [Respuestas]) VALUES (17, 5, 1, CAST(N'2023-05-14T00:00:00.000' AS DateTime), N'Maria Lopez', N'¿Cómo te mantienes actualizado en tu campo?', N'La candidata mencionó que asiste regularmente a conferencias y cursos de actualización.', N'La candidata también utiliza recursos en línea, como blogs y artículos especializados, para mantenerse informada.')
INSERT [dbo].[Entrevista] ([Id_entrevista], [Id_candidato], [Id_entrevistador], [Fecha], [Participante], [Preguntas], [Notas], [Respuestas]) VALUES (18, 6, 1, CAST(N'2023-05-15T00:00:00.000' AS DateTime), N'Pedro Ramirez', N'¿Cómo te adaptas a los cambios?', N'El candidato enfatizó su capacidad para adaptarse rápidamente a nuevas situaciones y aprender de ellas.', N'El candidato mencionó un ejemplo específico en el que tuvo que ajustar su enfoque debido a cambios inesperados.')
INSERT [dbo].[Entrevista] ([Id_entrevista], [Id_candidato], [Id_entrevistador], [Fecha], [Participante], [Preguntas], [Notas], [Respuestas]) VALUES (19, 7, 1, CAST(N'2023-05-16T00:00:00.000' AS DateTime), N'Ana Castillo', N'¿Cuál es tu enfoque al trabajar en equipo?', N'La candidata destacó la importancia de la comunicación abierta y la colaboración en equipo', N'La candidata mencionó un proyecto')
SET IDENTITY_INSERT [dbo].[Entrevista] OFF
GO
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (1, N'001', N'Gerente', 1)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (2, N'2', N'Analista', 0)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (3, N'3', N'Asistente', 1)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (4, N'4', N'Supervisor', 1)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (5, N'5', N'Tecnico', 0)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (6, N'6', N'Ejecutivo de ventas', 1)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (7, N'7', N'Desarrollador', 1)
INSERT [dbo].[Puesto] ([IdPuesto], [Codigo], [Descripcion], [Activo]) VALUES (8, N'8', N'Contador', 1)
SET IDENTITY_INSERT [dbo].[Puesto] OFF
GO
SET IDENTITY_INSERT [dbo].[Puestob1] ON 

INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (1, 12, N'Puesto A', N'Requisitos para el Puesto A', 5000)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (2, 13, N'Puesto B', N'Requisitos para el Puesto B', 4000)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (3, 15, N'Puesto C', N'Requisitos para el Puesto C', 6000)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (4, 16, N'Puesto D', N'Requisitos para el Puesto D', 4500)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (5, 17, N'Puesto E', N'Requisitos para el Puesto E', 5500)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (6, 18, N'Puesto F', N'Requisitos para el Puesto F', 3500)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (7, 19, N'Puesto G', N'Requisitos para el Puesto G', 4800)
INSERT [dbo].[Puestob1] ([Id_puesto], [Num_solicitud], [Descripcion], [Requisitos], [Salario]) VALUES (8, 20, N'Puesto H', N'Requisitos para el Puesto H', 5200)
SET IDENTITY_INSERT [dbo].[Puestob1] OFF
GO
SET IDENTITY_INSERT [dbo].[Reclutador] ON 

INSERT [dbo].[Reclutador] ([Id], [Identificacion], [Nombres], [Apellidos], [Email], [Telefono], [Direccion], [Activo], [EsReclutador], [EsEntrevistador]) VALUES (1, N'1234567890', N'Juan Pérez', NULL, N'juan@example.com', -4135, N'Calle Principal, #123', NULL, NULL, NULL)
INSERT [dbo].[Reclutador] ([Id], [Identificacion], [Nombres], [Apellidos], [Email], [Telefono], [Direccion], [Activo], [EsReclutador], [EsEntrevistador]) VALUES (3, N'1234567890', N'Juan Jose', N'Perez Castillo', N'juan@example.com', -4135, N'Calle Principal, #123', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Reclutador] OFF
GO
SET IDENTITY_INSERT [dbo].[Solicitud] ON 

INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (1, 1, 12, 5, CAST(N'2023-05-15T00:00:00.000' AS DateTime), N'Femenino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (2, 2, 13, 10, CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'Masculino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (3, 3, 15, 8, CAST(N'2023-05-20T00:00:00.000' AS DateTime), N'Masculino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (4, 4, 16, 15, CAST(N'2023-06-10T00:00:00.000' AS DateTime), N'Femenino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (5, 5, 17, 6, CAST(N'2023-05-25T00:00:00.000' AS DateTime), N'Masculino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (6, 6, 18, 3, CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'Femenino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (7, 7, 19, 12, CAST(N'2023-05-30T00:00:00.000' AS DateTime), N'Femenino')
INSERT [dbo].[Solicitud] ([IdSolicitud], [IdCliente], [NumeroSolicitud], [CantidadEmpleados], [FechaRequerida], [Sexo]) VALUES (8, 8, 20, 9, CAST(N'2023-06-15T00:00:00.000' AS DateTime), N'Masculino')
SET IDENTITY_INSERT [dbo].[Solicitud] OFF
GO
ALTER TABLE [dbo].[Entrevista]  WITH CHECK ADD  CONSTRAINT [FK_Entrevistador] FOREIGN KEY([Id_entrevistador])
REFERENCES [dbo].[Reclutador] ([Id])
GO
ALTER TABLE [dbo].[Entrevista] CHECK CONSTRAINT [FK_Entrevistador]
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [FK_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [FK_Cliente]
GO
USE [master]
GO
ALTER DATABASE [Empresa] SET  READ_WRITE 
GO
