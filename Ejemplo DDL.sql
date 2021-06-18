Use Rocketbot_Pro
CREATE DATABASE Rocketbot_Pro;--crear 
DROP TABLE Persons;--eliminar la tabla 
CREATE TABLE Persons ( 
    PersonID int NOT NULL IDENTITY(1,1) ,
    LastName varchar(255),
    FirstName varchar(255),
    AddressPerson varchar(255) NOT NULL,
    City varchar(255)
);--crear una tabla
ALTER TABLE Persons ADD Email varchar(255);--Se agrega un campo a la tabla
ALTER TABLE Persons ADD CONSTRAINT PK_Person PRIMARY KEY (PersonID,AddressPerson); --Se agrega una llave primaria compuesta
TRUNCATE TABLE Persons;-- comando para eliminar toda la información de la tabla (tambien sirve para reiniciar los autoincrementables si los tienen)
