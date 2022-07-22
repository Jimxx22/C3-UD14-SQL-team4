Create database ud1409;
Use ud1409;

Drop table if exists Asignados_a;
Drop table if exists Cientificos;
Drop table if exists Proyecto;

create table Proyecto (
id char(4) not null,
nombre nvarchar(25),
horas int,
primary key (id)
);

Create table Cientificos (
dni varchar(8),
nombreApels varchar(255),
PRIMARY KEY (dni)
);

Create table Asignados_a(
cientifico varchar(8),
proyecto char(4),
primary key (cientifico , proyecto),
constraint fk_dniCientifico FOREIGN KEY (cientifico) 
REFERENCES Cientificos (dni)
ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_idProyecto FOREIGN KEY (proyecto) 
REFERENCES Proyecto (id)
ON DELETE CASCADE ON UPDATE CASCADE);
