create database ud1407;
use ud1407;

drop table if exists Directores;
drop table if exists Despachos;

create table Despachos (
numero int not null,
capacidad int,
primary key (numero)
);

Create table Directores(
dni varchar(8),
nomApels varchar(255),
dniJefe varchar(8),
despacho int,
primary key(dni),
constraint fk_numeroDespacho FOREIGN KEY (despacho  ) 
REFERENCES Despachos (numero)
ON DELETE CASCADE ON UPDATE CASCADE
);

Alter table Directores add constraint fk_dniJefeDirectores FOREIGN KEY (dniJefe) 
REFERENCES Directores(dni)
ON DELETE CASCADE ON UPDATE CASCADE;
