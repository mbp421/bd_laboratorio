-- 00_usuario.sql | Oracle | Punto 5: crear usuario_5
-- La clave no se publica en el repositorio.
CREATE USER usuario_5 IDENTIFIED BY "TU_CLAVE"
  DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;
GRANT CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW TO usuario_5;
