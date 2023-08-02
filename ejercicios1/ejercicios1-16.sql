/*
Gaston Joaquin Contreras

CREATE DATABASE bd_empleados;

USE bd_empleados;

create table emple(

   id_empl INTEGER PRIMARY KEY,

  apellido VARCHAR(50) NOT NULL,

  oficio VARCHAR(30),

  dir INTEGER, 

  fecha_alt DATE, 

  salario INTEGER,

  comision INTEGER,

  dept_no INTEGER

);

INSERT INTO emple VALUES (7369,'SÁNCHEZ', 'EMPLEADO', 7902, '1990/12/17', 1040, NULL, 20);

INSERT INTO emple VALUES (7499,'ARROYO', 'VENDEDOR', 7698, '1990/02/20', 1500, 390, 30);

INSERT INTO emple VALUES (7521,'SALA', 'VENDEDOR', 7698, '1991/02/22', 1625, 650, 30);

INSERT INTO emple VALUES (7566,'JIMÉNEZ', 'DIRECTOR', 7839, '1991/04/02', 2900, NULL, 20);

INSERT INTO emple VALUES (7654,'MARTÍN', 'VENDEDOR', 7698, '1991/09/29', 1600, 1020, 30);

INSERT INTO emple VALUES (7698,'NEGRO', 'DIRECTOR', 7839, '1991/05/01', 3005, NULL, 30);

INSERT INTO emple VALUES (7782,'CEREZO', 'DIRECTOR', 7839, '1991/06/09', 2885, NULL, 10);

INSERT INTO emple VALUES (7788,'GIL', 'ANALISTA', 7566, '1991/11/09', 3000, NULL, 20);

INSERT INTO emple VALUES (7839,'REY', 'PRESIDENTE', NULL, '1991/11/17', 4100, NULL, 10);

INSERT INTO emple VALUES (7844,'TOVAR', 'VENDEDOR', 7698, '1991/09/08', 1350, 0, 30);

INSERT INTO emple VALUES (7876,'ALONSO', 'EMPLEADO', 7788, '1991/09/23', 1430, NULL, 20);

INSERT INTO emple VALUES (7900,'JIMENO', 'EMPLEADO', 7698, '1991/12/03', 1335, NULL, 30);

INSERT INTO emple VALUES (7902,'FERNÁNDEZ','ANALISTA', 7566, '1991/12/03', 3000, NULL, 20);

INSERT INTO emple VALUES (7934,'MUÑOZ', 'EMPLEADO', 7782, '1992/01/23', 1690, NULL, 10);

*/

-- FIN SCRIPT


USE bd_emple;

SELECT * FROM bd_empleados.emple;

/*Ejercicio 1*/

use bd_empleados;

select apellido, oficio, dept_no from emple;

/*ejercicio 2*/

select dept_no from emple;

/*Ejercicio 3*/

select * from emple;

/*Ejercicio 4 */

select * from emple order by apellido asc;

/*Ejercicio 5*/

select * from emple order by dept_no desc;

/*Ejercicio 6*/

select * from emple order by (dept_no)desc , apellido;

/*Ejercicio 7*/

select dept_no, apellido from emple order by dept_no desc, apellido asc;

/*Ejercicio 8*/

select * from emple where salario > 2000;

/*Ejercicio 9*/

select * from emple where oficio='ANALISTA';

/*Ejercicio 10*/

select apellido, oficio from emple where dept_no=20;

/*Ejercicio 11*/

select * from emple order by apellido;

/*Ejercicio 12*/

select * from emple where oficio='vendedor' order by apellido;

/*Ejercicio 13*/

select * from emple where dept_no<>20 order by apellido;
select * from emple where dept_no!=20 order by apellido;
select * from emple where not dept_no=20 order by apellido;

/*Ejercicio 14*/

select * from emple where salario > 2000 limit 1;
select * from emple where salario > 2000 order by salario desc limit 1;

/*Ejercicio 15*/

select * from emple order by oficio,apellido;

/*Ejercicio 16*/

select * from emple where apellido like 'a%';

