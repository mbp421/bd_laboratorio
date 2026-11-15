-- 06_delete_p66-69.sql | Oracle 21c XE | Puntos 66 a 69: DELETE

-- Punto 66
DELETE FROM lotes WHERE id_lote = 'L-020';
COMMIT;

-- Punto 67
SELECT * FROM lotes;

-- Punto 68
DELETE FROM lotes;      -- Falla: hay muestras y certificados que referencian estos lotes
-- Solución: eliminar primero las tablas hijas y luego los lotes
DELETE FROM muestra;
DELETE FROM certificados;
DELETE FROM lotes;
COMMIT;

-- Punto 69
SELECT * FROM lotes;
SELECT * FROM tablay;
