    -- 02_datos_base.sql | Oracle 21c XE | Datos previos (jefes, productos y tipos de ensayo)

INSERT ALL
  INTO jefe_laboratorio VALUES ('J-01','Carlos Pérez')
  INTO jefe_laboratorio VALUES ('J-02','Ana Gómez')
  INTO jefe_laboratorio VALUES ('J-03','Luis Martínez')
SELECT * FROM dual;

INSERT ALL
  INTO producto VALUES ('P-01','Cemento gris 50kg','Cemento Portland de uso general')
  INTO producto VALUES ('P-02','Varilla corrugada 1/2','Acero de refuerzo')
  INTO producto VALUES ('P-03','Bloque de concreto','Bloque estructural')
  INTO producto VALUES ('P-04','Arena lavada','Arena para mezcla')
  INTO producto VALUES ('P-05','Gravilla','Agregado grueso')
SELECT * FROM dual;

INSERT ALL
  INTO tipo_ensayo VALUES ('T-01','NTC 673','Resistencia a compresion minima 21 MPa')
  INTO tipo_ensayo VALUES ('T-02','NTC 2289','Limite de fluencia minimo 420 MPa')
  INTO tipo_ensayo VALUES ('T-03','NTC 4026','Absorcion maxima 13 por ciento')
SELECT * FROM dual;

COMMIT;
