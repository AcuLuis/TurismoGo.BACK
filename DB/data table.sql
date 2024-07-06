-- Población de tablas
-- Tabla Rol

INSERT INTO Rol (NombreRol) VALUES ('Administrador');
INSERT INTO Rol (NombreRol) VALUES ('Cliente');
INSERT INTO Rol (NombreRol) VALUES ('Proveedor');
INSERT INTO Rol (NombreRol) VALUES ('Guía Turístico');
INSERT INTO Rol (NombreRol) VALUES ('Supervisor');



-- Insertar 10 usuarios para cada rol
-- Para el rol 'Administrador'
INSERT INTO Usuario (Nombre, Apellidos, CorreoElectronico, Contrasena, FechaRegistro, ID_Rol)
VALUES
    ('Juan', 'González', 'admin1@example.com', 'contraseña1',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('María', 'Martínez', 'admin2@example.com', 'contraseña2',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Pedro', 'Rodríguez', 'admin3@example.com', 'contraseña3',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Ana', 'Sánchez', 'admin4@example.com', 'contraseña4',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Luis', 'Pérez', 'admin5@example.com', 'contraseña5',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Laura', 'Gómez', 'admin6@example.com', 'contraseña6', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Jorge', 'López', 'admin7@example.com', 'contraseña7', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Sofía', 'Hernández', 'admin8@example.com', 'contraseña8',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Carlos', 'Díaz', 'admin9@example.com', 'contraseña9', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1),
    ('Elena', 'Torres', 'admin10@example.com', 'contraseña10' , DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 1);

-- Para el rol 'Cliente'
INSERT INTO Usuario (Nombre, Apellidos, CorreoElectronico, Contrasena, FechaRegistro, ID_Rol)
VALUES
    ('Daniel', 'Ruiz', 'cliente1@example.com', 'contraseña1',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Lorena', 'García', 'cliente2@example.com', 'contraseña2',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Martín', 'Jiménez', 'cliente3@example.com', 'contraseña3', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Sara', 'Fernández', 'cliente4@example.com', 'contraseña4', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Pablo', 'Moreno', 'cliente5@example.com', 'contraseña5',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Carmen', 'Vargas', 'cliente6@example.com', 'contraseña6', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Alejandro', 'Ortega', 'cliente7@example.com', 'contraseña7', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Valeria', 'Pérez', 'cliente8@example.com', 'contraseña8',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Gabriel', 'Molina', 'cliente9@example.com', 'contraseña9',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2),
    ('Natalia', 'Rojas', 'cliente10@example.com', 'contraseña10',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 2);

-- Para el rol 'Proveedor'
INSERT INTO Usuario (Nombre, Apellidos, CorreoElectronico, Contrasena, FechaRegistro, ID_Rol)
VALUES
    ('Mario', 'Herrera', 'proveedor1@example.com', 'contraseña1', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Carolina', 'Silva', 'proveedor2@example.com', 'contraseña2',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Fernando', 'Castro', 'proveedor3@example.com', 'contraseña3',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Verónica', 'Gutiérrez', 'proveedor4@example.com', 'contraseña4', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Miguel', 'Flores', 'proveedor5@example.com', 'contraseña5',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Isabel', 'Ramos', 'proveedor6@example.com', 'contraseña6',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Andrés', 'Navarro', 'proveedor7@example.com', 'contraseña7', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Camila', 'Morales', 'proveedor8@example.com', 'contraseña8',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Gustavo', 'Soto', 'proveedor9@example.com', 'contraseña9',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3),
    ('Luisa', 'Delgado', 'proveedor10@example.com', 'contraseña10', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 3);

-- Para el rol 'Guía Turístico'
INSERT INTO Usuario (Nombre, Apellidos, CorreoElectronico, Contrasena,  FechaRegistro, ID_Rol)
VALUES
    ('Ricardo', 'Martín', 'guia1@example.com', 'contraseña1', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Paula', 'Gómez', 'guia2@example.com', 'contraseña2',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Antonio', 'Jiménez', 'guia3@example.com', 'contraseña3',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Lucía', 'Hernández', 'guia4@example.com', 'contraseña4',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Javier', 'Pérez', 'guia5@example.com', 'contraseña5',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Marina', 'Rojas', 'guia6@example.com', 'contraseña6',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Eduardo', 'López', 'guia7@example.com', 'contraseña7',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Valentina', 'García', 'guia8@example.com', 'contraseña8',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Diego', 'Castillo', 'guia9@example.com', 'contraseña9',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4),
    ('Sofía', 'Muñoz', 'guia10@example.com', 'contraseña10',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 4);

-- Para el rol 'Supervisor'
INSERT INTO Usuario (Nombre, Apellidos, CorreoElectronico, Contrasena, FechaRegistro, ID_Rol)
VALUES
    ('Alejandro', 'González', 'supervisor1@example.com', 'contraseña1', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Ana', 'Fernández', 'supervisor2@example.com', 'contraseña2',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Javier', 'Martínez', 'supervisor3@example.com', 'contraseña3', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Laura', 'López', 'supervisor4@example.com', 'contraseña4',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Pedro', 'García', 'supervisor5@example.com', 'contraseña5',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Carmen', 'Ruiz', 'supervisor6@example.com', 'contraseña6',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Daniel', 'Pérez', 'supervisor7@example.com', 'contraseña7',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Sara', 'Jiménez', 'supervisor8@example.com', 'contraseña8',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('Gabriel', 'Sánchez', 'supervisor9@example.com', 'contraseña9', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5),
    ('María', 'Gómez', 'supervisor10@example.com', 'contraseña10',  DATEADD(day, -ABS(CHECKSUM(NEWID())) % 1000, GETDATE()), 5);


--- Tabla EmpresaTurismo

-- Usar la base de datos turismo_db
USE turismo_db;
GO

-- Insertar datos en la tabla EmpresaTurismo con fechas aleatorias
DECLARE @i INT = 1;
DECLARE @RandomDate DATE;

-- Generar una fecha aleatoria entre una fecha inicial y final
-- Fecha inicial: 2020-01-01
-- Fecha final: 2023-01-01
DECLARE @StartDate DATE = '2020-01-01';
DECLARE @EndDate DATE = '2023-01-01';
DECLARE @DateRange INT = DATEDIFF(DAY, @StartDate, @EndDate);

WHILE @i <= 15
BEGIN
    -- Calcular una fecha aleatoria dentro del rango
    SET @RandomDate = DATEADD(DAY, FLOOR(RAND() * @DateRange), @StartDate);
    
    INSERT INTO EmpresaTurismo (NombreEmpresa, Direccion, Telefono, CorreoElectronico, Contrasena, FechaRegistro)
    VALUES (
        'EmpresaTurismo' + CAST(@i AS NVARCHAR(10)), 
        'Direccion ' + CAST(@i AS NVARCHAR(10)), 
        '123-456-00' + RIGHT('00' + CAST(@i AS NVARCHAR(10)), 2), 
        'empresa' + CAST(@i AS NVARCHAR(10)) + '@correo.com', 
        'password' + CAST(@i AS NVARCHAR(10)), 
        @RandomDate
    );
    SET @i = @i + 1;
END;
GO

SELECT * from EmpresaTurismo


-- Usar la base de datos turismo_db
USE turismo_db;
GO

-- Insertar 5 actividades específicas por empresa en la tabla Actividad con fechas aleatorias
DECLARE @i INT = 1;
DECLARE @j INT = 1;
DECLARE @RandomStartDate DATE;
DECLARE @RandomEndDate DATE;

-- Generar una fecha aleatoria entre una fecha inicial y final
-- Fecha inicial: 2023-01-01
-- Fecha final: 2024-12-31
DECLARE @StartDate DATE = '2023-01-01';
DECLARE @EndDate DATE = '2024-12-31';
DECLARE @DateRange INT = DATEDIFF(DAY, @StartDate, @EndDate);

WHILE @i <= 15
BEGIN
    SET @j = 1;
    WHILE @j <= 5
    BEGIN
        -- Calcular una fecha de inicio aleatoria dentro del rango
        SET @RandomStartDate = DATEADD(DAY, FLOOR(RAND() * @DateRange), @StartDate);
        -- Calcular una fecha de fin aleatoria que sea al menos 1 día después de la fecha de inicio
        SET @RandomEndDate = DATEADD(DAY, FLOOR(RAND() * 10) + 1, @RandomStartDate);
        
        INSERT INTO Actividad (NombreActividad, Descripcion, Destino, FechaInicio, FechaFin, Precio, ID_Empresa)
        VALUES (
            CASE 
                WHEN @j = 1 THEN 'Canotaje'
                WHEN @j = 2 THEN 'Salto Bungee'
                WHEN @j = 3 THEN 'Bicicleta de Montaña'
                WHEN @j = 4 THEN 'Senderismo'
                WHEN @j = 5 THEN 'Kayak'
            END,
            CASE 
                WHEN @j = 1 THEN 'Descripción de Canotaje'
                WHEN @j = 2 THEN 'Descripción de Salto Bungee'
                WHEN @j = 3 THEN 'Descripción de Bicicleta de Montaña'
                WHEN @j = 4 THEN 'Descripción de Senderismo'
                WHEN @j = 5 THEN 'Descripción de Kayak'
            END,
            CASE 
                WHEN @j = 1 THEN 'Río'
                WHEN @j = 2 THEN 'Montaña'
                WHEN @j = 3 THEN 'Caminos'
                WHEN @j = 4 THEN 'Bosque'
                WHEN @j = 5 THEN 'Lago'
            END,
            @RandomStartDate, 
            @RandomEndDate, 
            RAND() * 100 + 1, 
            @i
        );
        SET @j = @j + 1;
    END;
    SET @i = @i + 1;
END;
GO

SELECT * from Actividad

-- Usar la base de datos turismo_db

---- reserva 

-- Generar al menos una reserva para cada usuario
WITH UsuariosConReserva AS (
    SELECT DISTINCT ID_Usuario
    FROM Reserva
)

INSERT INTO Reserva (ID_Usuario, ID_Actividad, FechaReserva, CantidadPersonas, Estado)
SELECT
    U.ID_Usuario,
    ABS(CHECKSUM(NEWID())) % 75 + 1 AS ID_Actividad,
    DATEADD(day, ABS(CHECKSUM(NEWID())) % 100, GETDATE()) AS FechaReserva,
    ABS(CHECKSUM(NEWID())) % 10 + 1 AS CantidadPersonas,
    CASE ABS(CHECKSUM(NEWID())) % 3
        WHEN 0 THEN 'Confirmada'
        WHEN 1 THEN 'Pendiente'
        ELSE 'Cancelada'
    END AS Estado
FROM Usuario U
WHERE U.ID_Usuario NOT IN (SELECT ID_Usuario FROM UsuariosConReserva);

SELECT * FROM Reserva


-- Generar una reseña por cada usuario
WITH UsuariosConReseña AS (
    SELECT DISTINCT ID_Usuario
    FROM Reseña
)

INSERT INTO Reseña (ID_Usuario, ID_Actividad, Comentario, Valoracion, FechaReseña)
SELECT
    U.ID_Usuario,
    ABS(CHECKSUM(NEWID())) % 75 + 1 AS ID_Actividad,
    'Esta actividad fue genial.' AS Comentario,
    ABS(CHECKSUM(NEWID())) % 5 + 1 AS Valoracion,  -- Valoración entre 1 y 5
    DATEADD(day, ABS(CHECKSUM(NEWID())) % 100, GETDATE()) AS FechaReseña
FROM Usuario U
WHERE U.ID_Usuario NOT IN (SELECT ID_Usuario FROM UsuariosConReseña);

SELECT * FROM Reseña