SELECT * FROM bd_empleados.depart;

USE bd_empleados;

INSERT INTO depart VALUES (10, 'CONTABILIDAD', 'SEVILLA');
INSERT INTO depart VALUES (20, 'INVESTIGACIÓN', 'MADRID');
INSERT INTO depart VALUES (30, 'VENTAS', 'SEVILLA');
INSERT INTO depart VALUES (40, 'PRODUCCIÓN', 'SEVILLA');

SELECT * FROM bd_empleados.depart;


-- Ejercicio 1:

select  * from emple where apellido like '%z';

-- Ejercicio 2:

select  * from emple where apellido like 'A%' and oficio like '%e%';

-- ejercicio 3:

select  * from emple where salario between 1000 and 2000;

-- Ejercicio 4;

select * from emple where oficio='VENDEDOR' AND comision>1000 order by salario desc;

-- ejercicio 5:

select * from emple order by dept_no, apellido;

-- ejercicio 6:

select dept_no ,apellido from emple where apellido like "%Z" and salario > 2000;

-- ejercicio 7:

select * from depart where loc like 'B%';

-- ejercicio8:

select * from emple where oficio='EMPLEADO' and salario > 1100 and dept_no;

-- ejercicio 9:

select * from emple where comision is null and comision = 0;

-- ejercicio 10:

select * from emple where comision is null and comision = 0 and apellido like 'J%';

-- ejercicio 11:

select * from emple where oficio='VENDEDOR' OR oficio='ANALISTA' OR oficio='EMPLEADO';

-- ejercicio 12:

select apellido from emple where oficio != 'VENDEDOR' OR oficio != 'ANALISTA' OR oficio='EMPLEADO' and salario > 2000;

-- ejercicio 13:

select * from emple where salario between 2000 and 3000;

-- ejercicio 14: Seleccionar el apellido, salario y 
-- número de departamento de los empleados cuyo salario sea mayor que 2000 en los departamentos 10 ó 30.

select apellido, salario, dept_no from emple where salario > 2000 and dept_no  in (10 ,30);

-- ejercicio 15:  Mostrar el apellido y número de los 
-- empleados cuyo salario no esté entre 1000 y 2000 (utilizar BETWEEN).

select apellido, dept_no from emple where salario not between 1000 and 2000;

-- ejercicio 16:

-- Obtener el apellidos de todos los empleados

select apellido from emple order by apellido;

-- ejercicio 17:

select apellido, length(apellido) from emple order by length(apellido) desc;

-- ejercicio 18:

select * from emple where fecha_alt >= 1992;

-- ejercicio 19:

select * from emple where dept_no = 10 and comision is null;

-- ejercicio 20:

select emple.apellido from emple, depart where depart.dnombre = 'VENTAS' AND emple.dept_no = depart.dept_nom;

-- ejercicio 21:

update depart set loc = 'BARCELONA' WHERE dept_nom = 30;

select emple.apellido  from emple inner join depart on depart.dept_nom = emple.dept_no where depart.loc = "BARCELONA" order by salario desc limit 1;


