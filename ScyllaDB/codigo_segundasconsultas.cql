
#6
SELECT
SUM(distancia_total) AS Distancia_Semanal
FROM datos.actividad_diaria
WHERE
id = 8253242879
AND fecha >= '2016-04-10'
AND fecha <= '2016-04-16';

#7
SELECT id, date, weight_kg 
FROM peso_eventual 
WHERE Id = 8877689391 
AND date >= '2016-04-30'
AND date <= '2016-05-07';

#8
SELECT id, date, bmi as indice_masa_corporal 
FROM peso_eventual 
WHERE Id = 8877689391 
AND date >= '2016-04-30'
AND date <= '2016-05-07';


#9
SELECT id, time, value
FROM rc_segundos
WHERE id = 2022484408
AND time >= '2016-04-12 8:00:00'
AND time <= '2016-04-12 9:00:00';


#10
SELECT id, AVG(total_minutes_asleep) AS promedio_minutos_dormido
FROM sueno_diario
WHERE id = 4702921684
AND date >= '2016-05-01'
AND date <= '2016-05-31'
