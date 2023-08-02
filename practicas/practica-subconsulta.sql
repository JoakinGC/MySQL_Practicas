-- Ejemplos subconsultas de bd_empleados

-- 0 Muestra el trabajador que más cobra

select apellido , max(salario) from emple; -- NO FUNCIONA ¿POR QUÉ?

select * from emple order by salario desc limit 1; -- Funciona 

select * from emple where salario = (select max(salario) from emple);  -- Funciona con subquery 


-- 1 Listar los apellidos de los empleados que tienen asignado al director CEREZO
    
	-- Proceso de resolución:
	-- Paso 1. Identificar y estudiar las tablas realacionadas con la consulta. En este caso emple.

	-- Paso 2. Debemos partir desde la información que SÍ que conocemos, esta se nos indica en el enunciado y nos indica las columnas que debemos localizar en cada tabla del paso 1.
	--    2.1 En este caso conocemos que el campo es apellido y se nos da un valor: Cerezo. 

	-- Paso 3. Subdividimos la tarea en todas las partes que podamos:

	--    3.1 Se nos indica que es el director de un departamento. ¿Cómo averiguo el departamento de Cerezo? 
	select dept_no from emple where apellido = 'Cerezo'; -- En este caso devuelve el valor 10

	--    3.2 Debemos listar los apellidos de los empleados que trabajan en ese departamento. ¿Como averiguo esto? Lo más fácil es pensar en un caso específico primero, en este caso conozco que dicho valor debe ser el 10,
	--        Hago una query con este valor puesto "a mano"
	select apellido from emple where dept_no = 10; -- obtengo tengo los apellidos que debería devolver mi consulta una vez finalizada

	--    3.3 Ahora es cuando viene el "salto" de utilizar las dos consultas "encadenadas" (subquery). 
	--        Debo sustituir el valor 10 que he escrito "a mano" en mi proceso de razonamiento con la query que me devolverá el valor apropiado dado un apellido de un director. En este caso se nos pide que sea Cerezo así que:
	select apellido from emple where dept_no = (select dept_no from emple where apellido = 'Cerezo');
	   
   
-- 2 Listar los empleado que trabajan en departamentos de barcelona. 

-- Procede a desglosar los pasos al igual que en el ejercicio anterior para llegar al siguiente resultado.

select * 
from emple
where dept_no =  (select dept_no from depart where loc = 'Barcelona') ;


-- 3 Listar los empleados que NO trabajen en departamentos de la misma ciudad que Alonso.

-- Proceso de resolución:

-- Paso 1. Identificar y estudiar las tablas realacionadas con la consulta. En este caso son emple y depart.
-- Paso 2. Debemos partir desde la información que SÍ que conocemos, esta se nos indica en el enunciado y nos indica las columnas que debemos localizar en cada tabla del paso 1. 
-- En este caso conocemos de antemano que el campo es apellido y se nos da un valor: Alonso
-- Otro campo clave a averigura es la ciudad en la que trabaja Alonso, para ello 
    
-- Paso 3. Subdividimos la tarea en todas las partes que podamos:
    
    -- Para averiguar en que ciudad trabaja Alonso necesitamos:
    -- 3.1. Saber el departamento en el que trabaja. Lo tenemos en la tabla emple en el campo dept_no
    select dept_no from emple where apellido like 'Alonso'; -- esto devuelve 20
    -- 3.2. Saber la ciudad en la que esta ese departamento. Lo tenemos en la tabla depart en el campo loc
    select loc from depart where  dept_no = 20;
    -- 3.3 Dando el salto a subquery, sutituyo el 20 escrito a mano por la query que me devolvió ese 20 primeramente
    select loc from depart where  dept_no = ( select dept_no from emple where apellido like 'Alonso' ); -- Obtengo MADRID
    
    -- 3.4 Ahora el problema se centra en averigurar los apellidos de los empleados que NO trabajan en los departamentos cuya localización sea MADRID.
    --    Vamos a proceder de manera analoga, resolviendo este caso escribiendo a mano MADRID donde corresponda, luego lo sustituiremos por la query que nos devolvió ese valor.
   
   -- 3.4.1 Identificamos las tablas y campos necesarios para resolver 3.4 --> Tabla emple campo apellido, tabla depart campo loc. 
   
   -- Hay que cruzar datos de dos tablas como en el Ejercicio2.23 y Ejercicio2.24 ( https://campusfempa.iformalia.es/mod/page/view.php?id=82095 )
       
       select apellido from emple, depart  
        where 
			depart.loc != 'Madrid'   -- selecciona los departamentos que NO tienen como loc Madrid
            and
            emple.dept_no = depart.dept_no; -- selecciona los empelados que justo tienen el mismo dept_no que estos departamentos
    
    -- 3.4.2 Procedemos a cambiar "Madrid" por la query que nos proporciona el valor Madrid
    
		select apellido, loc from emple, depart 
        where 
			depart.loc != (select loc from depart where  dept_no = ( select dept_no from emple where apellido like 'Alonso' ))
            and
            emple.dept_no = depart.dept_no;
    
    
    

    
    
    
    
	