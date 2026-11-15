-- 06_delete_p66-69.sql | MySQL 9.7 | Puntos 66 a 69: DELETE
USE `7502320047_1_laboratorio`;
-- Desactiva el modo seguro de Workbench (Error 1175)
SET SQL_SAFE_UPDATES = 0;

-- Punto 66
DELETE FROM lotes WHERE id_lote = 'L-020';

-- Punto 67
SELECT * FROM lotes;

-- Punto 68
DELETE FROM lotes;      -- Falla: hay muestras y certificados que referencian estos lotes
-- Solución: eliminar primero las tablas hijas y luego los lotes
DELETE FROM muestra;
DELETE FROM certificados;
DELETE FROM lotes;

-- Punto 69
SELECT * FROM lotes;
SELECT * FROM tablay;
