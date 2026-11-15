-- 03_insert_y_errores_p01-31.sql | MySQL 9.7 | Puntos 1 a 31: INSERT, errores de integridad, tipos y fechas
USE `7502320047_1_laboratorio`;

-- Punto 1
INSERT INTO muestra VALUES ('M-001','L-001','Carlos Pérez','J-01');

-- Punto 2
SELECT * FROM muestra;

-- Punto 3
INSERT INTO lotes VALUES ('L-001','P-01','2023-03-01',500,'Lote inicial');
INSERT INTO lotes VALUES ('L-002','P-01','2023-03-15',450,'Lote de control');
INSERT INTO lotes VALUES ('L-003','P-02','2023-04-02',300,'Lote de varilla');
INSERT INTO lotes VALUES ('L-004','P-03','2023-04-20',800,'Lote de bloques');
INSERT INTO lotes VALUES ('L-005','P-04','2023-05-05',1200,'Lote de arena');

-- Punto 4
SELECT * FROM lotes;

-- Punto 5
INSERT INTO muestra (codigo_muestra, id_lote, id_jefe_laboratorio) VALUES ('M-001','L-001','J-01');
INSERT INTO muestra (codigo_muestra, id_lote, id_jefe_laboratorio) VALUES ('M-002','L-002','J-02');
INSERT INTO muestra (codigo_muestra, id_lote, id_jefe_laboratorio) VALUES ('M-003','L-003','J-03');
INSERT INTO muestra (codigo_muestra, id_lote, id_jefe_laboratorio) VALUES ('M-004','L-004','J-01');
INSERT INTO muestra (codigo_muestra, id_lote, id_jefe_laboratorio) VALUES ('M-005','L-005','J-02');

-- Punto 6
SELECT * FROM lotes;
SELECT * FROM muestra;

-- Punto 7
INSERT INTO lotes VALUES
  ('L-006','P-01','2023-05-10',100,'Lote muestra 6'),
  ('L-007','P-01','2023-05-12',110,'Lote muestra 7'),
  ('L-008','P-02','2023-05-15',120,'Lote muestra 8'),
  ('L-009','P-02','2023-05-18',130,'Lote muestra 9'),
  ('L-010','P-03','2023-05-20',140,'Lote muestra 10'),
  ('L-011','P-03','2023-05-22',150,'Lote muestra 11'),
  ('L-012','P-04','2023-05-25',160,'Lote muestra 12'),
  ('L-013','P-04','2023-05-27',170,'Lote muestra 13'),
  ('L-014','P-05','2023-06-01',180,'Lote muestra 14'),
  ('L-015','P-05','2023-06-03',190,'Lote muestra 15'),
  ('L-016','P-01','2023-06-05',200,'Lote final A'),
  ('L-017','P-01','2023-06-07',210,'Lote final B'),
  ('L-018','P-02','2023-06-09',220,'Lote final C'),
  ('L-019','P-02','2023-06-11',230,'Lote final D'),
  ('L-020','P-03','2023-06-13',240,'Lote final E');

-- Punto 8
SELECT * FROM lotes;

-- Punto 9
INSERT INTO lotes VALUES ('L-021','P-01','2023-06-20',100);

-- Punto 10
SELECT * FROM lotes;

-- Punto 11
INSERT INTO lotes (id_lote, cantidad) VALUES ('L-031', 100);

-- Punto 12
SELECT * FROM lotes;

-- Punto 13
INSERT INTO lotes VALUES ('L-001','P-02','2023-06-21',50,'Duplicado');

-- Punto 14
SELECT * FROM lotes;

-- Punto 15
UPDATE lotes SET id_lote = 'L-100' WHERE id_lote = 'L-001';

-- Punto 16
SELECT * FROM lotes;

-- Punto 17
UPDATE muestra SET id_lote = 'L-999' WHERE codigo_muestra = 'M-001';

-- Punto 18
SELECT * FROM muestra;

-- Punto 19
SELECT * FROM lotes;

-- Punto 20
UPDATE lotes SET fecha_fabricacion = NULL WHERE id_lote = 'L-002';

-- Punto 21
SELECT * FROM lotes;

-- Punto 22
UPDATE lotes SET cantidad = 'abc' WHERE id_lote = 'L-002';

-- Punto 23
SELECT * FROM lotes;

-- Punto 24
UPDATE lotes SET cantidad = '750' WHERE id_lote = 'L-002';

-- Punto 25
SELECT * FROM lotes;

-- Punto 26
UPDATE lotes SET observaciones = 12345 WHERE id_lote = 'L-002';

-- Punto 27
SELECT * FROM lotes;

-- Punto 28
INSERT INTO lotes VALUES ('L-022','P-01','2023-02-29',100,'Fecha invalida');
-- Variante con el formato literal del enunciado (29-02-2023):
INSERT INTO lotes VALUES ('L-032','P-01','29-02-2023',100,'Fecha invalida 2');

-- Punto 29
SELECT * FROM lotes;

-- Punto 30
INSERT INTO lotes VALUES ('L-023','P-01','23-12-10',   10,'fecha a');
INSERT INTO lotes VALUES ('L-024','P-01','01/14/2023', 10,'fecha b');
INSERT INTO lotes VALUES ('L-025','P-01','-10/08/2023',10,'fecha c');
INSERT INTO lotes VALUES ('L-026','P-01','12/30-2023', 10,'fecha d');
INSERT INTO lotes VALUES ('L-027','P-01','12-30-2023', 10,'fecha e');
INSERT INTO lotes VALUES ('L-028','P-01','2023-50-20', 10,'fecha f');
INSERT INTO lotes VALUES ('L-029','P-01','2023-06-21', 10,'fecha g');

-- Punto 31
SELECT * FROM lotes;
