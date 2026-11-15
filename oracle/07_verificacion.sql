-- 07_verificacion.sql | Oracle 21c XE | Puntos 2, 3 y 7 de la primera parte

-- Punto 2 y 3: tablas creadas o restauradas (deben aparecer 7)
SELECT table_name FROM user_tables ORDER BY table_name;

-- Punto 2: datos base restaurados
SELECT (SELECT COUNT(*) FROM jefe_laboratorio) AS jefes,
       (SELECT COUNT(*) FROM producto)         AS productos,
       (SELECT COUNT(*) FROM tipo_ensayo)      AS tipos,
       (SELECT COUNT(*) FROM lotes)            AS lotes
FROM dual;

-- Punto 7: en Oracle el "equivalente" a la base es la PDB y el esquema del usuario
SELECT sys_context('USERENV','CON_NAME')     AS base_datos,
       sys_context('USERENV','SESSION_USER') AS usuario
FROM dual;
