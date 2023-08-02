

Create database bd_libros2;

use bd_libros2;

create table libros(

  titulo varchar(40),

  autor varchar(30),

  editorial varchar(15)

 );

 insert into libros

  values('El aleph','Borges','Planeta');

 insert into libros

  values('Martin Fierro','Jose Hernandez','Emece');

 insert into libros

  values('Martin Fierro','Jose Hernandez','Planeta');

 insert into libros

  values('Antologia poetica','Borges','Planeta');

 insert into libros

  values('Aprenda PHP','Mario Molina','Emece');

 insert into libros

  values('Aprenda PHP','Lopez','Emece');

 insert into libros

  values('Manual de PHP', 'J. Paez', null);

 insert into libros

  values('Cervantes y el quijote',null,'Paidos');

 insert into libros

  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');

 insert into libros

  values('Harry Potter y la camara secreta','J.K. Rowling','Emece');

 insert into libros

  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');

 insert into libros

  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros

  values('PHP de la A a la Z',null,null);

 insert into libros

  values('Uno','Richard Bach','Planeta');




use bd_libros2;
select distinct autor from libros;

-- Mira que aparece "null" como un valor para "autor"· Para obtener la lista 
-- de autores conocidos, es decir, no incluyendo "null" en la lista:

select distinct autor from libros where autor is not null;

-- Queremos los nombres de las editoriales sin repetir

select distinct editorial from libros;

-- La combinamos con "where" para obtener los distintos autores de la editorial "Planeta".

select distinct autor from libros where editorial="Planeta";

-- Mostramos los títulos y editoriales de los libros sin repetir títulos ni editoriales

select distinct titulo, editorial from libros;

-- Mostramos sin repeticiones los autores junto a sus editoriales, ordenados por editorial y nombre de autor alfabéticamente.

select distinct autor, editorial from libros order by editorial, autor;