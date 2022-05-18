CREATE DATABASE tp_bd2;
USE tp_bd2;

create table RRHH(
legajo int not null primary key,
nombre varchar(255)
);

create table Proyectos(
cliente varchar (255) not null,
proyecto varchar (255) not null PRIMARY key,
centro_costos varchar(255),
centro_facturacion varchar(255)
);

create table Participantes(
legajo int not null,
proyecto varchar (255) not null,
rol varchar (255),
horas_mensuales int,
constraint primary key (legajo,proyecto),
constraint foreign key (legajo) references RRHH (legajo),
constraint foreign key (proyecto) references Proyectos (proyecto)
);