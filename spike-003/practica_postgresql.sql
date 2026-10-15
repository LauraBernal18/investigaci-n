
-- 1. Crear la tabla de congresos
CREATE TABLE congresos (
    id_congreso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    fecha DATE NOT NULL
);

-- 2. Crear la tabla de actividades
CREATE TABLE actividades (
    id_actividad INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    id_congreso INTEGER NOT NULL,
    CONSTRAINT fk_actividad_congreso
        FOREIGN KEY (id_congreso)
        REFERENCES congresos(id_congreso)
);


-- 3. Insertar congresos de prueba
INSERT INTO congresos (nombre, fecha)
VALUES
    ('Congreso de Innovación Tecnológica', '2026-11-15'),
    ('Encuentro de Inteligencia Artificial', '2026-11-16');

-- 4. Insertar actividades relacionadas con los congresos
INSERT INTO actividades (titulo, lugar, id_congreso)
VALUES
    ('Conferencia de innovación', 'Auditorio principal', 1),
    ('Taller de desarrollo de software', 'Laboratorio 2', 1),
    ('Aplicaciones de inteligencia artificial', 'Sala de conferencias 2', 2);

-- 5. Consultar los congresos
SELECT * FROM congresos;

-- 6. Consultar las actividades
SELECT * FROM actividades;

-- 7. Consultar las actividades junto con su congreso
SELECT
    c.nombre AS congreso,
    c.fecha,
    a.titulo AS actividad,
    a.lugar
FROM congresos AS c
INNER JOIN actividades AS a
    ON c.id_congreso = a.id_congreso
ORDER BY c.fecha, a.titulo;
