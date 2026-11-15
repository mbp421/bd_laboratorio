-- 00_usuario.sql | MySQL | Punto 5: crear usuario_5 (ejecutar como root)
-- La clave no se publica en el repositorio.
CREATE USER 'usuario_5'@'localhost' IDENTIFIED BY 'TU_CLAVE';
GRANT ALL PRIVILEGES ON `7502320047_1_laboratorio`.* TO 'usuario_5'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'usuario_5'@'localhost';
