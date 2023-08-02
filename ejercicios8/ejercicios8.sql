-- Inicio script para la creación de la base de datos :



CREATE DATABASE bd_software;

USE bd_software;

CREATE TABLE fabricante(

  id_fab INTEGER PRIMARY KEY,

  nombre VARCHAR(50),

  pais   VARCHAR(30)

);



CREATE TABLE programa(

  codigo INTEGER PRIMARY KEY,

  nombre VARCHAR(50),

  version VARCHAR(50)

);



CREATE TABLE comercio(

  cif INTEGER PRIMARY KEY,

  nombre VARCHAR(50),

  ciudad VARCHAR(50)

);



CREATE TABLE cliente(

  dni INTEGER PRIMARY KEY,

  nombre VARCHAR(50),

  edad INTEGER

);



CREATE TABLE desarrolla(

  id_fab INTEGER,

  codigo INTEGER,

  PRIMARY KEY (id_fab, codigo),

  FOREIGN KEY (id_fab) REFERENCES fabricante(id_fab),

  FOREIGN KEY (codigo) REFERENCES programa(codigo)

);



CREATE TABLE distribuye(

  cif INTEGER,

  codigo INTEGER,

  cantidad INTEGER,

  PRIMARY KEY (cif, codigo),

  FOREIGN KEY (cif) REFERENCES comercio(cif),

  FOREIGN KEY (codigo) REFERENCES programa(codigo)

);



CREATE TABLE registra(

  cif INTEGER,

  dni INTEGER,

  codigo INTEGER,

  medio VARCHAR(20),

  PRIMARY KEY (cif, dni, codigo),

  FOREIGN KEY (cif) REFERENCES comercio(cif),

  FOREIGN KEY (dni) REFERENCES cliente(dni),

  FOREIGN KEY (codigo) REFERENCES programa(codigo)

);



INSERT INTO fabricante VALUES (1,'Oracle','Estados Unidos');

INSERT INTO fabricante VALUES (2,'Microsoft','Estados Unidos');

INSERT INTO fabricante VALUES (3,'IBM','Estados Unidos');

INSERT INTO fabricante VALUES (4,'Dinamic','España');

INSERT INTO fabricante VALUES (5,'Borland','Estados Unidos');

INSERT INTO fabricante VALUES (6,'Symantec','Estados Unidos');



INSERT INTO programa VALUES (1,'Application Server','9i');

INSERT INTO programa VALUES (2,'Oracle Database','8i');

INSERT INTO programa VALUES (3,'Database','9i');

INSERT INTO programa VALUES (4,'Database','10g');

INSERT INTO programa VALUES (5,'Developer','6i');

INSERT INTO programa VALUES (6,'Access','97');

INSERT INTO programa VALUES (7,'Access','2000');

INSERT INTO programa VALUES (8,'Access','XP');

INSERT INTO programa VALUES (9,'Windows','98');

INSERT INTO programa VALUES (10,'Windows','XP Professional');

INSERT INTO programa VALUES (11,'Windows','XP Home Edition');

INSERT INTO programa VALUES (12,'Windows','2003 Server');

INSERT INTO programa VALUES (13,'Norton Internet Security','2004');

INSERT INTO programa VALUES (14,'Freddy Hardest',NULL);

INSERT INTO programa VALUES (15,'Paradox','2');

INSERT INTO programa VALUES (16,'C++ Builder','5.5');

INSERT INTO programa VALUES (17,'DB/2','2.0');

INSERT INTO programa VALUES (18,'OS/2','1.0');

INSERT INTO programa VALUES (19,'JBuilder','X');

INSERT INTO programa VALUES (20,'La prisión','1.0');



INSERT INTO comercio VALUES (1,'El Corte Inglés','Sevilla');

INSERT INTO comercio VALUES (2,'El Corte Inglés','Madrid');

INSERT INTO comercio VALUES (3,'Jump','Valencia');

INSERT INTO comercio VALUES (4,'Centro Mail','Sevilla');

INSERT INTO comercio VALUES (5,'FNAC','Barcelona');



INSERT INTO cliente VALUES (1,'Pepe Pérez',45);

INSERT INTO cliente VALUES (2,'Juan González',45);

INSERT INTO cliente VALUES (3,'María Gómez',33);

INSERT INTO cliente VALUES (4,'Javier Casado',18);

INSERT INTO cliente VALUES (5,'Nuria Sánchez',29);

INSERT INTO cliente VALUES (6,'Antonio Navarro',58);



INSERT INTO desarrolla VALUES (1,1);

