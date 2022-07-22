Create database ud1404;
Use ud1404;
drop table if exists Departamentos;
drop table if exists Empleados;

create table Departamentos(
codigo int,
nombre varchar(100),
presupuesto int,
Primary key(codigo)
);

create table Empleados (
DNI varchar(9) not null,
nombre varchar (100),
apellidos varchar(255),
departamento int,
primary key (DNI),
constraint fk_codigoDepartamento FOREIGN KEY (departamento) 
REFERENCES Departamentos(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
