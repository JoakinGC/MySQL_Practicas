

use bd_liga;


-- 1 Listar los nombres de los jugadores que tienen asignado el al capitan Navarro 
-- (suponiendo que no pueden haber jugadores con el mismo nombre).


select nombre from jugadores where id_capitan = (select id_jugador from jugadores where apellido = "Navarro");

-- 2 Listar los jugadores que trabajan en equipos de valencia



-- segundo localizar todos los equipos que tengan esa localidad
-- tercero listar todos los jugadores que estan en esos equipos

select * from jugadores, equipos
where ciudad = (select ciudad from equipos where ciudad = "Valencia") and 
id_equipo = equipo;

select *
from jugadores as j
join equipos as e on e.id_equipo = j.equipo and e.ciudad = 'Valencia';

select *
from jugadores as j
where exists (select id_equipo from equipos where id_equipo=j.equipo and ciudad='Valencia');

select * from equipos;




-- 3 Listar los jugadores que no jueguen en equipos de la misma ciudad que Felipe Reyes.


-- saber en que ciudad juega felipe reyes
-- que devuelva equipo y comparlo con id de la tabla equipos y que devuelva la ciudad 
-- y todo los id diferentes de ese id listarlos

select * from jugadores, equipos where id_equipo = equipo and not ciudad = 
(select ciudad from equipos where id_equipo = 
(select equipo from jugadores where nombre="Felipe" and apellido = "Reyes"));

-- 4 Listar los jugadores que sean del Real madrid y tengan una altura superior a la media.

select j.* 
from jugadores as j
join equipos as e on e.id_equipo = j.equipo and e.nombre = "Real Madrid"
where altura > (select avg(altura) from jugadores);


select jugadores.nombre, equipos.nombre from jugadores, equipos 
where id_equipo = equipo and equipo = 
(select id_equipo from equipos where nombre = "Real Madrid") 
having altura > avg(altura);

select jugadores.nombre, jugadores.altura , equipos.nombre 
from jugadores, equipos 
where 
id_equipo = equipo 
and 
equipo = (select id_equipo from equipos where nombre = "Real Madrid") 
and 
jugadores.altura > (  select avg(altura) from jugadores);


-- no termino de enterder porque el having en este caso 
-- no funciona por lo que es mejor hacer una busqueda con otro select

select avg(altura) from jugadores;

 SELECT *  FROM jugadores  
 where altura > (select avg(altura) from jugadores where altura is not null  ) 
 and equipo = (select  id_equipo from equipos where nombre='Real Madrid'  )  ;
 
 select * from jugadores where altura > (select avg(altura) from jugadores) and
 equipo = (select  id_equipo from equipos where nombre='Real Madrid'  )