-- 1) ¿Cuáles son los pasos diarios de un usuario en un mes? 
SELECT fecha, pasos_total, calorias FROM actividad_diaria WHERE id = 1503960366 AND fecha >= '2016-04-12' AND fecha <= '2016-05-11';

-- 2) ¿Cuál es el ritmo cardiaco de un usuario en un rango de 40 minutos? 
SELECT fecha_hms, ppm FROM ritmo_cardiaco WHERE id = 5553957443 AND fecha_hms >= '2016-04-15 08:00:00' AND fecha_hms <= '2016-04-15 08:40:00';

-- 3) ¿Cuántos minutos en sedentarismo gasta un usuario mensualmente? 
SELECT fecha, minutos_sedentarismo FROM actividad_diaria WHERE id = 1503960366 AND fecha >= '2016-04-12' AND fecha <= '2016-05-11';

-- 4) ¿Cuántos minutos de sueño tuvo un usuario en una semana?
SELECT fecha, total_minutos_sueno FROM sueno_diario WHERE id = 1503960366 AND fecha >= '2016-04-12' AND fecha <= '2016-05-11';

-- 5) ¿Cuántos pasos y calorías diarias tiene un usuario en un mes?
SELECT fecha, pasos_total, calorias FROM actividad_diaria WHERE id = 1503960366 AND fecha >= '2016-04-12' AND fecha <= '2016-05-11';