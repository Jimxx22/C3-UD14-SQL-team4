Create database ud1412;
Use ud1412;

drop table if exists Alumnos;
drop table if exists Cursos;
drop table if exists Profesores;

create table Profesores (
nombre varchar(25) unique,
apellido1 varchar(25),
apellido2 varchar(25),
dni varchar(9) not null,
direccion varchar(100),
titulo varchar (50),
gana double(10,4) not null,
primary key(dni)
);

Create table Cursos (
nombreCurso varchar(255) unique,
codCurso varchar(10),
dniProfesor varchar(8),
maximoAlumnos int,
fecha_Ini date,
fecha_Fin date,
numHoras int not null,
check (fecha_fin> fecha_ini),
PRIMARY KEY (codCurso),
constraint fk_dniProfesor FOREIGN KEY (dniProfesor) 
REFERENCES Profesores (dni)
ON DELETE CASCADE ON UPDATE CASCADE
);

Create table Alumnos(
nombre varchar(25),
apellido1 varchar(50),
apellido2 varchar(50),
dni varchar(9),
dirección varchar(255),
sexo char(1),
fechaNacimiento date,
curso varchar(10) not null,
check(sexo='M'  or sexo='H'),
Primary key(dni),
constraint fk_AlumnoCurso FOREIGN KEY (curso ) 
REFERENCES Cursos (codCurso)
ON DELETE CASCADE ON UPDATE CASCADE
);

