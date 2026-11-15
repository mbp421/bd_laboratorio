-- 07_verificacion.sql | PostgreSQL 18.6 | Puntos 2, 3 y 7 de la primera parte

-- Punto 2 y 3: tablas creadas o restauradas (deben aparecer 7)
SELECT table_name FROM information_schema.tables
WHERE table_schema = 'public' ORDER BY table_name;

-- Punto 2: datos base restaurados
SELECT (SELECT COUNT(*) FROM jefe_laboratorio) AS jefes,
       (SELECT COUNT(*) FROM producto)         AS productos,
       (SELECT COUNT(*) FROM tipo_ensayo)      AS tipos,
       (SELECT COUNT(*) FROM lotes)            AS lotes;

-- Punto 7: bases de datos a las que puede conectarse el usuario actual
SELECT datname FROM pg_database
WHERE datallowconn AND has_database_privilege(current_user, datname, 'CONNECT');
