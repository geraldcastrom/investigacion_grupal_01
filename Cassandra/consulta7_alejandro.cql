-- Consulta 7: ¿Cómo varía el peso de una persona a lo largo de la semana?
SELECT fecha, peso_kg
FROM peso_eventual
WHERE id = 4558609924
  AND fecha >= '2016-04-01'
  AND fecha <= '2016-05-31'
ORDER BY fecha ASC;