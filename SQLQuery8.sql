SELECT i.Nombre,
       COUNT(DISTINCT ca.Id) AS CancionesInterpretadas,
       COUNT(DISTINCT ca2.Id) AS CancionesCompuestas
FROM Interprete i
JOIN Interpretacion it ON i.Id = it.IdInterprete
JOIN Cancion ca ON it.IdCancion = ca.Id
JOIN CancionCompositor cc ON cc.IdCompositor IN (
    SELECT c.Id
    FROM Compositor c
    WHERE c.Nombre = i.Nombre
)
JOIN Cancion ca2 ON cc.IdCancion = ca2.Id
GROUP BY i.Nombre;