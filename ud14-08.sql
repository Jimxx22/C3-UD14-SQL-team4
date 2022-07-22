create database ud1408;
use ud1408;

drop table if exists Piezas;
drop table if exists Proveedores;
drop table if exists Suministra;

create table Piezas(
codigo int auto_increment not null,
nombre varchar(100),
Primary key (codigo)
);

Create table Proveedores (
id char(4),
nombre varchar(100),
PRIMARY KEY (id)
);

create table Suministra (
codigoPieza int,
idProveedor char(4),
precio int,
primary key (codigoPieza, idProveedor),
constraint fk_codigoPieza FOREIGN KEY (codigoPieza  ) 
REFERENCES Piezas (codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_codigoProveedores FOREIGN KEY (idProveedor) 
REFERENCES Proveedores (id)
ON DELETE CASCADE ON UPDATE CASCADE
);
