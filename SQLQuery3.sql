SELECT COUNT(*) AS TotalCanciones
FROM CancionCompositor cc
JOIN Compositor c ON cc.IdCompositor = c.Id
WHERE CHARINDEX('JUANES', c.Nombre) > 0;