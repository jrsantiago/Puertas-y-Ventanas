CREATE TABLE [dbo].[Clientes] (
    [ClienteId] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]    VARCHAR (160) NULL,
    [Telefono]  VARCHAR (15)  NULL,
    [Cedula]    VARCHAR (14)  NULL,
    [Direccion] VARCHAR (50)  NULL,
    [Email]     VARCHAR (40)  NULL,
    PRIMARY KEY CLUSTERED ([ClienteId] ASC)
);

go
CREATE TABLE [dbo].[Usuarios] (
    [UsuariosId]  INT           IDENTITY (1, 1) NOT NULL,
    [Contrasena]  VARCHAR (150) NULL,
    [UserName]    VARCHAR (100) NULL,
    [Nombre]      VARCHAR (100) NULL,
    [Restriccion] INT           NULL,
    [Imagenes]    VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([UsuariosId] ASC)
);
go
CREATE TABLE [dbo].[Materiales] (
    [MaterialId] INT          IDENTITY (1, 1) NOT NULL,
    [Detalle]    VARCHAR (70) NULL,
    [Unidad]     VARCHAR (25) NULL,
    [Cantidad]   FLOAT (53)   NULL,
    [Precio]     FLOAT (53)   NULL,
    PRIMARY KEY CLUSTERED ([MaterialId] ASC)
);
go
CREATE TABLE [dbo].[Productos] (
    [ProductoId]  INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (150) NULL,
    [MinimoPie]   FLOAT (53)    NULL,
    [Pie]         FLOAT (53)    NULL,
    [PieM]        FLOAT (53)    NULL,
    [MaximoPie]   FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([ProductoId] ASC)
);
go
CREATE TABLE [dbo].[ProductosDetalle] (
    [ProductosDetalleId] INT IDENTITY (1, 1) NOT NULL,
    [ProductoId]         INT NULL,
    [MaterialId]         INT NULL,
    [Asociacion]         INT NULL,
    PRIMARY KEY CLUSTERED ([ProductosDetalleId] ASC),
    FOREIGN KEY ([ProductoId]) REFERENCES [dbo].[Productos] ([ProductoId]),
    FOREIGN KEY ([MaterialId]) REFERENCES [dbo].[Materiales] ([MaterialId])
);

go
CREATE TABLE [dbo].[Proyectos] (
    [ProyectoId] INT        IDENTITY (1, 1) NOT NULL,
    [ClienteId]  INT        NULL,
    [Fecha]      DATE       NULL,
    [Total]      FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([ProyectoId] ASC),
    FOREIGN KEY ([ClienteId]) REFERENCES [dbo].[Clientes] ([ClienteId])
);
go
CREATE TABLE [dbo].[ProyectosDetalle] (
    [ProyectoDetalleId] INT        IDENTITY (1, 1) NOT NULL,
    [ProyectoId]        INT        NULL,
    [ProductoId]        INT        NULL,
    [Pie]               FLOAT (53) NULL,
    [Ancho]             FLOAT (53) NULL,
    [Altura]            FLOAT (53) NULL,
    [Cantidad]          INT        NULL,
    [Precio]            FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([ProyectoDetalleId] ASC),
    FOREIGN KEY ([ProyectoId]) REFERENCES [dbo].[Proyectos] ([ProyectoId]),
    FOREIGN KEY ([ProductoId]) REFERENCES [dbo].[Productos] ([ProductoId])
);

go
CREATE TABLE [dbo].[ProyectoPresupuesto] (
    [ProyectoPresupuestoId] INT        IDENTITY (1, 1) NOT NULL,
    [ProyectoId]            INT        NULL,
    [MaterialId]            INT        NULL,
    [Cantidad]              FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([ProyectoPresupuestoId] ASC),
    FOREIGN KEY ([ProyectoId]) REFERENCES [dbo].[Proyectos] ([ProyectoId]),
    FOREIGN KEY ([MaterialId]) REFERENCES [dbo].[Materiales] ([MaterialId])
);

