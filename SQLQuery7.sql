SELECT ca.Titulo AS Cancion, i.Nombre AS Interprete
FROM Cancion ca
JOIN Interpretacion it ON ca.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
WHERE ca.Titulo IN ('Candilejas', 'Malaguena');