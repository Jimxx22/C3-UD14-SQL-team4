Create database UD1403;
Use UD1403;

Drop table if exists Fabricantes;
drop table if exists Articulos;

Create table Fabricantes(
codigo int auto_increment not null,
nombre varchar(100),
Primary key(codigo)
);

Create table Articulos(
codigo int auto_increment not null,
nombre varchar (100),
precio int,
fabricante int,
Primary key (codigo),
constraint fk_codigoFabricantes FOREIGN KEY (fabricante) 
REFERENCES Fabricantes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
