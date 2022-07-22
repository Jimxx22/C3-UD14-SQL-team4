Create database ud1211;

Use ud1211;

Create table Pais(
id int auto_increment not null,
nombre varchar(40),
extension double(6,3),
poblacion int,
PRIMARY KEY (id)
);

Create table Accidente(
 id int auto_increment not null,
pHorizontal  double(10,4),
pVertical double,
nombre varchar(30),
PRIMARY KEY (id)
);

Create table Lago ( 
id int,
longitud double(10,4),
primary key(id),
foreign key(id)
references Accidente(id)
on delete cascade on update cascade);

Create table Montana ( 
id int,
altura double(10,4),
primary key(id),
foreign key(id)
references Accidente(id)
on delete cascade on update cascade);

Create table Rio ( 
id int,
longitud double(10,4),
primary key(id),
foreign key(id)
references Accidente(id)
on delete cascade on update cascade);

Create table Localidad(
id int auto_increment not null,
nombre varchar(50),
primary key (id));

Create table Estar(
id int auto_increment not null,
idAccidente int,
idPais int,
primary key (id),
foreign key(idAccidente) 
references Accidente(id)
on delete cascade on update cascade,
foreign key(idPais) 
references Pais(id)
on delete cascade on update cascade);

Create table PasarPor(
id int auto_increment not null,
idRio int,
idLocalidad int,
primary key (id),
foreign key(idRio) 
references Rio(id)
on delete cascade on update cascade,
foreign key(idLocalidad) 
references Localidad(id)
on delete cascade on update cascade);
