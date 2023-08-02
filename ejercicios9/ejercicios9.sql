CREATE DATABASE bd_ciclismo 

  DEFAULT character SET utf8 COLLATE utf8_general_ci;

USE bd_ciclismo;

CREATE TABLE equipo (

  nomeq    VARCHAR(20) PRIMARY KEY,

  director VARCHAR(50)

);



CREATE TABLE ciclista (

  dorsal INT PRIMARY KEY,

  nombre VARCHAR(50),

  edad   INT,

  nomeq  VARCHAR(20),

  FOREIGN KEY (nomeq) REFERENCES equipo(nomeq)

);



CREATE TABLE etapa (

  netapa  INT PRIMARY KEY,

  km      INT,

  salida  VARCHAR(20),

  llegada VARCHAR(20),

  dorsal  INT,

  FOREIGN KEY (dorsal) REFERENCES ciclista(dorsal)

);



CREATE TABLE puerto (

  nompuerto VARCHAR(20) PRIMARY KEY,

  altura    INT,

  categoria VARCHAR(1),

  pendiente INT,

  netapa    INT,

  dorsal    INT,

  FOREIGN KEY (netapa) REFERENCES etapa(netapa),

  FOREIGN KEY (dorsal) REFERENCES ciclista(dorsal)

);



CREATE TABLE maillot (

  codigo VARCHAR(3) PRIMARY KEY,

  tipo   VARCHAR(20),

  color  VARCHAR(20),

  premio INT

);



CREATE TABLE llevar (

  dorsal INT,

  netapa INT,

  codigo VARCHAR(3),

  PRIMARY KEY (dorsal, netapa, codigo),

  FOREIGN KEY (dorsal) REFERENCES ciclista(dorsal),

  FOREIGN KEY (netapa) REFERENCES etapa(netapa),

  FOREIGN KEY (codigo) REFERENCES maillot(codigo)

);

INSERT INTO equipo VALUES ('Amore Vita', 'Ricardo Padacci');

INSERT INTO equipo VALUES ('Banesto', 'Miguel Echevarría');

INSERT INTO equipo VALUES ('Bresciali-Refin', 'Pietro Armani');

INSERT INTO equipo VALUES ('Carrera', 'Luigi Petroni');

INSERT INTO equipo VALUES ('Gatorade', 'Gian Luca Pacceli');

INSERT INTO equipo VALUES ('Kelme', 'Álvaro Pino');

INSERT INTO equipo VALUES ('Mapei-Clas', 'Juan Fernández');

INSERT INTO equipo VALUES ('Navigare', 'Lorenzo Sciacci');

INSERT INTO equipo VALUES ('Telecom', 'Morgan Reikacrd');

INSERT INTO equipo VALUES ('TVM', 'Steevens Henk');



INSERT INTO ciclista VALUES (1, 'Miguel Indurain', 21, 'Banesto');

INSERT INTO ciclista VALUES (2, 'Pedro Delgado', 29, 'Banesto');

INSERT INTO ciclista VALUES (3, 'Alex Zulle', 20, 'Navigare');

INSERT INTO ciclista VALUES (4, 'Alessio Di Basco', 30, 'TVM');

INSERT INTO ciclista VALUES (5, 'Armand', 17, 'Amore Vita');

INSERT INTO ciclista VALUES (8, 'Jean Van Poppel', 24, 'Bresciali-Refin');

INSERT INTO ciclista VALUES (9, 'Maximo Podel', 17, 'Telecom');

INSERT INTO ciclista VALUES (10, 'Mario Cipollini', 31, 'Carrera');

INSERT INTO ciclista VALUES (11, 'Eddy Seigneur', 20, 'Amore Vita');

INSERT INTO ciclista VALUES (12, 'Alessio Di Basco', 34, 'Bresciali-Refin');

INSERT INTO ciclista VALUES (13, 'Gianni Bugno', 24, 'Gatorade');

INSERT INTO ciclista VALUES (15, 'Jesús Montoya', 25, 'Amore Vita');

INSERT INTO ciclista VALUES (16, 'Dimitri Konishev', 27, 'Amore Vita');

INSERT INTO ciclista VALUES (17, 'Bruno Lealli', 30, 'Amore Vita');

INSERT INTO ciclista VALUES (20, 'Alfonso Gutiérrez', 27, 'Navigare');

INSERT INTO ciclista VALUES (22, 'Giorgio Furlan', 22, 'Kelme');

