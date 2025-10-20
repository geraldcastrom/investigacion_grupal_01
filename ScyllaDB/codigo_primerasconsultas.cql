
#1
SELECT
id,    
fecha,
pasos_total
FROM actividad_diaria
WHERE
id = 4702921684
AND fecha >= '2016-04-01'
AND fecha <= '2016-04-30';


#2
SELECT value 
FROM rc_segundos
WHERE id = 2022484408
AND time >= '2016-04-12 07:20:00'
AND time <= '2016-04-12 08:00:00';


#3
SELECT
SUM(minutos_sedentarismo) AS MinutosSedentarismoTotal
FROM actividad_diaria
WHERE
id = 4702921684
AND fecha >= '2016-04-01'
 AND fecha <= '2016-04-30';


#4
SELECT
SUM(total_minutes_asleep) AS MinutosDormidosTotal
FROM sueno_diario
WHERE 
id = 5553957443
AND date >= '2016-05-01'
AND date <= '2016-05-07';


#5
SELECT
SUM(pasos_total) AS Pasos_Totales,
SUM(calorias) AS Calorias_Totales
FROM datos.actividad_diaria
WHERE
id = 8253242879
AND fecha >= '2016-04-01'
AND fecha <= '2016-04-30';
