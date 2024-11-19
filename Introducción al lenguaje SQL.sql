SELECT *
FROM HumanResources.Employee

/* Seleccionar todos los empleados que tengan el puesto de Tool Designer*/
SELECT *
FROM HumanResources.Employee
WHERE JobTitle  = 'Tool Designer'

SELECT COUNT(*) AS " CANTIDAD DE REGISTROS"
FROM HumanResources.Employee 
WHERE JobTitle = 'Tool Designer'

/* Seleccionar todos los empleados que en el campo del puesto contenga la palabra Designer*/
SELECT *
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Designer'  

--  '_ool Designer' de esta manera indicamos que antes de ool tenga solo un caracter 
SELECT *
FROM HumanResources.Employee
WHERE JobTitle LIKE '_ool Designer' 

-- Mostrar todos los empleados que hallan sido contratados entre 01-01-2010 al 31-12-10
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2010-01-01' AND '2010-12-01'

-- Obtener la informacion del empleado con un numero de DI especifico
SELECT *
FROM HumanResources.Employee
WHERE NationalIDNumber = '403414852'

-- Con OR podemos obtener multiples registros
SELECT *
FROM HumanResources.Employee
WHERE NationalIDNumber = '486228782'
OR NationalIDNumber = '243322160'
OR NationalIDNumber = '982310417'

-- POdemos hacer lo mismo usando IN
SELECT *
FROM HumanResources.Employee
WHERE NationalIDNumber IN ('486228782','243322160','982310417')

-- Obtener el registro del empleado donde el campo Nivel de organizacion es null
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NULL 

-- Obtener el registro del empleado donde el campo Nivel de organizacion es NO null
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL

/* ORDER BY
ordenamos por la columna JobTilte */
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL
ORDER BY JobTitle 

/* ordenamos por la columna JobTilte DE FORMA DESCENDENTE*/
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL
ORDER BY JobTitle DESC

--Ademas de ordenar por nombre del puesto, ordenar por fecha de ingreso a la compañia
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL
ORDER BY JobTitle ASC, HIREDATE DESC

-- Ordenar por la 6 columna (JobTilte)
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL
ORDER BY 6
