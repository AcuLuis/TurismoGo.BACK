-- Crear la base de datos
CREATE DATABASE turismo_db;
GO

-- Usar la base de datos recién creada
USE turismo_db;
GO

-- Crear la tabla Rol
CREATE TABLE Rol (
    ID_Rol INT PRIMARY KEY IDENTITY(1,1),
    NombreRol NVARCHAR(50) NOT NULL
);

-- Crear la tabla EmpresaTurismo
CREATE TABLE EmpresaTurismo (
    ID_Empresa INT PRIMARY KEY IDENTITY(1,1),
    NombreEmpresa NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(255) NOT NULL,
    Telefono NVARCHAR(15) NOT NULL,
    CorreoElectronico NVARCHAR(100) NOT NULL,
    Contrasena NVARCHAR(255) NOT NULL,
    FechaRegistro DATE NOT NULL
);

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Apellidos NVARCHAR(100) NOT NULL,
    CorreoElectronico NVARCHAR(100) NOT NULL,
    Contrasena NVARCHAR(255) NOT NULL,
    ID_Rol INT NOT NULL,
    FechaRegistro DATE NOT NULL,
    FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol)
);

-- Crear la tabla Actividad
CREATE TABLE Actividad (
    ID_Actividad INT PRIMARY KEY IDENTITY(1,1),
    NombreActividad NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(MAX) NOT NULL,
    Destino NVARCHAR(100) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaFin DATE NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    ID_Empresa INT NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES EmpresaTurismo(ID_Empresa)
);

-- Crear la tabla Reserva
CREATE TABLE Reserva (
    ID_Reserva INT PRIMARY KEY IDENTITY(1,1),
    ID_Usuario INT NOT NULL,
    ID_Actividad INT NOT NULL,
    FechaReserva DATE NOT NULL,
    CantidadPersonas INT NOT NULL,
    Estado NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Actividad) REFERENCES Actividad(ID_Actividad)
);

-- Crear la tabla Reseña
CREATE TABLE Reseña (
    ID_Reseña INT PRIMARY KEY IDENTITY(1,1),
    ID_Usuario INT NOT NULL,
    ID_Actividad INT NOT NULL,
    Comentario NVARCHAR(MAX) NOT NULL,
    Valoracion INT NOT NULL,
    FechaReseña DATE NOT NULL,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Actividad) REFERENCES Actividad(ID_Actividad)
);

GO
