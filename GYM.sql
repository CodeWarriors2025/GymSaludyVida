-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS gimnasio;
USE gimnasio;

-- Tabla principal de asociadas
CREATE TABLE asociadas (
    Cedula INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Numero_de_contacto VARCHAR(15) NOT NULL,
    EPS MEDIUMTEXT,
    Estatura FLOAT,
    Peso_Corporal FLOAT
);

-- Tabla de pagos
CREATE TABLE Pagos (
    Cedula INT NOT NULL,
    Fecha_de_pago DATE,
    Forma_de_Pago VARCHAR(45),
    Valor DOUBLE,
    FOREIGN KEY (Cedula) REFERENCES asociadas(Cedula) ON DELETE CASCADE
);

-- Tabla de plan de entrenamiento
CREATE TABLE Plan_Entrenamiento (
    Cedula INT NOT NULL,
    Dia_de_la_Semana VARCHAR(45),
    Grupo_Musculos VARCHAR(45),
    Ejercicio_a_Realizar VARCHAR(45),
    Repeticiones INT,
    Peso_a_trabajar FLOAT,
    Series INT,
    FOREIGN KEY (Cedula) REFERENCES asociadas(Cedula) ON DELETE CASCADE
);

-- Tabla de plan de alimentación
CREATE TABLE Plan_Alimentacion (
    Cedula INT NOT NULL,
    Dia_de_la_Semana VARCHAR(45),
    Desayuno VARCHAR(45),
    Almuerzo VARCHAR(45),
    Cena VARCHAR(45),
    FOREIGN KEY (Cedula) REFERENCES asociadas(Cedula) ON DELETE CASCADE
);

-- Insertar datos de asociadas
INSERT INTO asociadas (Cedula, Nombre, Direccion, Email, Numero_de_contacto, EPS, Estatura, Peso_Corporal) VALUES
(52632987, 'Patricia Contreras Ramirez', 'Cra 114 # 100-51 -30', 'pato.89@gmail.com', '3211223456', 'Famisanar', 1.69, 60),
(28765432, 'María Fernanda López Gómez', 'Calle 45 # 22-10', 'mafelogo@gmail.com', '3109876543', 'Sura', 1.65, 58),
(34567821, 'Ana Isabel Torres Méndez', 'Av 68 # 15-42', 'anatorres@hotmail.com', '3156789012', 'Nueva EPS', 1.70, 62),
(41234567, 'Laura Valentina Rojas Páez', 'Cra 50 # 80-30', 'lauraroja@gmail.com', '3201234567', 'Sanitas', 1.63, 55),
(52345678, 'Sofía Camila Díaz Castro', 'Calle 72 # 10-15', 'sofdiaz@yahoo.com', '3178901234', 'Coomeva', 1.68, 59),
(63456789, 'Carolina Andrea Pérez Ruiz', 'Cra 7 # 40-20', 'caroperez@gmail.com', '3189012345', 'Salud Total', 1.71, 63),
(74567890, 'Daniela Estefanía Mendoza', 'Av Boyacá # 15-30', 'daniemendoza@gmail.com', '3123456789', 'Famisanar', 1.66, 57),
(85678901, 'Valeria Julián Vargas', 'Calle 100 # 11-90', 'valejulian@gmail.com', '3134567890', 'Sura', 1.64, 56),
(96789012, 'Camila Andrea Herrera', 'Cra 15 # 25-50', 'camiherrera@hotmail.com', '3145678901', 'Nueva EPS', 1.67, 61),
(10789123, 'Mariana Alejandra Soto', 'Av 19 # 12-35', 'marianasoto@gmail.com', '3196789012', 'Sanitas', 1.69, 60),
(11890123, 'Isabella Rodríguez Pinzón', 'Cra 30 # 45-60', 'isarodriguez@yahoo.com', '3207890123', 'Coomeva', 1.65, 58),
(12901234, 'Gabriela Sánchez Moreno', 'Calle 80 # 70-25', 'gabisanchez@gmail.com', '3158901234', 'Salud Total', 1.72, 64),
(13012345, 'Natalia Guzmán Ortiz', 'Cra 60 # 5-40', 'natguzman@gmail.com', '3169012345', 'Famisanar', 1.63, 55),
(14123456, 'Valentina Ramírez Silva', 'Av 26 # 50-15', 'valeramirez@hotmail.com', '3170123456', 'Sura', 1.68, 59),
(15234567, 'Juliana Martínez Ríos', 'Calle 85 # 30-10', 'julimartinez@gmail.com', '3181234567', 'Nueva EPS', 1.70, 62),
(16345678, 'Sara Cristina Gómez', 'Cra 40 # 22-35', 'saragomez@gmail.com', '3192345678', 'Sanitas', 1.66, 57),
(17456789, 'Alejandra Castro Niño', 'Av 13 # 18-42', 'alecastro@yahoo.com', '3203456789', 'Coomeva', 1.64, 56),
(18567890, 'Luisa Fernanda Medina', 'Calle 72 # 55-20', 'luisamedina@gmail.com', '3214567890', 'Salud Total', 1.71, 63),
(19678901, 'Paola Andrea Núñez', 'Cra 25 # 90-15', 'paolanunez@gmail.com', '3225678901', 'Famisanar', 1.67, 61),
(20789012, 'Diana Carolina Jiménez', 'Av 68 # 33-28', 'dianajimenez@hotmail.com', '3236789012', 'Sura', 1.69, 60);

-- Insertar algunos datos de ejemplo en Pagos
INSERT INTO Pagos (Cedula, Fecha_de_pago, Forma_de_Pago, Valor) VALUES
(52632987, '2024-01-15', 'Efectivo', 50000),
(28765432, '2024-01-16', 'Tarjeta', 50000),
(34567821, '2024-01-17', 'Transferencia', 50000);

-- Insertar algunos datos de ejemplo en Plan_Entrenamiento
INSERT INTO Plan_Entrenamiento (Cedula, Dia_de_la_Semana, Grupo_Musculos, Ejercicio_a_Realizar, Repeticiones, Peso_a_trabajar, Series) VALUES
(52632987, 'Lunes', 'Piernas', 'Sentadillas', 15, 20.5, 3),
(28765432, 'Martes', 'Brazo', 'Curl de bíceps', 12, 8.0, 4);

-- Insertar algunos datos de ejemplo en Plan_Alimentacion
INSERT INTO Plan_Alimentacion (Cedula, Dia_de_la_Semana, Desayuno, Almuerzo, Cena) VALUES
(52632987, 'Lunes', 'Avena con frutas', 'Pechuga a la plancha', 'Ensalada de atún'),
(28765432, 'Martes', 'Huevos revueltos', 'Salmón con verduras', 'Yogur griego');

-- Consulta de verificación
SELECT 'Base de datos creada exitosamente!' AS Mensaje;
SELECT COUNT(*) AS Total_Asociadas FROM asociadas;