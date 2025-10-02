SELECT i.Nombre AS Interprete, r.Ritmo
FROM Cancion ca
JOIN Interpretacion it ON ca.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
JOIN Ritmo r ON it.IdRitmo = r.Id
WHERE ca.Titulo = 'Lluvia';