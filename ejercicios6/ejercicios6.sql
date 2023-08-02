Create database bd_libros3;

use bd_libros3;



 create table libros(

  titulo varchar(40),

  autor varchar(20) default 'Desconocido',

  editorial varchar(20),

  edicion date,

  precio int

 );

 

-- Ingresamos algunos registros:



 insert into libros

  values('El aleph','Borges','Emece','2005-12-01',15.90);

 insert into libros

  values('Antología poética','J. L. Borges','Planeta','2002-04-25',null);

 insert into libros

  values('Alicia en el pais de las maravillas','Lewis Carroll',null,'2000-04-25',19.90);

 insert into libros

  values('Matematica estas ahi','Paenza','Siglo XXI','2006-12-01',15);

 insert into libros

  values('Martin Fierro','Jose Hernandez',default,'2001-09-11',40);

 insert into libros

  values('Aprenda PHP','Mario Molina','Nuevo siglo','1999-05-22',56.50);

 insert into libros

  values(null,'Mario Molina','Nuevo siglo',null,45);
  
  use bd_libros3;
  
  
  -- Recuperamos todos los libros que contengan en el campo "autor" la cadena "Borges":
  
  select * from libros where autor="Borges";
  
  -- Seleccionamos los libros cuyos títulos comienzan con la 
  -- letra "M" (Nota que los valores nulos no se incluyen en la búsqueda.)
  
  select * from libros where titulo like "M%" and titulo is not null;
  
  -- Seleccionamos todos los títulos que NO comienzan con "M":
  
  select * from libros where titulo not like "M%";
  
  -- Si queremos ver los libros de "Lewis Carroll" pero no recordamos si se escribe "Carroll" o 
  -- "Carrolt", podemos emplear el comodín "_" (guión bajo) y establecer la siguiente condición:
  select * from libros where autor like "Lewis Carro__";
  
  -- Recuperamos todos los libros que contengan en el campo "edicion", en la parte correspondiente al 
  -- mes, la cadena "05": (Note que especificamos que los 2 primeros caracteres (2 guiones bajos) pueden 
  -- ser cualquier caracter, luego una barra seguida de "05" y que finalice con cualquier número de caracteres.)
  
  select * from libros where edicion like "____-05-__";
  

