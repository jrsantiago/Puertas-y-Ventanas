create table ProyectosDetalle(
ProyectoDetalleId int primary key identity,
ProyectoId int references Proyectos(ProyectoId),
ProductoId int references Productos(ProductoId),
Pie float,
Ancho float,
Altura float,
Cantidad int,
Precio float,

);