INSERT INTO desarrolla VALUES (1,2);

INSERT INTO desarrolla VALUES (1,3);

INSERT INTO desarrolla VALUES (1,4);

INSERT INTO desarrolla VALUES (1,5);

INSERT INTO desarrolla VALUES (2,6);

INSERT INTO desarrolla VALUES (2,7);

INSERT INTO desarrolla VALUES (2,8);

INSERT INTO desarrolla VALUES (2,9);

INSERT INTO desarrolla VALUES (2,10);

INSERT INTO desarrolla VALUES (2,11);

INSERT INTO desarrolla VALUES (2,12);

INSERT INTO desarrolla VALUES (6,13);

INSERT INTO desarrolla VALUES (4,14);

INSERT INTO desarrolla VALUES (5,15);

INSERT INTO desarrolla VALUES (5,16);

INSERT INTO desarrolla VALUES (3,17);

INSERT INTO desarrolla VALUES (3,18);

INSERT INTO desarrolla VALUES (5,19);

INSERT INTO desarrolla VALUES (4,20);



INSERT INTO distribuye VALUES (1,1,10);

INSERT INTO distribuye VALUES (1,2,11);

INSERT INTO distribuye VALUES (1,6,5);

INSERT INTO distribuye VALUES (1,7,3);

INSERT INTO distribuye VALUES (1,10,5);

INSERT INTO distribuye VALUES (1,13,7);

INSERT INTO distribuye VALUES (2,1,6);

INSERT INTO distribuye VALUES (2,2,6);

INSERT INTO distribuye VALUES (2,6,4);

INSERT INTO distribuye VALUES (2,7,7);

INSERT INTO distribuye VALUES (3,10,8);

INSERT INTO distribuye VALUES (3,13,5);

INSERT INTO distribuye VALUES (4,14,3);

INSERT INTO distribuye VALUES (4,20,6);

INSERT INTO distribuye VALUES (5,15,8);

INSERT INTO distribuye VALUES (5,16,2);

INSERT INTO distribuye VALUES (5,17,3);

INSERT INTO distribuye VALUES (5,19,6);

INSERT INTO distribuye VALUES (5,8,8);



INSERT INTO registra VALUES (1,1,1,'Internet');

INSERT INTO registra VALUES (1,3,4,'Tarjeta postal');

INSERT INTO registra VALUES (4,2,10,'Teléfono');

INSERT INTO registra VALUES (4,1,10,'Tarjeta postal');

INSERT INTO registra VALUES (5,2,12,'Internet');

INSERT INTO registra VALUES (2,4,15,'Internet');



-- Fin script



-- Consultas 

-- 1.- Averigua el DNI de todos los clientes:


select dni, nombre
from cliente;


-- 2 Consulta todos los datos de todos los programas: 

select * from programa;

-- 3 Obtén un listado con los nombres de todos los programas:

select nombre 
from programa;

-- 4 Genera una lista con todos los comercios: 

select distinct nombre from comercio;

-- 5 Genera una lista de las ciudades con establecimientos donde se venden programas,
--  sin que aparezcan valores duplicados (utiliza DISTINCT): 

select distinct ciudad, nombre
from comercio;

-- 6 Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados (utiliza DISTINCT) :

select nombre
from programa
group by nombre;

-- 7 Obtén el DNI más 4 de todos los clientes:

select dni, nombre
from cliente
limit 4;

-- 8 Haz un listado con los códigos de los programas multiplicados por 7: 

select *
from programa;

-- 9 ¿Cuáles son los programas cuyo código es inferior o igual a 10?

select * 
from programa 
where codigo <= 10;

-- 10 ¿Cuál es el programa cuyo código es 11?

select *
from programa 
where codigo = 11;

-- 11 ¿Qué fabricantes son de Estados Unidos?

select *
from fabricante
where pais = 'Estados Unidos';

-- 12 ¿Cuáles son los fabricantes no españoles? Utilizar el operador IN.

select *
from fabricante
where pais in (select pais from fabricante where pais != 'España');

-- 13 Obtén un listado con los códigos de las distintas versiones de Windows: 

select *
from programa 
where nombre = 'Windows';

-- 14 ¿En qué ciudades comercializa programas El Corte Inglés? 

select nombre, ciudad
from comercio
where nombre = 'El Corte Ingles';

-- 15 ¿Qué otros comercios hay, además de El Corte Inglés? Utilizar el operador IN.

select  * 
from comercio
where nombre in (select nombre from comercio where nombre != 'El Corte Ingles');


