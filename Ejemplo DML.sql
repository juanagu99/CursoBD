Use Rocketbot_Pro
--=================================
--Eliminar datos
TRUNCATE TABLE Persons
--=================================
--Insertar datos
INSERT INTO [dbo].[Persons] ([LastName],[FirstName],[AddressPerson],[City],[Email]) VALUES ('AGUDELO','JUAN','CALLE 29 B','BELLO','JUAN@GMAIL.COM');
INSERT INTO [dbo].[Persons] ([LastName],[FirstName],[AddressPerson],[City],[Email]) VALUES ('AGUDELO','ALEJO','CALLE 10 B','MEDELLIN','ALEJO@GMAIL.COM');
INSERT INTO [dbo].[Persons] ([LastName],[FirstName],[AddressPerson],[City],[Email]) VALUES ('AGUDELO','PEDRO','CALLE 11 B','PASTO','PEDRO@GMAIL.COM');
INSERT INTO [dbo].[Persons] ([LastName],[FirstName],[AddressPerson],[City],[Email]) VALUES ('AGUDELO','ROCKET','CALLE 12 B','BOGOTA','ROCKET@GMAIL.COM');
--=================================
--consultar datos
SELECT *  FROM Persons; --obtener todas las personas con todos sus campos
SELECT PersonId,LastName FROM Persons; --obtener el campo PersonId y LastName de personas
--=================================
--actualizar datos
UPDATE Persons SET LastName = 'FLOREZ' WHERE PersonId = 1;
SELECT *  FROM Persons WHERE PersonId=1; --obtener todos los campos de la persona con id 1
--=================================
--eliminar registros especificos
DELETE FROM Persons WHERE PersonId=1; --eliminar el registro donde PersonId sea igual a 1
SELECT *  FROM Persons;
--DELETE FROM Persons;
--=================================
--subir información a tablas de origenes de datos como archivos
TRUNCATE TABLE Persons
BULK INSERT Persons FROM 'C:\Users\juanp\Desktop\ArchivoBulk.txt' WITH
        (
        FIELDTERMINATOR =';',--separador del archivo
		ROWTERMINATOR ='\n',--caracter de finalización del archivo
		FIRSTROW = 2,--fila desde donde debe iniciar la inserción
		CODEPAGE = '1252' -- codificación de caracteres de un solo byte del alfabeto latino
        )
SELECT *  FROM Persons;
--=================================