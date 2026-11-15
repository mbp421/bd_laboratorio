-- 02_datos_base.sql | PostgreSQL 18.6 | Datos previos (jefes, productos y tipos de ensayo)

INSERT INTO jefe_laboratorio VALUES
  ('J-01','Carlos Pérez'),
  ('J-02','Ana Gómez'),
  ('J-03','Luis Martínez');

INSERT INTO producto VALUES
  ('P-01','Cemento gris 50kg','Cemento Portland de uso general'),
  ('P-02','Varilla corrugada 1/2','Acero de refuerzo'),
  ('P-03','Bloque de concreto','Bloque estructural'),
  ('P-04','Arena lavada','Arena para mezcla'),
  ('P-05','Gravilla','Agregado grueso');

INSERT INTO tipo_ensayo VALUES
  ('T-01','NTC 673','Resistencia a compresion minima 21 MPa'),
  ('T-02','NTC 2289','Limite de fluencia minimo 420 MPa'),
  ('T-03','NTC 4026','Absorcion maxima 13 por ciento');
