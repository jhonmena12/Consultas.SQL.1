SELECT DISTINCT p.Pais
FROM Interprete i
JOIN Pais p ON i.IdPais = p.Id
JOIN Tipo t ON i.IdTipo = t.Id
JOIN Interpretacion it ON i.Id = it.IdInterprete
JOIN Ritmo r ON it.IdRitmo = r.Id
WHERE r.Ritmo = 'Salsa'
  AND t.Tipo = 'Grupo';