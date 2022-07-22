Create database ud1216;
use ud1216;

Drop table if exists Mensajes;
Drop table if exists Retweets;
Drop table if exists MeGustas;
Drop table if exists Multimedia;
Drop table if exists Posts;
Drop table if exists Sigue;
Drop table if exists Usuarios;

Create table Usuarios(
id varchar(20) not null,
userName varchar(25) not null,
nombre varchar(25),
apellidos varchar (50),
descripcion varchar(200),
foto text,
fecha_nacimiento date,
fecha_creacion date,
followers int,
_following int,
Primary key(id));

Create table Sigue(
id int auto_increment not null,
idUsuarioFollowed varchar(20),
idUsuarioFollower varchar(20),
Primary key(id),
foreign key(idUsuarioFollowed )
references Usuarios(id)
on delete cascade on update cascade,
foreign key(idUsuarioFollower )
references Usuarios(id)
on delete cascade on update cascade
);

Create table Posts (
id int auto_increment not null,
fecha date,
text varchar(200),
likes int,
rts int,
idUsuario varchar(20),
PRIMARY KEY (id),
FOREIGN KEY (idUsuario) references Usuarios (id) 
on delete cascade on update cascade
);

Create table Multimedia( 
id int,
multimedia text,
primary key(id),
foreign key(id)
references Posts(id)
on delete cascade on update cascade);


Create table Mensajes (id int auto_increment not null,
idEnvia varchar(20),
idRecive varchar(20),
Contenido varchar(255),
Primary key(id),
Foreign key(idEnvia)
References Usuarios(id)
on delete cascade on update cascade,
Foreign key (idRecive)
References Usuarios(id)
On delete cascade on update cascade
);

Create table Retweets (
id int auto_increment not null,
idUsuario varchar(20),
idPost int,
Primary key (id),
Foreign key(idUsuario)
References Usuarios(id)
on delete cascade on update cascade,
Foreign key (idPost)
References Posts(id)
On delete cascade on update cascade
);

Create table MeGustas (
id int auto_increment not null,
idUsuario varchar(20),
idPost int,
PRIMARY KEY (id),
FOREIGN KEY (idUsuario) references Usuarios(id)
on delete cascade on update cascade,
FOREIGN KEY (idPost) references Posts(id)
on delete cascade on update cascade
);