-- 16 Genera una lista con los códigos de las distintas versiones de Windows y Access. Utilizar el operador IN.

select *
from programa 
where nombre in ('Windows', 'Access');

-- 17 Obtén un listado que incluya los nombres de los clientes de edades comprendidas 
-- entre 10 y 25 y de los mayores de 50 años. Da una solución con BETWEEN y otra sin BETWEEN:


select nombre, edad
from cliente
where edad between 10 and 25 or edad > 50;

select nombre, edad
from cliente
where edad > 10 and edad < 25 or edad > 50;

-- 18 Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados:

select distinct ciudad, nombre
from comercio 
where ciudad in('Sevilla','Madrid');


-- 19 ¿Qué clientes terminan su nombre en la letra “o”?

select * 
from cliente 
where nombre like '%o';

-- 20 ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años? 

select *
from cliente
where nombre like '%o' and edad > 30;

-- 21 Obtén un listado en el que aparezcan los programas cuya versión finalice
--  por una letra i, o cuyo nombre comience por una A o por una W:


select *
from programa
where nombre like 'A%' or nombre like 'W%' and version like '%i' ;


-- 22 Obtén un listado en el que aparezcan los programas cuya versión
--  finalice por una letra i, o cuyo nombre comience por una A y termine por una S.

select *
from programa 
where version like '%i' and nombre like 'A%S';

-- 23 Obtén un listado en el que aparezcan los programas cuya 
-- versión finalice por una letra i, y cuyo nombre no comience por una A.

Select * from programa where version like '%i' and nombre like 'a%';

-- 24 Obtén una lista de empresas por orden alfabético ascendente.

select * from fabricante order by nombre;

-- 25 Genera un listado de empresas por orden alfabético descendente: 

select * from fabricante order by nombre desc;

-- 26 Obtén un listado de programas por orden de versión:

select * from programa group by version order by version;

-- 27 Genera un listado de los programas que desarrolla Oracle.

select *
from fabricante as f
inner join desarrolla as d on d.id_fab = f.id_fab
inner join programa as p on p.codigo = d.codigo
where f.nombre = 'Oracle';

-- 28 ¿Qué comercios distribuyen Windows? 

select *
from comercio as c
inner join distribuye as d on d.cif = c.cif
inner join programa as p on p.codigo = d.codigo
where p.nombre = 'Windows';

-- 29 Genera un listado de los programas y cantidades que  ha distribuido  El Corte Inglés de Madrid: 

select p.nombre, sum(d.cantidad), c.nombre as nombreComercio
from programa as p
inner join distribuye as d on p.codigo = d.codigo
inner join comercio as c on c.cif = d.cif
where c.nombre = 'El Corte Inglés'
and c.ciudad = 'Madrid' group by p.nombre;

-- 30 ¿Qué fabricante ha desarrollado Freddy Hardest?


select f.nombre, p.nombre as NombreDeJuego 
from fabricante as f
inner join desarrolla as d on d.id_fab = f.id_fab
inner join programa as p on p.codigo = d.codigo
where p.nombre = 'Freddy Hardest';


select f.nombre, p.nombre as NombreDeJuego
from fabricante as f, desarrolla as d, programa as p
where d.id_fab = f.id_fab 
and p.codigo = d.codigo
and p.nombre = 'Freddy Hardest';

-- 31 Selecciona el nombre de los programas que se registran por Internet: 

select distinct p.nombre, r.medio as SeRegistran
from programa as p
inner join registra as r on r.codigo = p.codigo
where r.medio = 'Internet';


-- 32 Selecciona el nombre de las personas que se registran por Internet.

select c.nombre, r.medio
from cliente as c
inner join registra as r on r.dni = c.dni
where r.medio = 'Internet';

-- 33 ¿Qué medios ha utilizado para registrarse Pepe Pérez? 

select c.nombre, r.medio
from cliente as c
inner join registra as r on r.dni = c.dni
where c.nombre = 'Pepe Pérez';

-- 34 ¿Qué usuarios han optado por Internet como medio de registro? 

select c.nombre, r.medio
from cliente as c
inner join registra as r on r.dni = c.dni
where r.medio = 'Internet';


-- 35 ¿Qué programas han recibido registros por tarjeta postal? 

select p.nombre, r.medio
from programa as p
inner join registra as r on r.codigo = p.codigo
where r.medio = 'Tarjeta Postal';

-- 36 ¿En qué localidades se han vendido productos que se han registrado por Internet? 

select c.ciudad, r.medio
from comercio as c
inner join registra as r on r.cif = c.cif
where r.medio = 'Internet';


