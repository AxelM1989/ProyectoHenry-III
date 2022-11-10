DROP DATABASE IF EXISTS HenryIII;
CREATE DATABASE IF NOT EXISTS HenryIII;
USE HENRYIII;

SHOW VARIABLES LIKE "secure_file_priv";

DROP TABLE IF EXISTS ´Accidente´;
CREATE TABLE IF NOT EXISTS Accidente(
Fecha DATETIME,
LugarAccidente VARCHAR(250),
Operador VARCHAR(150),
NroVuelo VARCHAR(50),
Ruta VARCHAR(250),
TipoAvion VARCHAR(50),
TotalaBordo INT ,
PasajerosABordo INT,
TripulacionaBordo INT,
CantidadFallecidos INT,
PasajerosFallecidos INT,
TripulacionFallecida INT,
MuertesIndirectas INT,
Anio INT8,
Mes INT8
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Accidentes.csv"
INTO TABLE Accidente
FIELDS TERMINATED BY "," ENCLOSED BY '"' ESCAPED BY '"'
 LINES TERMINATED BY "\n" IGNORE 1 LINES;

DROP TABLE IF EXISTS AccidentesExtranios;
CREATE TABLE IF NOT EXISTS AccidentesExtranios (
Fecha datetime,
Operador varchar(150),
LugarAccidente varchar(100),
Comentarios TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\AccidentesExtranios.csv"
INTO TABLE AccidentesExtranios
FIELDS TERMINATED BY "," ENCLOSED BY '"' ESCAPED BY '"'
 LINES TERMINATED BY "\n" IGNORE 1 LINES;



DROP TABLE IF EXISTS ´PeoresAccidentes´;
CREATE TABLE IF NOT EXISTS PeoresAccidentes (
Id INT NOT NULL,
VictimasFatales INT,
Fecha DATETIME,
LugarAccidente VARCHAR(50),
Operador VARCHAR(50),
NroVuelo VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PeoresAccidentes.csv"
INTO TABLE PeoresAccidentes
FIELDS TERMINATED BY "," ENCLOSED BY '"' ESCAPED BY '"'
 LINES TERMINATED BY "\n" IGNORE 1 LINES;