create database ud1204;
use ud1204;

create table Guerra (id int auto_increment not null, 
nombre varchar(50), 
fecha_in date not null, 
fecha_fin date,
primary key (id));

create table Bando (id int auto_increment not null, 
ganador boolean, 
primary key (id));

create table Pais (id int auto_increment not null, 
nombre varchar(50), 
primary key (id));

create table Independencia (id int auto_increment not null, 
fecha_in date not null, 
fecha_fin date, 
idPais int not null,
primary key (id),
foreign key(idPais) 
references Pais(id)
on delete cascade on update cascade);

create table Combatir (id int auto_increment not null, 
primary key (id),
idGuerra int not null,
idBando int not null,
foreign key(idGuerra) 
references Guerra(id)
on delete cascade on update cascade,
foreign key(idbando) 
references Bando(id)
on delete cascade on update cascade);

create table Pertenecer (id int auto_increment not null, 
fecha_en date,
fecha_sal date,
idBando int not null,
idPais int not null,
primary key (id),
foreign key(idBando) 
references Bando(id)
on delete cascade on update cascade,
foreign key(idPais) 
references Pais(id)
on delete cascade on update cascade);
