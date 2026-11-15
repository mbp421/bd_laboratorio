-- 04_update_p32-57.sql | PostgreSQL 18.6 | Puntos 32 a 57: UPDATE con distintas condiciones WHERE

-- Punto 32
UPDATE lotes SET observaciones = 'Revisado', cantidad = 999 WHERE id_lote = 'L-003';

-- Punto 33
SELECT * FROM lotes;

-- Punto 34
UPDATE lotes SET observaciones = 'Lote en lista', cantidad = 111
WHERE id_lote IN ('L-002','L-003','L-004','L-005','L-006');

-- Punto 35
SELECT * FROM lotes;

-- Punto 36
UPDATE lotes SET observaciones = 'X o Y', cantidad = 222
WHERE id_lote = 'L-007' OR id_lote = 'L-008';

-- Punto 37
SELECT * FROM lotes;

-- Punto 38
UPDATE lotes SET observaciones = 'A y B', cantidad = 333
WHERE id_lote = 'L-009' AND id_lote = 'L-010';

-- Punto 39
SELECT * FROM lotes;

-- Punto 40
UPDATE lotes SET observaciones = 'En rango', cantidad = 444
WHERE id_lote BETWEEN 'L-010' AND 'L-015';

-- Punto 41
SELECT * FROM lotes;

-- Punto 42
UPDATE lotes SET observaciones = 'Cantidad alta', cantidad = 1000 WHERE cantidad >= 500;

-- Punto 43
SELECT * FROM lotes;

-- Punto 44
UPDATE lotes SET observaciones = 'Distinto de 500', cantidad = 555 WHERE cantidad <> 500;

-- Punto 45
SELECT * FROM lotes;

-- Punto 46
UPDATE lotes SET observaciones = 'Primer semestre', cantidad = 666
WHERE fecha_fabricacion BETWEEN '2023-01-01' AND '2023-06-30';

-- Punto 47
SELECT * FROM lotes;

-- Datos de apoyo para las pruebas con LIKE e IS NULL (puntos 48 a 56)
UPDATE lotes SET observaciones = 'ABC revision'      WHERE id_lote = 'L-011';
UPDATE lotes SET observaciones = 'revision XYZ'      WHERE id_lote = 'L-012';
UPDATE lotes SET observaciones = 'control ABCD final' WHERE id_lote = 'L-013';
UPDATE lotes SET observaciones = NULL                WHERE id_lote = 'L-014';

-- Punto 48
UPDATE lotes SET observaciones = 'Actualizado por prefijo', cantidad = 777
WHERE observaciones LIKE 'ABC%';

-- Punto 49
SELECT * FROM lotes;

-- Punto 50
UPDATE lotes SET observaciones = 'Actualizado por sufijo', cantidad = 888
WHERE observaciones LIKE '%XYZ';

-- Punto 51
SELECT * FROM lotes;

-- Punto 52
UPDATE lotes SET observaciones = 'Actualizado por contiene', cantidad = 999
WHERE observaciones LIKE '%ABCD%';

-- Punto 53
SELECT * FROM lotes;

-- Punto 54
UPDATE lotes SET observaciones = 'Era NULL', cantidad = 1 WHERE observaciones IS NULL;

-- Punto 55
SELECT * FROM lotes;

-- Punto 56
UPDATE lotes SET observaciones = 'No era NULL', cantidad = 2 WHERE observaciones IS NOT NULL;

-- Punto 57
SELECT * FROM lotes;
