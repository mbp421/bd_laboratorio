-- 07_verificacion.sql | MySQL 9.7 | Puntos 2, 3 y 7 de la primera parte
USE `7502320047_1_laboratorio`;

-- Punto 2 y 3: tablas creadas o restauradas (deben aparecer 7)
SHOW TABLES;
DESCRIBE lotes;

-- Punto 2: datos base restaurados
SELECT (SELECT COUNT(*) FROM jefe_laboratorio) AS jefes,
       (SELECT COUNT(*) FROM producto)         AS productos,
       (SELECT COUNT(*) FROM tipo_ensayo)      AS tipos,
       (SELECT COUNT(*) FROM lotes)            AS lotes;

-- Punto 7: bases de datos visibles para el usuario actual
SHOW DATABASES;
