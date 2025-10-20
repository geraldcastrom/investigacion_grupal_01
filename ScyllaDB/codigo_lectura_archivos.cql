
CREATE KEYSPACE IF NOT EXISTS datos
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE datos;

CREATE TABLE peso_eventual(
id bigint,
date date,  
weight_kg float,
bmi float,
PRIMARY KEY(id,date));

CREATE TABLE sueno_diario(
id bigint,
total_sleep_records int,
total_minutes_asleep int,
total_time_in_bed int,
date date,
PRIMARY KEY(id,date));

CREATE TABLE actividad_diaria(
id bigint,
pasos_total int,
distancia_total float,
minutos_sedentarismo int,
calorias int,
fecha date,
PRIMARY KEY(id,fecha));

CREATE TABLE rc_segundos(
id bigint,
time timestamp,
value int,
PRIMARY KEY(id,time));


COPY rc_segundos (id, time, value)
FROM '/tmp/rc_segundos.csv'
WITH DELIMITER = ',' AND HEADER = TRUE;

COPY sueno_diario (id, total_sleep_records, total_minutes_asleep, total_time_in_bed, date)
FROM '/tmp/sueno_diario.csv'
WITH DELIMITER = ',' AND HEADER = TRUE;

COPY peso_eventual (id, date, weight_kg, bmi)
FROM '/tmp/peso_eventual.csv'
WITH DELIMITER = ',' AND HEADER = TRUE;

COPY actividad_diaria (id, pasos_total, distancia_total, minutos_sendentarismo, calorias, fecha)
FROM '/tmp/actividad_diaria.csv'
WITH DELIMITER = ',' AND HEADER = TRUE;
