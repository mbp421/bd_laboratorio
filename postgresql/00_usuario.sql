-- 00_usuario.sql | PostgreSQL | Punto 5: crear usuario_5
-- La clave no se publica en el repositorio.
CREATE USER usuario_5 WITH PASSWORD 'TU_CLAVE';
GRANT CONNECT ON DATABASE bd_laboratorio TO usuario_5;
GRANT USAGE, CREATE ON SCHEMA public TO usuario_5;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO usuario_5;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO usuario_5;
