-- Consulta 10: ¿Cuáles son los registros de sueño diarios de una persona en un mes?
-- Usuario: 4558609924
-- Mes: abril 2016

SELECT fecha,
       total_registros_sueno,
       total_minutos_sueno,
       total_minutos_cama
FROM sueno_diario
WHERE id = 4558609924
  AND fecha >= '2016-04-01'
  AND fecha <= '2016-04-30'
ORDER BY fecha ASC;