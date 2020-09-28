--Consulta para agregar campo promedio a tabla alumno
UPDATE alumno SET promedio = ( SELECT 
AVG(inscripcion.nota1*.35+inscripcion.nota2*.35+inscripcion.nota3*.30) FROM inscripcion
INNER JOIN alumno
ON alumno.cod_a = inscripcion.cod_a
INNER JOIN materia
ON materia.cod_m= inscripcion.cod_m
WHERE inscripcion.cod_a = 5)
WHERE alumno.cod_a= 5;

