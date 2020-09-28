--Tabla Alumno

/*create table Alumno(
cod_a serial primary key,
	nom_a varchar(20) not null unique,
	dir_a varchar(30) not null,
	tel_a varchar(20) not null
	
);*/

/*insert into Alumno (nom_a,dir_a,tel_a) values ('Pedro','Cra 79 #69-16','2243128'),('Luz Angela','Cra 64 # 24-47','3153437'),
('Gerardo','Cl 144 # 12-54','4436402'),('Olga','Cra 69B #24Bis-16','7222568'),('Carlos','Cra 27B #5-19','2777346');*/

--select * from alumno

--Tabla Materia

/*create table materia(
cod_m serial primary key,
	nom_m varchar(30) not null unique,
	ih integer not null
	
);*/

--insert into materia (nom_m,ih) values ('SEMINARIO I','2'),('HERRAMIENTAS SIG I','3'), ('BDDE','4'), ('PERSEPCION REMOTA','8'), ('SIG','8');

--Tabla Bibliografia

/*create table bibliografia(
cod_m integer not null,
	isbn varchar(12),
	FOREIGN KEY (cod_m) REFERENCES materia(cod_m),
	FOREIGN KEY (isbn) REFERENCES ejemplar(isbn)
	
);*/

/*insert into bibliografia (cod_m,isbn) values ('1','9999-8888'),
('1','9999-8887'),
('1','9999-8886'),
('2','9999-8888'),
('2','9999-8887'),
('2','9999-8886'),
('2','9999-8885'),
('2','9999-8884'),
('5','9999-8884'),
('5','9999-8886'),
('5','9999-8888');*/



/*create table inscripcion(
cod_a integer not null,
	cod_m integer not null,
	grupo varchar(2) not null,
	nota1 decimal not null,
	nota2 decimal not null,
	nota3 decimal not null,
	FOREIGN KEY (cod_a) REFERENCES alumno(cod_a),
	FOREIGN KEY (cod_m) REFERENCES materia(cod_m)
	
);*/

/*insert into inscripcion (cod_a, cod_m, grupo, nota1, nota2, nota3) values
('1','1','1','3.2','4.5','3.8'),('1','2','1','2.5','4.0','3.9'),('1','4','1','3.0','3.2','3.5'),('1','5','1','4.0','4.2','4.0'),
('2','1','1','4.2','4.0','4.8'),('2','2','1','1.5','4.9','4.9'),('2','3','1','3.0','4.4','4.5'),('2','4','1','5.0','3.6','4.5'),
('2','5','1','3.0','4.8','3.0'),('3','1','1','2.2','4.0','4.8'),('3','2','1','1.5','4.5','4.9'),('3','4','1','2.0','3.4','4.5'),
('3','5','1','5.0','4.5','4.0'),('4','1','1','3.0','3.5','4.8'),('4','2','1','2.0','3.0','4.9'),('4','3','1','2.0','3.2','4.5'),
('4','4','1','3.0','3.2','4.5'),('4','5','1','4.0','4.2','4.0'),('5','2','1','3.5','4.0','2.9'),('5','3','1','2.0','3.2','3.5'),
('5','4','1','1.0','4.2','4.5'),('5','5','1','5.0','3.2','5.0')

;*/
--select * from inscripcion

--Tabla Ejemplar

/*create table ejemplar(
cod_I serial primary key,
	isbn varchar(12) unique
);*/

--insert into ejemplar (isbn) values ('9999-8884'),('9999-8885'), ('9999-8886'), ('9999-8887'), ('9999-8888');

--Tabla Prestamo

/*create table prestamo(
cod_a integer not null,
	cod_I integer not null,
	f_prestamo date,
	f_entrega date,
	
	FOREIGN KEY (cod_a) REFERENCES alumno(cod_a),
	FOREIGN KEY (cod_I) REFERENCES ejemplar(cod_I)
	
);*/
insert into prestamo (cod_a, cod_I, f_prestamo, f_entrega) values
('2','2','2018-03-10','2018-09-15'),('2','1','2018-11-10','2018-11-15'),
('3','3','2018-11-10','2018-11-15'),('4','4','2019-05-10','2019-06-15'),
('5','5','2019-03-10','2019-07-19');


/*insert into prestamo (cod_a, cod_I, f_prestamo) values('5','1','2019-03-10'),
('5','2','2019-09-10');*/

--select * from prestamo

--Tabla Libro

/*create table libro(
ejm integer not null,
	isbn varchar (12),
	titulo varchar(30) not null,
	autor varchar(20) not null,
	FOREIGN KEY (isbn) REFERENCES ejemplar(isbn),
	PRIMARY KEY (ejm)
	
);*/

/*insert into libro (ejm, isbn, titulo, autor) values
('5','9999-8888','Principles of GIS','Burrouth'),
('4','9999-8887','GIS and Science','Goodchild'),
('3','9999-8886','Geo-information','Lemmens'),
('2','9999-8885','The Desing of GIS','Harmon'),
('1','9999-8884','Introduction to Gis','ITC');*/


