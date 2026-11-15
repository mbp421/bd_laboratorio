-- 05_tablay_p58-65.sql | Oracle 21c XE | Puntos 58 a 65: creación y manejo de TablaY

-- Punto 58
CREATE TABLE tablay (
  id              NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  fecha           TIMESTAMP,
  nombre          VARCHAR2(50),
  apellidos       VARCHAR2(50),
  asignatura      VARCHAR2(80),
  nota1           NUMBER(4,2),
  nota2           NUMBER(4,2),
  nota3           NUMBER(4,2),
  nota_definitiva NUMBER(5,3),
  promedio        NUMBER(5,3),
  mensaje         VARCHAR2(255)
);

-- Punto 59
SELECT * FROM tablay;

-- Punto 60
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-05-20 00:00:00', 'Persona 1', 'De tal', 'Estructuras de datos', 1, NULL, NULL, NULL, NULL, 'Prácticamente no hizo nada');
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-06-20 00:00:00', 'Persona 1', 'De tal', 'Estructuras de datos', 1, 1, NULL, NULL, NULL, 'La actividad es una copia de fragmentos disponibles en internet');
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-07-20 00:00:00', 'Persona 1', 'De tal', 'Estructuras de datos', 1, 1, 1, NULL, NULL, 'La actividad esta completa pero no pudo sustentar, explicarla y no domina el desarrollo de ninguno de los ejercicios');
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-05-20 00:00:00', 'Persona 3', 'De tal', 'Estructuras de datos', 4, NULL, NULL, NULL, NULL, 'Actividad al 80%, pero fue desarrollada progresivamente y socializada al docente en cada tutoria');
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-06-20 00:00:00', 'Persona 3', 'De tal', 'Estructuras de datos', 4, 4.5, NULL, NULL, NULL, 'Actividad completa y entregada una semana antes del cierre, con video y sin documento');
INSERT INTO tablay (fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) VALUES
  (TIMESTAMP '2023-07-20 00:00:00', 'Persona 3', 'De tal', 'Estructuras de datos', 4, 4.5, 5, NULL, NULL, 'Actividad entregada mucho antes del cierre, 100% completa, con documento, video y sustentación');
COMMIT;

-- Punto 61
SELECT * FROM tablay;

-- Punto 62
UPDATE tablay SET
  nota_definitiva = COALESCE(nota1,0)*0.2 + COALESCE(nota2,0)*0.2 + COALESCE(nota3,0)*0.6,
  promedio        = (COALESCE(nota1,0) + COALESCE(nota2,0) + COALESCE(nota3,0)) / 3;
COMMIT;

-- Punto 63
SELECT * FROM tablay;

-- Punto 64
UPDATE tablay SET
  nombre     = UPPER(nombre),
  apellidos  = UPPER(apellidos),
  asignatura = UPPER(asignatura),
  mensaje    = UPPER(mensaje);
COMMIT;

-- Punto 65
SELECT * FROM tablay;
