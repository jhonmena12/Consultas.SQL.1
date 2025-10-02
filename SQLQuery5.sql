SELECT ca.Titulo AS Cancion, i.Nombre AS Interprete, c.Nombre AS Compositor
FROM Cancion ca
JOIN CancionCompositor cc ON ca.Id = cc.IdCancion
JOIN Compositor c ON cc.IdCompositor = c.Id
JOIN Interpretacion it ON ca.Id = it.IdCancion
JOIN Interprete i ON it.IdInterprete = i.Id
JOIN Ritmo r ON it.IdRitmo = r.Id
JOIN Tipo t ON i.IdTipo = t.Id
WHERE r.Ritmo = 'Balada'
  AND t.Tipo = 'Solista'
  AND CHARINDEX(i.Nombre, c.Nombre) > 0;