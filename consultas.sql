--1)Listado de materias que ve el alumno Pedro*****

SELECT materia.nom_m AS Materias_Alumno_Pedro
FROM alumno
INNER JOIN inscripcion 
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m
WHERE inscripcion.cod_a = 1
ORDER BY materia.cod_m;

--2)Listado de alumnos que ven la materia BDDE*****

SELECT  alumno.nom_a AS Alumnos_materia_BDDE
FROM alumno
INNER JOIN inscripcion 
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m
WHERE materia.nom_m = 'BDDE'
ORDER BY alumno.nom_a;

--3)Titulo de los libros que son bibliografia de la materia SIG

SELECT libro.titulo AS libros_bibliografía_materia_sig
FROM libro
INNER JOIN bibliografia
ON libro.isbn = bibliografia.isbn
WHERE bibliografia.cod_m = 5
ORDER BY libro.titulo;

--4) Nombre de alumnos que no han entregado el libro geo-informacion

SELECT alumno.nom_a, libro.titulo
FROM alumno
INNER JOIN prestamo
ON alumno.cod_a = prestamo.cod_a
INNER JOIN libro
ON libro.ejm = prestamo.cod_I
INNER JOIN ejemplar
ON ejemplar.cod_I = prestamo.cod_I
WHERE  prestamo.f_entrega is null and libro.titulo = 'Geo-information';

--5)Listado de libros que se han prestado y se han devuelto y el numero de prestamos

SELECT libro.titulo , COUNT(prestamo.cod_I) as numero_Prestamos
FROM prestamo
INNER JOIN libro
ON prestamo.cod_I = libro.ejm
INNER JOIN ejemplar
ON libro.ejm = ejemplar.cod_I
WHERE f_entrega is not null
GROUP BY libro.titulo, prestamo.cod_I
ORDER BY libro.titulo; 

--6)Total de alumnos que ven la materia BDDE*****

SELECT COUNT(alumno.cod_a) AS Total_Alumnos_Materia_PercepcionR
FROM alumno
INNER JOIN inscripcion 
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m
WHERE materia.nom_m = 'PERCEPCION REMOTA';

--7)Listado que contenga nombre alumno, materia y nota definitiva*****

SELECT alumno.nom_a,  materia.nom_m, inscripcion.nota1*.35+inscripcion.nota2*.35+inscripcion.nota3*.30 AS notaFinal
FROM alumno
INNER JOIN inscripcion 
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m;

--8)Nota promedio de cada alumno: Nombre Alumno y nota promedio*****

SELECT alumno.nom_a,  AVG (inscripcion.nota1*.35+inscripcion.nota2*.35+inscripcion.nota3*.30)  AS promedioAlumno
FROM alumno
INNER JOIN inscripcion 
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m
GROUP BY alumno.cod_a;

--9) Los datos del alumno cuyo promedio de notas sea superior a 3.9

SELECT *
FROM alumno
WHERE alumno.promedio > 3.9;

--10) El alumno del grupo que mejor promedio tiene.

SELECT * FROM alumno
WHERE promedio =(SELECT MAX(promedio) FROM alumno); 










































