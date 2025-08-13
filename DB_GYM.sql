create database gimnasio;
 
use gimnasio;
 
create table asociadas
(
Identificacion int primary key not null,
Nombre varchar (45) not null,
Direccion varchar(45) not null,
Email varchar(45) not null,
Numero_de_contacto varchar(12) not null,
EPS mediumtext,
Estatura float,
Peso_Corporal float
);
 
CREATE TABLE Pagos (
    Identificacion INT NOT NULL,
    Fecha_de_pago DATE,
    Forma_de_Pago VARCHAR(45),
    Valor DOUBLE,
    FOREIGN KEY (Identificacion) REFERENCES Asociadas(Identificacion)  -- Referencia a otra tabla
);
 
CREATE TABLE Plan_Entrenamiento (
    Identificacion INT NOT NULL,
    Dia_de_la_Semana VARCHAR(45),
    Grupo_Musculos VARCHAR(45),
    Ejercicio_a_Realizar VARCHAR(45),
    Repeticiones int,
    Peso_a_trabajar float,
    Series int,
    FOREIGN KEY (Identificacion) REFERENCES Pagos(Identificacion) 
);
 
CREATE TABLE Plan_Alimentacion (
    Identificacion INT NOT NULL,
    Dia_de_la_Semana VARCHAR(45),
	Desayuno VARCHAR(45),
    Almuerzo VARCHAR(45),
    Cena varchar(45),
    FOREIGN KEY (Identificacion) REFERENCES Pagos(Identificacion) 
);
 
INSERT INTO asociadas (Identificacion, Nombre, Direccion, Email, Numero_de_contacto, EPS, Estatura, Peso_Corporal) VALUES
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