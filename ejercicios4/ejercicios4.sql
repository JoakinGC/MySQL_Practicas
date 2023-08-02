create database IF NOT EXISTS libros;

use libros;

-- Eliminamos la tabla:

 drop table  IF EXISTS libros;



-- Creamos la tabla:

 create table libros(

  codigo int(5),

  titulo varchar(40),

  autor varchar(30) default 'Desconocido',

  editorial varchar(15),  precio int,

  cantidad int(3),  primary key(codigo) );



-- Ingresamos algunos registros:

 insert into libros  values(100,'El aleph','Borges','Planeta',15,null);

 insert into libros  values(234,'Martin Fierro','Jose Hernandez','Emece',22.20,200);

 insert into libros  values(354,'Antologia poetica',default,'Planeta',null,150);

 insert into libros  values(478,'Aprenda PHP','Mario Molina','Emece',18.20,null);

 insert into libros  values(512,'Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',28,100);

 insert into libros  values(643,'Manual de PHP', default, 'Siglo XXI',31.80,120);

 insert into libros  values(646,'Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);

 insert into libros  values(753,'Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);

 insert into libros  values(889,'Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);

 insert into libros  values(893,'PHP de la A a la Z',null,null,55.90,0);
 
 
 use libros;
 -- Queremos saber la cantidad de titulos titulos de cada editorial, utilizando la cláusula 
 -- "group by": (El resultado muestra los nombres de las editoriales y la cantidad de registros para cada 
 -- valor del campo. Note que los valores nulos se procesan como otro grupo.)
 
 select * from libros order by editorial;
 
 -- select count(titulo), titulo, cantidad from libros  group by editorial order by  count(titulo);
 
  select count(titulo), editorial from libros  group by editorial;
 
 
 -- Obtenemos la cantidad libros con precio no nulo de cada editorial:
 
 select editorial,count(*) from libros where precio is not null and cantidad is not null group by editorial;
 
 -- Para conocer el total de copias de los libros agrupados por editorial:
 
 select sum(cantidad) from libros group by editorial;
 
 -- Obtenemos el máximo y mínimo valor de los libros agrupados por editorial, en una sola sentencia:
 
 select max(precio), min(precio) from libros group by editorial;
 
 -- Calculamos el promedio del valor de los libros agrupados por editorial:
 
 select avg(precio) from libros group by editorial;
 
 -- Es posible limitar la consulta con "where". Vamos a contar y agrupar 
 -- por editorial considerando solamente los libros cuyo precio es menor a 30 euros:
 
 
 select * from libros where precio < 30 group by editorial;
 
 -- Queremos saber la cantidad total de libros de cada editorial, utilizando la cláusula "group by": (El resultado muestra 
 -- los nombres de las editoriales y la cantidad de registros 
 -- para cada valor del campo. Note que los valores nulos se procesan como otro grupo.)
 
 
 -- agrupa por editorial, titulo, autor. ¿Qué conclusión sacas?
 
 select * from libros group by editorial, titulo, autor;
 
  -- Muestra la editorial que más libros tiene (con lo que sabemos hasta ahora)
  
  select editorial, sum(cantidad) as cantidadTotal from libros group by editorial order by cantidadTotal desc limit 1;
  
  select * from libros;
  
  -- Que editoriales tienen más de 2 libros publicados
  
  select editorial, count(*) as cantidad from libros group by editorial order by cantidad desc;
  
  select ifnull(editorial,'desconocido')  as editorial from libros group by editorial having count(editorial) > 2;
  
  select ifnull(editorial,'desconocido') from libros group by editorial;
 
 
 
 -- Que autores que empiecen por A tienen más de 2 libros publicados
 
 select * from libros group by autor having count(autor) > 2 and autor like "A%";
 
 -- Editoriales que empiecen por B y tengan autores que contengan la letra Z (listado unico de editorales)
 
 insert into libros  values(880,'Alicia de las maravillas locas','Ber Zapiens','Beir',22.50,200);
 
 select * from libros having editorial like "B%" and autor like "%Z%";
 
 delete from libros where codigo = 880;
 