INSERT INTO ciclista VALUES (26, 'Mikel Zarrabeitia', 30, 'Carrera');

INSERT INTO ciclista VALUES (27, 'Laurent Jalabert', 22, 'Banesto');

INSERT INTO ciclista VALUES (30, 'Melchor Mauri', 26, 'Mapei-Clas');

INSERT INTO ciclista VALUES (31, 'Per Pedersen', 33, 'Banesto');

INSERT INTO ciclista VALUES (32, 'Tony Rominger', 31, 'Kelme');

INSERT INTO ciclista VALUES (33, 'Stefenao della Sveitia', 26, 'Amore Vita');

INSERT INTO ciclista VALUES (34, 'Clauido Chiapucci', 23, 'Amore Vita');

INSERT INTO ciclista VALUES (35, 'Gian Mateo Faluca', 34, 'TVM');



INSERT INTO etapa VALUES (1, 35, 'Valladolid', 'Ávila', 1);

INSERT INTO etapa VALUES (2, 70, 'Salamanca', 'Zamora', 2);

INSERT INTO etapa VALUES (3, 150, 'Zamora', 'Almendralejo', 1);

INSERT INTO etapa VALUES (4, 330, 'Córdoba', 'Granada', 1);

INSERT INTO etapa VALUES (5, 150, 'Granada', 'Almería', 3);



INSERT INTO puerto VALUES ('Puerto Alfa', 2489, '1', 34, 2, 3);

INSERT INTO puerto VALUES ('Puerto Beta', 2789, '1', 44, 4, 3);

INSERT INTO puerto VALUES ('Puerto Efe', 2500, 'E', 17, 4, 2);

INSERT INTO puerto VALUES ('Puerto Triple', 2500, 'E', 17, 4, 2);

INSERT INTO puerto VALUES ('Puerto Nuevo', 2500, 'a', 17, 4, 1);

INSERT INTO puerto VALUES ('Puerto Otro', 2500, 'E', 17, 4, 1);

INSERT INTO puerto VALUES ('Puerto Uno', 2500, 'E', 23, 1, 2);



INSERT INTO maillot VALUES ('MGE', 'General', 'Amarillo', 1000000);

INSERT INTO maillot VALUES ('MMO', 'Montaña', 'Blanco y rojo', 500000);

INSERT INTO maillot VALUES ('MMS', 'Más sufrido', 'Estrellitas rojas', 400000);

INSERT INTO maillot VALUES ('MMV', 'Metas volantes', 'Rojo', 400000);

INSERT INTO maillot VALUES ('MRE', 'Regularidad', 'Verde', 300000);

INSERT INTO maillot VALUES ('MSE', 'Sprint especial', 'Rosa', 300000);



INSERT INTO llevar VALUES (1, 3, 'MGE');

INSERT INTO llevar VALUES (1, 4, 'MGE');

INSERT INTO llevar VALUES (2, 2, 'MGE');

INSERT INTO llevar VALUES (3, 1, 'MGE');

INSERT INTO llevar VALUES (3, 1, 'MMV');

INSERT INTO llevar VALUES (3, 4, 'MRE');

INSERT INTO llevar VALUES (4, 1, 'MMO');

INSERT INTO llevar VALUES (5, 2, 'MMO');







-- 2) Obtener el dorsal y el nombre de los ciclistas cuya edad sea menor o igual que 25 años.


select dorsal, nombre, edad
from ciclista 
where edad <= 25;


-- 3) Obtener el nombre y la altura de todos los puertos de categoría 'E' (Especial).

select nompuerto, altura, categoria
from puerto
where categoria = 'E';



-- 4) Obtener el valor del atributo netapa de aquellas etapas con salida y llegada en la misma ciudad.


select *
from etapa
where llegada in(select salida from etapa)
and salida in (select llegada from etapa);


-- 5) ¿Cuántos ciclistas hay?

select count(dorsal) CantidadDeCiclista
from ciclista;



-- 6) ¿Cuántos ciclistas hay con edad superior a 25 años?


select *
from ciclista
where edad > 25;



-- 7) ¿Cuántos equipos hay?


select count(nomeq) Equipos
from equipo;


-- 8) Obtener la media de edad de los ciclistas.


select avg(edad)
from ciclista;


-- 9) Obtener la altura mínima y máxima de los puertos de montaña.



select min(altura) Minimia, max(altura) Maximo
from puerto;

