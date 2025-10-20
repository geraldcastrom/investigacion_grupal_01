-- Consulta 8: ¿Cómo varía el índice de masa corporal (IMC) a lo largo del mes?
SELECT fecha, imc
FROM peso_eventual
WHERE id = 4558609924
  AND fecha >= '2016-04-01'
  AND fecha <= '2016-04-30'
ORDER BY fecha ASC;