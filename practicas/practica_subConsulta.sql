use bd_empleados;

-- muestra el trabajador que mas cobra

select * from emple where salario = (select max(salario) from emple);

-- Lista todos aquellos directores que se llamen "cerezo"

select apellido from emple where dept_no = (select dept_no from emple where apellido='Cerezo');

-- listar empleado ue trabajan en departamento de barcelona

select * from emple where dept_no = (select dept_nom  from depart where loc = "Barcelona");

-- Listar los empleados que no trabajan en departaments de la misma ciudad que Alonso.


select dept_no from emple where apellido="Alonso";

select * from emple , depart 
where 
emple.dept_no = depart.dept_nom
and 
depart.loc != 
(select loc from depart where dept_nom =
 (select dept_no from emple where apellido="Alonso")
 );







