-- Consulta 9: ¿Cuál es el ritmo cardíaco de un usuario entre 07:30 pm y 08:00 pm UTC (previo a sus horas de sueño)?
SELECT fecha_hms, ppm
FROM ritmo_cardiaco
WHERE id = 4558609924
  AND fecha_hms >= '2016-04-13T07:30:00Z'
  AND fecha_hms <  '2016-04-13T08:00:00Z'
LIMIT 200;