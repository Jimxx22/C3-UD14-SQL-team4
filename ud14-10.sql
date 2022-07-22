Create database ud1410;
Use ud1410;

Drop table if exists Venta;
Drop table if exists Cajeros;
Drop table if exists Productos;
Drop table if exists Maquinas_Registradoras;

Create table Cajeros(
codigo int auto_increment not null,
nomApels varchar(255),
Primary key(codigo)
);

Create table Maquinas_Registradoras(
codigo int auto_increment not null,
piso int,
Primary key(codigo)
);

Create table Productos(
codigo int auto_increment not null,
nom varchar(100),
precio int,
Primary key(codigo)
);

create table Venta(
cajero int not null,
maquina int not null,
producto int not null,
primary key (cajero, maquina, producto),
constraint fk_cajero FOREIGN KEY (cajero) 
REFERENCES Cajeros (codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_maquina FOREIGN KEY (maquina) 
REFERENCES Maquinas_Registradoras (codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_producto FOREIGN KEY (producto) 
REFERENCES Productos (codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