-- 37 Obtén un listado de los nombres de las personas que se han registrado por Internet, 
-- junto al nombre de los programas para los que ha efectuado el registro:


select c.nombre, r.medio, p.nombre
from cliente as c
inner join registra as r on r.dni = c.dni
inner join programa as p on p.codigo = r.codigo
where r.medio = 'Internet';



-- 38 Genera un listado en el que aparezca cada cliente junto al programa que 
-- ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido:

-- Nota: se ha ampliado la consulta para que se vea que son tuplas distintas (no repetidas)

select distinct c.nombre, p.nombre as ProgramaRegistrado,
r.medio, co.nombre as ComercioAdquirido 
from cliente as c
inner join registra as r on  c.dni = r.dni
inner join programa as p on p.codigo = r.codigo
inner join comercio as co on co.cif = r.cif;

-- 39 Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.


select distinct  c.ciudad
from comercio as c
inner join distribuye as d on d.cif = c.cif
inner join programa as p on d.codigo = p.codigo
inner join desarrolla as de on de.codigo = p.codigo
inner join fabricante as f on f.id_fab = de.id_fab 
where f.nombre = 'Oracle';




-- 40 Obtén el nombre de los usuarios que han registrado Access XP: 



select *
from cliente
where dni in( select dni from registra where codigo =
(select codigo from programa where nombre = "Access" and version = 'XP') );

-- 41 Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta): 

select *
from fabricante
where pais = (select pais from fabricante where nombre = 'Oracle')
and nombre != 'Oracle';

-- 42 Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez.(Subconsulta):

select * 
from cliente as c
where
edad = (select edad from cliente where nombre = "Pepe Pérez")
and nombre != 'Pepe Pérez';

-- 43 Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta):

select c.nombre
from comercio as c
where ciudad in (select ciudad from comercio where nombre = 'FNAC') 
and nombre != 'FNAC';



-- 44 Nombre de aquellos clientes que han registrado un producto
--  de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta):




select dni from cliente 
where nombre = "Pepe Pérez";

select medio from registra 
where dni = 1;

select * 
from cliente as c, registra as r
where c.dni = r.dni 
and c.nombre != "Pepe Pérez"
and r.medio in 
(select medio 
from registra 
where dni = 
(select dni 
from cliente 
where nombre = "Pepe Pérez"));









select c.nombre , p.codigo
from cliente as c
inner join  registra as r on r.dni = c.dni 
inner join programa as p on p.codigo = r.codigo
	and  p.codigo = (
    select codigo 
    from registra as r2 
    where r2.codigo=r.codigo 
    and r2.dni=c.dni and c.nombre="Pepe Pérez" 
    ) and c.nombre != "Pepe Pérez";
    






-- 45 Obtener el número de programas que hay en la tabla programas.

select distinct count(nombre) as cantProgramas
 from programa;

-- 46 Calcula el número de clientes cuya edad es mayor de 40 años.

select count(edad) as cantidadClientes from
cliente as c where edad > 40;

-- 47 Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1.

select sum(d.cantidad) as NumeroVendidos
from comercio as c, distribuye as d
where
c.cif = d.cif and c.cif = 1;

-- 48 Calcula la media de programas que se venden cuyo código es 7. 

select avg(d.cantidad) as MediaVentas
from distribuye as d, programa as p
where 
p.codigo = d.codigo and p.codigo = 7;


-- 49 Calcula la mínima cantidad de programas de código 7 que se ha vendido


select min(d.cantidad) as MinimaCantidad 
from distribuye as d, programa as p
where 
p.codigo = d.codigo and p.codigo = 7;


-- 50 Calcula la máxima cantidad de programas de código 7 que se ha vendido.

select sum(d.cantidad) as maximaCantidad
from distribuye as d, programa as p 
where
p.codigo = d.codigo and p.codigo = 7;


-- 51 ¿En cuántos establecimientos se vende el programa cuyo código es 7? 

select count(c.nombre) 
from comercio as c, distribuye as d, programa as p
where
p.codigo = d.codigo and d.cif = c.cif and p.codigo = 7;


-- 52 Calcular el número de registros que se han realizado por Internet.


select count(*) as numeroRegistroPorInternet
from registra
where medio = "internet";


-- 53 Obtener el número total de programas que se han vendido en ʻsevillaʼ.

select count(p.nombre) as NumProgramas from programa as p , distribuye as d, comercio as c 
where 
c.cif = d.cif
and 	
d.codigo = p.codigo
and 
c.ciudad = 'Sevilla';


