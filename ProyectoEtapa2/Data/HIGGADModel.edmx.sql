
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/15/2016 11:03:28
-- Generated from EDMX file: C:\Users\LEONAR\Desktop\aplicacion\ProyectoEtapa4MO1\ProyectoEtapa2\Data\HIGGADModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HIGADDv1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Asignaturas_Carreras]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignaturas] DROP CONSTRAINT [FK_Asignaturas_Carreras];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignaturas_Plan_asignatura]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignaturas] DROP CONSTRAINT [FK_Asignaturas_Plan_asignatura];
GO
IF OBJECT_ID(N'[dbo].[FK_Carreras_Facultad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carreras] DROP CONSTRAINT [FK_Carreras_Facultad];
GO
IF OBJECT_ID(N'[dbo].[FK_DCA_Departamentos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DCA] DROP CONSTRAINT [FK_DCA_Departamentos];
GO
IF OBJECT_ID(N'[dbo].[FK_Departamentos_Facultad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departamentos] DROP CONSTRAINT [FK_Departamentos_Facultad];
GO
IF OBJECT_ID(N'[dbo].[FK_Documentos_Grupo_Asig_C_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Documentos] DROP CONSTRAINT [FK_Documentos_Grupo_Asig_C_A];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Asig_C_A_Grupos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Asig_C_A] DROP CONSTRAINT [FK_Grupo_Asig_C_A_Grupos];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Asig_C_A_Prof_Asig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Asig_C_A] DROP CONSTRAINT [FK_Grupo_Asig_C_A_Prof_Asig];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupos_Carreras]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupos_Carreras];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupos_Semestre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupos_Semestre];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupos_Turnos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupos_Turnos];
GO
IF OBJECT_ID(N'[dbo].[FK_Horarios_Dia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Horarios] DROP CONSTRAINT [FK_Horarios_Dia];
GO
IF OBJECT_ID(N'[dbo].[FK_Horarios_Grupo_Asig_C_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Horarios] DROP CONSTRAINT [FK_Horarios_Grupo_Asig_C_A];
GO
IF OBJECT_ID(N'[dbo].[FK_Horarios_Horas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Horarios] DROP CONSTRAINT [FK_Horarios_Horas];
GO
IF OBJECT_ID(N'[dbo].[FK_Laboratorios_Carreras]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Laboratorios] DROP CONSTRAINT [FK_Laboratorios_Carreras];
GO
IF OBJECT_ID(N'[dbo].[FK_Literatura_Doc_Asignaturas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Literatura_Doc] DROP CONSTRAINT [FK_Literatura_Doc_Asignaturas];
GO
IF OBJECT_ID(N'[dbo].[FK_Notificaciones_Usuarios]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notificaciones] DROP CONSTRAINT [FK_Notificaciones_Usuarios];
GO
IF OBJECT_ID(N'[dbo].[FK_PC_Prof_Asig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC] DROP CONSTRAINT [FK_PC_Prof_Asig];
GO
IF OBJECT_ID(N'[dbo].[FK_PDC_Prof_Asig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PDC] DROP CONSTRAINT [FK_PDC_Prof_Asig];
GO
IF OBJECT_ID(N'[dbo].[FK_Plan_tematico_Asignaturas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Plan_tematico] DROP CONSTRAINT [FK_Plan_tematico_Asignaturas];
GO
IF OBJECT_ID(N'[dbo].[FK_Prof_Asig_Asignaturas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prof_Asig] DROP CONSTRAINT [FK_Prof_Asig_Asignaturas];
GO
IF OBJECT_ID(N'[dbo].[FK_Prof_Asig_Profesor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prof_Asig] DROP CONSTRAINT [FK_Prof_Asig_Profesor];
GO
IF OBJECT_ID(N'[dbo].[FK_Profesor_Departamentos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Profesor] DROP CONSTRAINT [FK_Profesor_Departamentos];
GO
IF OBJECT_ID(N'[dbo].[FK_Profesor_Usuarios]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Profesor] DROP CONSTRAINT [FK_Profesor_Usuarios];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Asignaturas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignaturas];
GO
IF OBJECT_ID(N'[dbo].[Carreras]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carreras];
GO
IF OBJECT_ID(N'[dbo].[DCA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DCA];
GO
IF OBJECT_ID(N'[dbo].[Departamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departamentos];
GO
IF OBJECT_ID(N'[dbo].[Dia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Dia];
GO
IF OBJECT_ID(N'[dbo].[Documentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Documentos];
GO
IF OBJECT_ID(N'[dbo].[Facultad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Facultad];
GO
IF OBJECT_ID(N'[dbo].[Grupo_Asig_C_A]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo_Asig_C_A];
GO
IF OBJECT_ID(N'[dbo].[Grupos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupos];
GO
IF OBJECT_ID(N'[dbo].[Horarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Horarios];
GO
IF OBJECT_ID(N'[dbo].[Horas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Horas];
GO
IF OBJECT_ID(N'[dbo].[Laboratorios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Laboratorios];
GO
IF OBJECT_ID(N'[dbo].[Literatura_Doc]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Literatura_Doc];
GO
IF OBJECT_ID(N'[dbo].[Notificaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notificaciones];
GO
IF OBJECT_ID(N'[dbo].[PC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC];
GO
IF OBJECT_ID(N'[dbo].[PDC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PDC];
GO
IF OBJECT_ID(N'[dbo].[Plan_asignatura]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Plan_asignatura];
GO
IF OBJECT_ID(N'[dbo].[Plan_tematico]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Plan_tematico];
GO
IF OBJECT_ID(N'[dbo].[Prof_Asig]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prof_Asig];
GO
IF OBJECT_ID(N'[dbo].[Profesor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profesor];
GO
IF OBJECT_ID(N'[dbo].[Semestre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Semestre];
GO
IF OBJECT_ID(N'[dbo].[Turnos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Turnos];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Asignaturas'
CREATE TABLE [dbo].[Asignaturas] (
    [id_asignatura] int IDENTITY(1,1) NOT NULL,
    [disciplina] varchar(100)  NOT NULL,
    [nombre_discip] varchar(100)  NOT NULL,
    [tipo_discip] varchar(50)  NOT NULL,
    [anio] char(10)  NOT NULL,
    [prerrequisito] varchar(100)  NOT NULL,
    [precedencia] varchar(100)  NOT NULL,
    [creditos] char(10)  NOT NULL,
    [horas] int  NOT NULL,
    [frecuencia_semanal] char(10)  NOT NULL,
    [semestre] char(10)  NOT NULL,
    [descripcion] varchar(200)  NOT NULL,
    [recursos] varchar(100)  NOT NULL,
    [id_carrera] nchar(10)  NULL,
    [id_plan_asignatura] int  NULL
);
GO

-- Creating table 'Carreras'
CREATE TABLE [dbo].[Carreras] (
    [id_carrera] nchar(10)  NOT NULL,
    [nombre_carrera] varchar(50)  NOT NULL,
    [n_semestres] int  NOT NULL,
    [id_Facultad] nchar(10)  NULL
);
GO

-- Creating table 'DCA'
CREATE TABLE [dbo].[DCA] (
    [id_dca] int IDENTITY(1,1) NOT NULL,
    [nombre] char(35)  NOT NULL,
    [semestre] char(10)  NOT NULL,
    [departamento] nchar(10)  NOT NULL,
    [fecha_e_dca] datetime  NOT NULL,
    [documento_dca] nvarchar(max)  NOT NULL,
    [id_departamento] nchar(10)  NOT NULL
);
GO

-- Creating table 'Departamentos'
CREATE TABLE [dbo].[Departamentos] (
    [id_departamento] nchar(10)  NOT NULL,
    [nombre_d] varchar(50)  NOT NULL,
    [id_Facultad] nchar(10)  NULL
);
GO

-- Creating table 'Dia'
CREATE TABLE [dbo].[Dia] (
    [id_dia] int  NOT NULL,
    [iniciales] char(1)  NOT NULL,
    [nombre] nchar(10)  NOT NULL
);
GO

-- Creating table 'Documentos'
CREATE TABLE [dbo].[Documentos] (
    [id_doc] int IDENTITY(1,1) NOT NULL,
    [nombre] char(35)  NOT NULL,
    [fecha] datetime  NOT NULL,
    [contenido] varchar(400)  NULL,
    [observaciones] varchar(400)  NULL,
    [objetivos] varchar(400)  NULL,
    [documento] nvarchar(max)  NOT NULL,
    [locacion] char(15)  NULL,
    [hora] time  NULL,
    [fecha_e] datetime  NOT NULL,
    [ID_G_A_P_A] int  NOT NULL,
    [tipo] nchar(10)  NOT NULL
);
GO

-- Creating table 'Facultad'
CREATE TABLE [dbo].[Facultad] (
    [id_Facultad] nchar(10)  NOT NULL,
    [nombre] varchar(50)  NOT NULL,
    [ubicacion] varchar(50)  NOT NULL,
    [telefono] nchar(10)  NOT NULL
);
GO

-- Creating table 'Grupo_Asig_C_A'
CREATE TABLE [dbo].[Grupo_Asig_C_A] (
    [ID_G_A_P_A] int IDENTITY(1,1) NOT NULL,
    [id_grupo] int  NULL,
    [fecha_ac] datetime  NOT NULL,
    [color] char(8)  NULL,
    [id_prof_asig] int  NULL
);
GO

-- Creating table 'Grupos'
CREATE TABLE [dbo].[Grupos] (
    [id_grupo] int IDENTITY(1,1) NOT NULL,
    [anio] char(10)  NOT NULL,
    [nombre] char(10)  NOT NULL,
    [id_turno] char(1)  NOT NULL,
    [id_semestre] int  NOT NULL,
    [id_carrera] nchar(10)  NOT NULL
);
GO

-- Creating table 'Horarios'
CREATE TABLE [dbo].[Horarios] (
    [id_horarios] int IDENTITY(1,1) NOT NULL,
    [id_dia] int  NULL,
    [id_hora] int  NULL,
    [laboratorio] varchar(50)  NULL,
    [ID_G_A_P_A] int  NULL
);
GO

-- Creating table 'Horas'
CREATE TABLE [dbo].[Horas] (
    [id_hora] int  NOT NULL,
    [hora] time  NOT NULL,
    [bloque] char(1)  NOT NULL,
    [turno] char(1)  NOT NULL
);
GO

-- Creating table 'Laboratorios'
CREATE TABLE [dbo].[Laboratorios] (
    [id_lab] nchar(10)  NOT NULL,
    [nombre_lab] varchar(50)  NOT NULL,
    [ubicacion] varchar(50)  NOT NULL,
    [id_carrera] nchar(10)  NOT NULL
);
GO

-- Creating table 'Literatura_Doc'
CREATE TABLE [dbo].[Literatura_Doc] (
    [id_litdoc] int IDENTITY(1,1) NOT NULL,
    [nombre_libro] varchar(50)  NOT NULL,
    [autor] varchar(50)  NOT NULL,
    [edicion] varchar(50)  NOT NULL,
    [anio] char(10)  NOT NULL,
    [presentacion_libro] varchar(50)  NOT NULL,
    [id_asignatura] int  NULL
);
GO

-- Creating table 'Notificaciones'
CREATE TABLE [dbo].[Notificaciones] (
    [Id_noti] int IDENTITY(1,1) NOT NULL,
    [noti_fecha] datetime  NOT NULL,
    [mensage] varchar(100)  NOT NULL,
    [valido] int  NOT NULL,
    [id_documento_control] int  NULL,
    [IDPA] int  NULL,
    [IDUsuario] int  NOT NULL
);
GO

-- Creating table 'PC'
CREATE TABLE [dbo].[PC] (
    [id_PC] int IDENTITY(1,1) NOT NULL,
    [fecha_ela_pc] datetime  NOT NULL,
    [documento_pc] nvarchar(max)  NOT NULL,
    [id_prof_asig] int  NOT NULL
);
GO

-- Creating table 'PDC'
CREATE TABLE [dbo].[PDC] (
    [id_pdc] int IDENTITY(1,1) NOT NULL,
    [fecha_ela_pdc] datetime  NOT NULL,
    [documento_pdc] nvarchar(max)  NOT NULL,
    [id_prof_asig] int  NOT NULL
);
GO

-- Creating table 'Plan_asignatura'
CREATE TABLE [dbo].[Plan_asignatura] (
    [id_plan_asignatura] int IDENTITY(1,1) NOT NULL,
    [nombre_plan] varchar(100)  NOT NULL,
    [anio] nchar(10)  NOT NULL,
    [fecha_E_PA] datetime  NULL
);
GO

-- Creating table 'Plan_tematico'
CREATE TABLE [dbo].[Plan_tematico] (
    [id_plantema] int IDENTITY(1,1) NOT NULL,
    [unidades] char(1)  NOT NULL,
    [nombre] varchar(50)  NOT NULL,
    [clase] varchar(50)  NOT NULL,
    [clase_pract] varchar(50)  NOT NULL,
    [lab] varchar(50)  NOT NULL,
    [contenido] nvarchar(max)  NOT NULL,
    [id_asignatura] int  NULL
);
GO

-- Creating table 'Prof_Asig'
CREATE TABLE [dbo].[Prof_Asig] (
    [id_prof_asig] int IDENTITY(1,1) NOT NULL,
    [horario_consulta] char(10)  NOT NULL,
    [hora_clase] char(10)  NOT NULL,
    [hora_cp] char(10)  NOT NULL,
    [hora_lab] char(10)  NOT NULL,
    [id_profesor] nchar(10)  NULL,
    [observaciones] varchar(100)  NULL,
    [id_asignatura] int  NULL
);
GO

-- Creating table 'Profesor'
CREATE TABLE [dbo].[Profesor] (
    [id_profesor] nchar(10)  NOT NULL,
    [nombre_profesor] varchar(50)  NOT NULL,
    [apellido_profesor] varchar(50)  NOT NULL,
    [telefono] nchar(10)  NOT NULL,
    [cedula] nchar(16)  NOT NULL,
    [correo] varchar(50)  NOT NULL,
    [genero] varchar(5)  NOT NULL,
    [fecha_ingreso] datetime  NOT NULL,
    [nivel_acad] varchar(50)  NOT NULL,
    [tipo_carga] varchar(50)  NOT NULL,
    [id_departamento] nchar(10)  NULL,
    [tipo_contrato] nchar(10)  NOT NULL,
    [cargo] int  NULL,
    [IDUsuario] int  NULL
);
GO

-- Creating table 'Semestre'
CREATE TABLE [dbo].[Semestre] (
    [id_semestre] int IDENTITY(1,1) NOT NULL,
    [f_inicio] datetime  NOT NULL,
    [f_fin] datetime  NOT NULL,
    [nombre] varchar(50)  NOT NULL,
    [feriados] varchar(50)  NOT NULL,
    [anio_academico] char(10)  NOT NULL
);
GO

-- Creating table 'Turnos'
CREATE TABLE [dbo].[Turnos] (
    [id_turno] char(1)  NOT NULL,
    [nombre] nchar(10)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [IDUsuario] int IDENTITY(1,1) NOT NULL,
    [NombreUsuario] varchar(100)  NOT NULL,
    [Pass] varchar(50)  NOT NULL,
    [TipoUsuario] char(1)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_asignatura] in table 'Asignaturas'
ALTER TABLE [dbo].[Asignaturas]
ADD CONSTRAINT [PK_Asignaturas]
    PRIMARY KEY CLUSTERED ([id_asignatura] ASC);
GO

-- Creating primary key on [id_carrera] in table 'Carreras'
ALTER TABLE [dbo].[Carreras]
ADD CONSTRAINT [PK_Carreras]
    PRIMARY KEY CLUSTERED ([id_carrera] ASC);
GO

-- Creating primary key on [id_dca] in table 'DCA'
ALTER TABLE [dbo].[DCA]
ADD CONSTRAINT [PK_DCA]
    PRIMARY KEY CLUSTERED ([id_dca] ASC);
GO

-- Creating primary key on [id_departamento] in table 'Departamentos'
ALTER TABLE [dbo].[Departamentos]
ADD CONSTRAINT [PK_Departamentos]
    PRIMARY KEY CLUSTERED ([id_departamento] ASC);
GO

-- Creating primary key on [id_dia] in table 'Dia'
ALTER TABLE [dbo].[Dia]
ADD CONSTRAINT [PK_Dia]
    PRIMARY KEY CLUSTERED ([id_dia] ASC);
GO

-- Creating primary key on [id_doc] in table 'Documentos'
ALTER TABLE [dbo].[Documentos]
ADD CONSTRAINT [PK_Documentos]
    PRIMARY KEY CLUSTERED ([id_doc] ASC);
GO

-- Creating primary key on [id_Facultad] in table 'Facultad'
ALTER TABLE [dbo].[Facultad]
ADD CONSTRAINT [PK_Facultad]
    PRIMARY KEY CLUSTERED ([id_Facultad] ASC);
GO

-- Creating primary key on [ID_G_A_P_A] in table 'Grupo_Asig_C_A'
ALTER TABLE [dbo].[Grupo_Asig_C_A]
ADD CONSTRAINT [PK_Grupo_Asig_C_A]
    PRIMARY KEY CLUSTERED ([ID_G_A_P_A] ASC);
GO

-- Creating primary key on [id_grupo] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [PK_Grupos]
    PRIMARY KEY CLUSTERED ([id_grupo] ASC);
GO

-- Creating primary key on [id_horarios] in table 'Horarios'
ALTER TABLE [dbo].[Horarios]
ADD CONSTRAINT [PK_Horarios]
    PRIMARY KEY CLUSTERED ([id_horarios] ASC);
GO

-- Creating primary key on [id_hora] in table 'Horas'
ALTER TABLE [dbo].[Horas]
ADD CONSTRAINT [PK_Horas]
    PRIMARY KEY CLUSTERED ([id_hora] ASC);
GO

-- Creating primary key on [id_lab] in table 'Laboratorios'
ALTER TABLE [dbo].[Laboratorios]
ADD CONSTRAINT [PK_Laboratorios]
    PRIMARY KEY CLUSTERED ([id_lab] ASC);
GO

-- Creating primary key on [id_litdoc] in table 'Literatura_Doc'
ALTER TABLE [dbo].[Literatura_Doc]
ADD CONSTRAINT [PK_Literatura_Doc]
    PRIMARY KEY CLUSTERED ([id_litdoc] ASC);
GO

-- Creating primary key on [Id_noti] in table 'Notificaciones'
ALTER TABLE [dbo].[Notificaciones]
ADD CONSTRAINT [PK_Notificaciones]
    PRIMARY KEY CLUSTERED ([Id_noti] ASC);
GO

-- Creating primary key on [id_PC] in table 'PC'
ALTER TABLE [dbo].[PC]
ADD CONSTRAINT [PK_PC]
    PRIMARY KEY CLUSTERED ([id_PC] ASC);
GO

-- Creating primary key on [id_pdc] in table 'PDC'
ALTER TABLE [dbo].[PDC]
ADD CONSTRAINT [PK_PDC]
    PRIMARY KEY CLUSTERED ([id_pdc] ASC);
GO

-- Creating primary key on [id_plan_asignatura] in table 'Plan_asignatura'
ALTER TABLE [dbo].[Plan_asignatura]
ADD CONSTRAINT [PK_Plan_asignatura]
    PRIMARY KEY CLUSTERED ([id_plan_asignatura] ASC);
GO

-- Creating primary key on [id_plantema] in table 'Plan_tematico'
ALTER TABLE [dbo].[Plan_tematico]
ADD CONSTRAINT [PK_Plan_tematico]
    PRIMARY KEY CLUSTERED ([id_plantema] ASC);
GO

-- Creating primary key on [id_prof_asig] in table 'Prof_Asig'
ALTER TABLE [dbo].[Prof_Asig]
ADD CONSTRAINT [PK_Prof_Asig]
    PRIMARY KEY CLUSTERED ([id_prof_asig] ASC);
GO

-- Creating primary key on [id_profesor] in table 'Profesor'
ALTER TABLE [dbo].[Profesor]
ADD CONSTRAINT [PK_Profesor]
    PRIMARY KEY CLUSTERED ([id_profesor] ASC);
GO

-- Creating primary key on [id_semestre] in table 'Semestre'
ALTER TABLE [dbo].[Semestre]
ADD CONSTRAINT [PK_Semestre]
    PRIMARY KEY CLUSTERED ([id_semestre] ASC);
GO

-- Creating primary key on [id_turno] in table 'Turnos'
ALTER TABLE [dbo].[Turnos]
ADD CONSTRAINT [PK_Turnos]
    PRIMARY KEY CLUSTERED ([id_turno] ASC);
GO

-- Creating primary key on [IDUsuario] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([IDUsuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_carrera] in table 'Asignaturas'
ALTER TABLE [dbo].[Asignaturas]
ADD CONSTRAINT [FK_Asignaturas_Carreras]
    FOREIGN KEY ([id_carrera])
    REFERENCES [dbo].[Carreras]
        ([id_carrera])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignaturas_Carreras'
CREATE INDEX [IX_FK_Asignaturas_Carreras]
ON [dbo].[Asignaturas]
    ([id_carrera]);
GO

-- Creating foreign key on [id_plan_asignatura] in table 'Asignaturas'
ALTER TABLE [dbo].[Asignaturas]
ADD CONSTRAINT [FK_Asignaturas_Plan_asignatura]
    FOREIGN KEY ([id_plan_asignatura])
    REFERENCES [dbo].[Plan_asignatura]
        ([id_plan_asignatura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignaturas_Plan_asignatura'
CREATE INDEX [IX_FK_Asignaturas_Plan_asignatura]
ON [dbo].[Asignaturas]
    ([id_plan_asignatura]);
GO

-- Creating foreign key on [id_asignatura] in table 'Literatura_Doc'
ALTER TABLE [dbo].[Literatura_Doc]
ADD CONSTRAINT [FK_Literatura_Doc_Asignaturas]
    FOREIGN KEY ([id_asignatura])
    REFERENCES [dbo].[Asignaturas]
        ([id_asignatura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Literatura_Doc_Asignaturas'
CREATE INDEX [IX_FK_Literatura_Doc_Asignaturas]
ON [dbo].[Literatura_Doc]
    ([id_asignatura]);
GO

-- Creating foreign key on [id_asignatura] in table 'Plan_tematico'
ALTER TABLE [dbo].[Plan_tematico]
ADD CONSTRAINT [FK_Plan_tematico_Asignaturas]
    FOREIGN KEY ([id_asignatura])
    REFERENCES [dbo].[Asignaturas]
        ([id_asignatura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Plan_tematico_Asignaturas'
CREATE INDEX [IX_FK_Plan_tematico_Asignaturas]
ON [dbo].[Plan_tematico]
    ([id_asignatura]);
GO

-- Creating foreign key on [id_asignatura] in table 'Prof_Asig'
ALTER TABLE [dbo].[Prof_Asig]
ADD CONSTRAINT [FK_Prof_Asig_Asignaturas]
    FOREIGN KEY ([id_asignatura])
    REFERENCES [dbo].[Asignaturas]
        ([id_asignatura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Prof_Asig_Asignaturas'
CREATE INDEX [IX_FK_Prof_Asig_Asignaturas]
ON [dbo].[Prof_Asig]
    ([id_asignatura]);
GO

-- Creating foreign key on [id_Facultad] in table 'Carreras'
ALTER TABLE [dbo].[Carreras]
ADD CONSTRAINT [FK_Carreras_Facultad]
    FOREIGN KEY ([id_Facultad])
    REFERENCES [dbo].[Facultad]
        ([id_Facultad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Carreras_Facultad'
CREATE INDEX [IX_FK_Carreras_Facultad]
ON [dbo].[Carreras]
    ([id_Facultad]);
GO

-- Creating foreign key on [id_carrera] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupos_Carreras]
    FOREIGN KEY ([id_carrera])
    REFERENCES [dbo].[Carreras]
        ([id_carrera])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupos_Carreras'
CREATE INDEX [IX_FK_Grupos_Carreras]
ON [dbo].[Grupos]
    ([id_carrera]);
GO

-- Creating foreign key on [id_carrera] in table 'Laboratorios'
ALTER TABLE [dbo].[Laboratorios]
ADD CONSTRAINT [FK_Laboratorios_Carreras]
    FOREIGN KEY ([id_carrera])
    REFERENCES [dbo].[Carreras]
        ([id_carrera])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Laboratorios_Carreras'
CREATE INDEX [IX_FK_Laboratorios_Carreras]
ON [dbo].[Laboratorios]
    ([id_carrera]);
GO

-- Creating foreign key on [id_departamento] in table 'DCA'
ALTER TABLE [dbo].[DCA]
ADD CONSTRAINT [FK_DCA_Departamentos]
    FOREIGN KEY ([id_departamento])
    REFERENCES [dbo].[Departamentos]
        ([id_departamento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DCA_Departamentos'
CREATE INDEX [IX_FK_DCA_Departamentos]
ON [dbo].[DCA]
    ([id_departamento]);
GO

-- Creating foreign key on [id_Facultad] in table 'Departamentos'
ALTER TABLE [dbo].[Departamentos]
ADD CONSTRAINT [FK_Departamentos_Facultad]
    FOREIGN KEY ([id_Facultad])
    REFERENCES [dbo].[Facultad]
        ([id_Facultad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Departamentos_Facultad'
CREATE INDEX [IX_FK_Departamentos_Facultad]
ON [dbo].[Departamentos]
    ([id_Facultad]);
GO

-- Creating foreign key on [id_departamento] in table 'Profesor'
ALTER TABLE [dbo].[Profesor]
ADD CONSTRAINT [FK_Profesor_Departamentos]
    FOREIGN KEY ([id_departamento])
    REFERENCES [dbo].[Departamentos]
        ([id_departamento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Profesor_Departamentos'
CREATE INDEX [IX_FK_Profesor_Departamentos]
ON [dbo].[Profesor]
    ([id_departamento]);
GO

-- Creating foreign key on [id_dia] in table 'Horarios'
ALTER TABLE [dbo].[Horarios]
ADD CONSTRAINT [FK_Horarios_Dia]
    FOREIGN KEY ([id_dia])
    REFERENCES [dbo].[Dia]
        ([id_dia])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Horarios_Dia'
CREATE INDEX [IX_FK_Horarios_Dia]
ON [dbo].[Horarios]
    ([id_dia]);
GO

-- Creating foreign key on [ID_G_A_P_A] in table 'Documentos'
ALTER TABLE [dbo].[Documentos]
ADD CONSTRAINT [FK_Documentos_Grupo_Asig_C_A]
    FOREIGN KEY ([ID_G_A_P_A])
    REFERENCES [dbo].[Grupo_Asig_C_A]
        ([ID_G_A_P_A])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Documentos_Grupo_Asig_C_A'
CREATE INDEX [IX_FK_Documentos_Grupo_Asig_C_A]
ON [dbo].[Documentos]
    ([ID_G_A_P_A]);
GO

-- Creating foreign key on [id_grupo] in table 'Grupo_Asig_C_A'
ALTER TABLE [dbo].[Grupo_Asig_C_A]
ADD CONSTRAINT [FK_Grupo_Asig_C_A_Grupos]
    FOREIGN KEY ([id_grupo])
    REFERENCES [dbo].[Grupos]
        ([id_grupo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Asig_C_A_Grupos'
CREATE INDEX [IX_FK_Grupo_Asig_C_A_Grupos]
ON [dbo].[Grupo_Asig_C_A]
    ([id_grupo]);
GO

-- Creating foreign key on [id_prof_asig] in table 'Grupo_Asig_C_A'
ALTER TABLE [dbo].[Grupo_Asig_C_A]
ADD CONSTRAINT [FK_Grupo_Asig_C_A_Prof_Asig]
    FOREIGN KEY ([id_prof_asig])
    REFERENCES [dbo].[Prof_Asig]
        ([id_prof_asig])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Asig_C_A_Prof_Asig'
CREATE INDEX [IX_FK_Grupo_Asig_C_A_Prof_Asig]
ON [dbo].[Grupo_Asig_C_A]
    ([id_prof_asig]);
GO

-- Creating foreign key on [ID_G_A_P_A] in table 'Horarios'
ALTER TABLE [dbo].[Horarios]
ADD CONSTRAINT [FK_Horarios_Grupo_Asig_C_A]
    FOREIGN KEY ([ID_G_A_P_A])
    REFERENCES [dbo].[Grupo_Asig_C_A]
        ([ID_G_A_P_A])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Horarios_Grupo_Asig_C_A'
CREATE INDEX [IX_FK_Horarios_Grupo_Asig_C_A]
ON [dbo].[Horarios]
    ([ID_G_A_P_A]);
GO

-- Creating foreign key on [id_semestre] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupos_Semestre]
    FOREIGN KEY ([id_semestre])
    REFERENCES [dbo].[Semestre]
        ([id_semestre])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupos_Semestre'
CREATE INDEX [IX_FK_Grupos_Semestre]
ON [dbo].[Grupos]
    ([id_semestre]);
GO

-- Creating foreign key on [id_turno] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupos_Turnos]
    FOREIGN KEY ([id_turno])
    REFERENCES [dbo].[Turnos]
        ([id_turno])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupos_Turnos'
CREATE INDEX [IX_FK_Grupos_Turnos]
ON [dbo].[Grupos]
    ([id_turno]);
GO

-- Creating foreign key on [id_hora] in table 'Horarios'
ALTER TABLE [dbo].[Horarios]
ADD CONSTRAINT [FK_Horarios_Horas]
    FOREIGN KEY ([id_hora])
    REFERENCES [dbo].[Horas]
        ([id_hora])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Horarios_Horas'
CREATE INDEX [IX_FK_Horarios_Horas]
ON [dbo].[Horarios]
    ([id_hora]);
GO

-- Creating foreign key on [IDUsuario] in table 'Notificaciones'
ALTER TABLE [dbo].[Notificaciones]
ADD CONSTRAINT [FK_Notificaciones_Usuarios]
    FOREIGN KEY ([IDUsuario])
    REFERENCES [dbo].[Usuarios]
        ([IDUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Notificaciones_Usuarios'
CREATE INDEX [IX_FK_Notificaciones_Usuarios]
ON [dbo].[Notificaciones]
    ([IDUsuario]);
GO

-- Creating foreign key on [id_prof_asig] in table 'PC'
ALTER TABLE [dbo].[PC]
ADD CONSTRAINT [FK_PC_Prof_Asig]
    FOREIGN KEY ([id_prof_asig])
    REFERENCES [dbo].[Prof_Asig]
        ([id_prof_asig])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PC_Prof_Asig'
CREATE INDEX [IX_FK_PC_Prof_Asig]
ON [dbo].[PC]
    ([id_prof_asig]);
GO

-- Creating foreign key on [id_prof_asig] in table 'PDC'
ALTER TABLE [dbo].[PDC]
ADD CONSTRAINT [FK_PDC_Prof_Asig]
    FOREIGN KEY ([id_prof_asig])
    REFERENCES [dbo].[Prof_Asig]
        ([id_prof_asig])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PDC_Prof_Asig'
CREATE INDEX [IX_FK_PDC_Prof_Asig]
ON [dbo].[PDC]
    ([id_prof_asig]);
GO

-- Creating foreign key on [id_profesor] in table 'Prof_Asig'
ALTER TABLE [dbo].[Prof_Asig]
ADD CONSTRAINT [FK_Prof_Asig_Profesor]
    FOREIGN KEY ([id_profesor])
    REFERENCES [dbo].[Profesor]
        ([id_profesor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Prof_Asig_Profesor'
CREATE INDEX [IX_FK_Prof_Asig_Profesor]
ON [dbo].[Prof_Asig]
    ([id_profesor]);
GO

-- Creating foreign key on [IDUsuario] in table 'Profesor'
ALTER TABLE [dbo].[Profesor]
ADD CONSTRAINT [FK_Profesor_Usuarios]
    FOREIGN KEY ([IDUsuario])
    REFERENCES [dbo].[Usuarios]
        ([IDUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Profesor_Usuarios'
CREATE INDEX [IX_FK_Profesor_Usuarios]
ON [dbo].[Profesor]
    ([IDUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------