-- 10) Obtener el nombre de cada ciclista junto con el nombre del equipo al que pertenece

select nombre, nomeq
from ciclista;


-- 11) Obtener el nombre de los ciclistas que sean de Banesto.

select nombre, nomeq
from ciclista
where nomeq = 'Banesto';

-- 12) ¿Cuántos ciclistas pertenecen al equipo Amore Vita?

select nombre, nomeq
from ciclista
where nomeq = 'Amore Vita';

-- 13) Edad media de los ciclistas del equipo TVM.

select avg(edad) EdadMediaTVM
from ciclista
where nomeq = 'TVM';

-- 14) Nombre de los ciclistas que pertenezcan al mismo equipo que Miguel Indurain

select nombre
from ciclista
where nomeq = (select nomeq from ciclista where nombre = 'Miguel Indurain')
and nombre != 'Miguel Indurain';

-- 15) Nombre de los ciclistas que han ganado alguna etapa.

select nombre 
from ciclista
where dorsal in (select dorsal from etapa );

-- 16) Nombre de los ciclistas que han llevado el maillot General.

select c.nombre
from ciclista c
inner join llevar ll on ll.dorsal = c.dorsal
inner join maillot m on m.codigo = ll.codigo
where tipo = 'General';

-- 17) Obtener el nombre del ciclista más joven

select nombre, min(edad) masJoven
from ciclista;


-- 18) Obtener el número de ciclistas de cada equipo.


select nomeq, count(nombre) cantiXequipo
from ciclista group by nomeq;


-- 19) Obtener el nombre de los equipos que tengan más de 5 ciclistas.


select nomeq, count(nombre) cantiXequipo
from ciclista group by nomeq having count(nombre) > 5;


-- 20) Obtener el número de puertos que ha ganado cada ciclista.

select p.nompuerto ,count(p.dorsal) cantidad
from puerto p 
inner join ciclista c on p.dorsal = c.dorsal
group by  p.dorsal;

-- 21) Obtener el nombre de los ciclistas que han ganado más de un puerto.

select c.nombre ,count(p.dorsal) cantiPuertoGanado
from puerto p 
inner join ciclista c on p.dorsal = c.dorsal
group by  p.dorsal having count(p.dorsal) > 1;



-- 22) Obtener el nombre y el director de los equipos a los que pertenezca algún ciclista mayor de 33 años.


select director, nombre nombreDeCiclista, edad
from ciclista c
inner join equipo e on e.nomeq = c.nomeq
where edad > 33;


-- 23) Nombre de los ciclistas que no pertenezcan a Kelme


select * 
from ciclista
where nomeq != 'Kelme';


-- 24) Nombre de los ciclistas que no hayan ganado ninguna etapa.


select *
from ciclista
where dorsal not in (select dorsal from etapa);


-- 25) Nombre de los ciclistas que no hayan ganado ningún puerto de montaña.


select *
from ciclista
where dorsal not in (select dorsal from puerto);


-- 26) Nombre de los ciclistas que hayan ganado más de un puerto de montaña.

select *, count(p.dorsal) cantidad
from ciclista c
inner join puerto p on p.dorsal = c.dorsal
group by p.dorsal having count(p.dorsal) > 1;



-- 27) ¿Qué ciclistas han llevado el mismo maillot que Miguel Indurain?

select dorsal from ciclista where nombre = 'Migue Indurain';

select codigo from llevar where dorsal = 1;

select  *
from ciclista c
inner join llevar ll on ll.dorsal = c.dorsal
inner join maillot m on m.codigo = ll.codigo
where m.codigo = (select distinct codigo from llevar where dorsal = (select dorsal from ciclista where nombre = 'Miguel Indurain'));


-- 28) De cada equipo obtener la edad media, la máxima edad y la mínima edad.


select nomeq NombreDeEquipo ,avg(edad) mediaEdad, max(edad) MaxEdad, min(edad) MinEdad from ciclista group by nomeq;


-- 29) Nombre de aquellos ciclistas que tengan una edad entre 25 y 30 años y que no pertenezcan a los equipos Kelme y Banesto.


select nombre, edad, nomeq from ciclista where edad between 25 and 30 and nomeq not in ('Kelme','Banesto');


-- 30) Nombre de los ciclistas que han ganado la etapa que comienza en Zamora.


select nombre, e.salida
from etapa e
inner join ciclista c on c.dorsal = e.dorsal
where salida = 'Zamora';
-- or llegada  = 'Zamora';


