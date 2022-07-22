create database ud1405;

use ud1405;

drop table if exists cajas;
drop table if exists Almacenes;

Create table Almacenes (
codigo int auto_increment not null,
lugar varchar(100),
capacidad int,
PRIMARY KEY (codigo)
);

create table cajas(
numReferencia char(5),
Contenido varchar(100),
Valor int,
Almacen int,
Primary key(numReferencia),
constraint fk_codigoAlmacenes FOREIGN KEY (Almacen ) 
REFERENCES Almacenes (codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
