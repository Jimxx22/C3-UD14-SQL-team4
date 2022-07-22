Create database ud1406;
Use ud1406;

Drop table if exists Salas;
Drop table if exists Peliculas;

Create table Peliculas(
codigo int auto_increment not null,
nombre varchar(100),
calificacionEdad int,
PRIMARY KEY (codigo)
);

create table Salas (
codigo int auto_increment not null,
nombre varchar(100),
pelicula int,
primary key (codigo),
constraint fk_codigoPeliculas FOREIGN KEY (pelicula ) 
REFERENCES Peliculas (codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