-- 31) Obtén el nombre y la categoría de los puertos ganados por ciclistas del equipo 'Banesto'.

select  distinct nombre, categoria, nomeq
from ciclista c
inner join puerto p on c.dorsal = p.dorsal
where nomeq = 'Banesto';



-- 32) Obtener el nombre de cada puerto indicando el número (netapa) y los kilómetros de la etapa en la que se encuentra el puerto.

select nompuerto, p.netapa, km 
from puerto p
inner join etapa e on e.netapa = p.netapa 
order by p.netapa;


-- 33) Obtener el nombre de los ciclistas con el color de cada maillot que hayan llevado.

select  distinct nombre, color
from ciclista c
inner join llevar ll on ll.dorsal = c.dorsal
inner join maillot m on m.codigo = ll.codigo;

-- 34) Obtener el número de etapa y el nombre de ciclista, tal que ese ciclista haya ganado
--  esa etapa habiendo llevado el maillot de color amarillo al menos una vez con anterioridad.

select netapa, nombre
from ciclista c
inner join llevar ll on ll.dorsal = c.dorsal
inner join maillot m on m.codigo = ll.codigo
where m.color = 'Amarillo';

-- netapa	nombre

-- 4	Miguel Indurain

-- 5	Alex Zulle



-- 35) Obtener el valor del atributo netapa de las etapas que no comienzan en la misma ciudad en que acabó la anterior etapa.

select distinct llegada from etapa;

select * from etapa where salida not in ('Ávila','Zamora','Almendralejo','Granada','Almería');

select netapa, salida from etapa where salida not in (select distinct llegada from etapa);

-- netapa: 1, 2, 4

-- 36) Obtener el valor del atributo netapa y la ciudad de salida de aquellas etapas que no tengan puertos de montaña.

select netapa, salida
from etapa e
where netapa not in(select netapa from puerto);


-- 37) Obtener la edad media de los ciclistas que han ganado alguna etapa.

select avg(edad) mediaCiclistaGanadores
from ciclista
where dorsal in(select dorsal from etapa);

-- 38) Selecciona el nombre de los puertos con una altura superior a la altura media de todos los puertos.

select *
from puerto
where altura > (select avg(altura) from puerto);

-- 39) Obtener el nombre de la ciudad de salida y de llegada de las etapas donde estén los puertos con mayor pendiente.



-- dice puertos si es solo uno:

select *
from etapa e
inner join puerto p on p.netapa = e.netapa
where pendiente = (select max(pendiente) from puerto);

-- Si son varios:

select *
from etapa e
inner join puerto p on p.netapa = e.netapa
where pendiente > (select avg(pendiente) from puerto);

-- 40) Obtener el dorsal y el nombre de los ciclistas que han ganado los puertos de mayor altura.

select *
from puerto p
inner join ciclista c on c.dorsal = p.dorsal
where pendiente = (select max(pendiente) from puerto);

-- or

select *
from puerto p
inner join ciclista c on c.dorsal = p.dorsal
where pendiente > (select avg(pendiente) from puerto);

-- 41) Obtener el nombre del ciclista más joven que ha ganado al menos una etapa.

select * 
from ciclista c
inner join etapa e on e.dorsal = c.dorsal
where c.edad = (select min(edad) from ciclista);

-- 42) Obtener el valor del atributo netapa de aquellas etapas tales que todos los puertos 
-- que están en ellas tienen al menos 2500 metros de altura.

select *
from etapa e
inner join puerto p on e.netapa = p.netapa
where altura >= 2500;

-- 43) Obtener el nombre y el director de los equipos tales que todos sus ciclistas son mayores de 20 años.

select nombre,edad, director
from ciclista c
inner join equipo e on c.nomeq = e.nomeq
where edad > 20;

-- 44) Obtener el dorsal y el nombre de los ciclistas tales que todas las etapas que han ganado 
-- tienen al menos 150 km (es decir que sólo han ganado etapas de más o igual a 150 km).

select e.dorsal, nombre
from ciclista c
inner join etapa e on c.dorsal = e.dorsal
where km >= 150;

-- 45) Obtener el nombre de los ciclistas que han ganado una etapa y algún puerto de esa misma etapa. 

select *
from ciclista c
inner join puerto p on p.dorsal = c.dorsal
inner join etapa e on e.dorsal = c.dorsal and e.netapa = p.netapa;
