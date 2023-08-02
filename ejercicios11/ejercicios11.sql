
-- 1- Devolver la categoria, el id de la pelicula y descripcion de categoria drama.

select f.title titulo,fc.film_id id, f.description 
 from category c, film_category fc, film f
where c.category_id = fc.category_id 
and fc.film_id = f.film_id 
and c.name = 'Comedy';

-- 2 Aquellas ciudades que son de españa:

select * 
from city ci, country co
where ci.country_id = co.country_id
and co.country = 'Spain'
group by country;


-- 3 Aquellas pelicuals con mayor rental rate y  dentro de la mayor ordenar con la maxima duracion hasta la minima

select * 
from film 
where rental_rate = (select max(rental_rate) from film) 
order by rental_duration desc;


-- 4 Aquellas tiendas que  rentan las pelicualas con el actor DAN.

select *
from actor a, film_actor fi, film fil, inventory inv, store st
where a.actor_id = fi.actor_id
and fi.film_id = fil.film_id and fi.film_id = inv.film_id
and st.store_id = inv.store_id
and a.first_name = 'DAN';

-- 5 Nombre de las ciudades a las que pertenecen los clientes con su primer nombre.
SELECT customer.first_name, city.city  
  FROM customer, address, city
   WHERE customer.address_id = address.address_id
    AND address.city_id = city.city_id;
        
        


-- 6 Nombre de los emails de los clientes que tengan un pago del importe entre dos y cuatro.
 SELECT customer.email, payment.amount 
  FROM customer, payment
   WHERE customer.customer_id = payment.customer_id
    AND payment.amount between 2 AND 4;
        
-- 7 SELECCIONAR LA FECHA DE RENTA DEL TITULO DE LAS PELICULAS QUE TERMINEN EN 'P':
SELECT rental.rental_date, film_text.title 
 FROM rental, inventory, film_text
  WHERE rental.inventory_id = inventory.inventory_id
   AND inventory.film_id = film_text.film_id
    AND film_text.title LIKE '%p';
    
--  8) Mostrar el año de lanzamiento (release_year) de la película Clash Freddy

select f.release_year
from film f,inventory i,film_text ft
where  f.film_id=i.film_id AND
  i.film_id=ft.film_id AND
        ft.title LIKE 'clash freddy';

-- 9) Mostrar el nombre (first_name) y apellido (last_name) de los actores de la película Open African.
select a.first_name,a.last_name
from film f,film_actor fa,actor a 
where  f.film_id=fa.film_id AND
  fa.actor_id=a.actor_id AND
        f.title like 'open african';
        
-- 10) Mostrar la cantidad de títulos (films) en idioma inglés agrupados por cantidad de días de renta (rental_duration)
select count(*) as Cantidad_de_titulos, f.rental_duration
from film f,language l
where  f.language_id=l.language_id and
  l.name like 'english'
group by f.rental_duration;