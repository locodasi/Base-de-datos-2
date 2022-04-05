create table RRHH(
legajo int not null primary key,
nombre varchar(255)
);

create table Proyectos(
cliente varchar (255) not null,
proyecto varchar (255) not null primary key,
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



INSERT INTO rrhh() VALUES (1234,"Lucas"),(2222,"Marcos"),(3113,"Esther"),(1111,"Micaela"),(22,"Gladys"),(6677,"Juan"),
(9980,"Moshe"),(1212,"Manuel"),(9999,"Nicolas"),(8787,"Susana");

INSERT INTO proyectos() VALUES ("Apple","Red social","Cordoba 1222","Santa fe 23"),("Uruguay","Base de datos covid","Lavalle 345","Cordoba 2000"),
("Monster Inc","Maquina extractora de gritos","Panama 233","Viamonte 1200");

INSERT INTO participantes () VALUES (1234, "Red social","Tester",40),(2222, "Red social","Tester",30),(3113, "Red social","Developer",40),
(1111, "Base de datos covid","Tester",40),(22, "Base de datos covid","developer",60),(6677, "Base de datos covid","Diseñador",40),
(9980,"Maquina extractora de gritos","Programador",25),(1212,"Maquina extractora de gritos","Programador",105),
(9999,"Maquina extractora de gritos","Developer",98),(8787,"Maquina extractora de gritos","Marketing",65),
(1111, "Red social","developer",60),(6677, "Red social","developer",60),(1234, "Base de datos covid","developer",60),
(2222, "Base de datos covid","developer",60);