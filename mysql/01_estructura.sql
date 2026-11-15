-- 01_estructura.sql | MySQL 9.7 | Esquema y 7 tablas del modelo relacional
CREATE DATABASE IF NOT EXISTS `7502320047_1_laboratorio` CHARACTER SET utf8mb4;
USE `7502320047_1_laboratorio`;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS ensayo, certificados, muestra, lotes, tipo_ensayo, jefe_laboratorio, producto;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE producto (
  id_producto      VARCHAR(10)  PRIMARY KEY,
  nombre_producto  VARCHAR(100) NOT NULL,
  descripcion      VARCHAR(255)
);

CREATE TABLE jefe_laboratorio (
  id_jefe_laboratorio VARCHAR(10)  PRIMARY KEY,
  nombre              VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_ensayo (
  id_tipo_ensayo   VARCHAR(10)  PRIMARY KEY,
  nombre_normativa VARCHAR(100) NOT NULL,
  condicion_minima VARCHAR(100)
);

-- TablaX. Se agregan cantidad y observaciones al modelo original para poder
-- practicar columnas numericas y de texto (puntos 22 a 56).
CREATE TABLE lotes (
  id_lote           VARCHAR(10) PRIMARY KEY,
  id_producto       VARCHAR(10) NOT NULL,
  fecha_fabricacion DATE        NOT NULL,
  cantidad          INT,
  observaciones     VARCHAR(100),
  CONSTRAINT fk_lotes_producto FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);

-- TablaZ
CREATE TABLE muestra (
  codigo_muestra      VARCHAR(10) PRIMARY KEY,
  id_lote             VARCHAR(10) NOT NULL,
  jefe_laboratorio    VARCHAR(100),
  id_jefe_laboratorio VARCHAR(10) NOT NULL,
  CONSTRAINT fk_muestra_lote FOREIGN KEY (id_lote) REFERENCES lotes (id_lote),
  CONSTRAINT fk_muestra_jefe FOREIGN KEY (id_jefe_laboratorio) REFERENCES jefe_laboratorio (id_jefe_laboratorio)
);

CREATE TABLE certificados (
  id_certificado VARCHAR(10) PRIMARY KEY,
  id_lote        VARCHAR(10) NOT NULL,
  firma_director VARCHAR(100),
  estado         VARCHAR(20),
  CONSTRAINT fk_cert_lote FOREIGN KEY (id_lote) REFERENCES lotes (id_lote)
);

CREATE TABLE ensayo (
  id_ensayo       VARCHAR(10) PRIMARY KEY,
  codigo_muestra  VARCHAR(10) NOT NULL,
  id_tipo_ensayo  VARCHAR(10) NOT NULL,
  medida_obtenida DECIMAL(10,3),
  cumple_norma    VARCHAR(2),
  CONSTRAINT fk_ensayo_muestra FOREIGN KEY (codigo_muestra) REFERENCES muestra (codigo_muestra),
  CONSTRAINT fk_ensayo_tipo    FOREIGN KEY (id_tipo_ensayo) REFERENCES tipo_ensayo (id_tipo_ensayo)
);
