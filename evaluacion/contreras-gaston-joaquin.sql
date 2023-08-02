-- ejercicios de evaluacionde base de datos Nº1:

-- El vendedor con mas ventas y cargo

select nombre,apellidos , empleado_id, count(empleado_id) cantidad, sum(pe.cargo), fecha_pedido
from pedidos pe
inner join empleados em on pe.empleado_id = em.id
group by empleado_id
order by sum(pe.cargo) desc limit 1;

-- Muestra todas las columnas de la tabla detalles mas una columna con el importe total de cada producto

select de.*, sum(de.precio_unidad)
from detalles de
inner join productos pr on pr.id = de.producto_id
group by id;
SHOW COLUMNS IN  detalles;  

select 
pedido_id,
producto_id, 
precio_unidad, 
cantidad,
precio_unidad * cantidad as total
from detalles ;


-- Para cada pedido, muestra su id pedido y su importe total calculado a partir de su detalle. 
-- De esos pedidos, dime los superiores a 1500

select pedido_id, sum(precio_unidad) importeTotal
from detalles de
group by pedido_id
having sum(precio_unidad) > 15000;

select pedido_id, (precio_unidad * cantidad) as total
from detalles de
where (precio_unidad * cantidad) > 15000;

-- Mostrar el nombre del producto y el nombre de la categoria de todos los productos que
-- NO contengan la letra "Queso".


select producto, categoria
from productos pr
inner join categorias ca on ca.id = pr.categoria_id
where categoria not like '%Queso%' 
and producto not like '%Queso%';


-- Los pedidos que hizo la empleada NANCY. Ayuda: muestra todas las columnas de la tabla pedido.
select em.nombre, pe.*
from empleados em
inner join pedidos pe on pe.empleado_id = em.id
where nombre = 'Nancy';

-- Clientes que compraron más de 2 veces productos cárnicos

select cl.contacto
from clientes cl
inner join pedidos pe on cl.id = pe.cliente_id
inner join detalles de on de.pedido_id = pe.id
inner join productos pr on pr.id = de.producto_id
where pr.producto = 'cárnicos'
group by cl.id
having count(cl.id) > 2;

-- Cuantos productos hay de cada categoria y cual es el precio máximo del producto de cada categoria.
select categoria_id, count(pr.id), max(precio_unidad)
from productos pr
group by categoria_id
order by precio_unidad desc;

select ca.descripcion, count(pr.id), max(pr.precio_unidad)
from categorias ca
join productos pr on pr.categoria_id = ca.id
group by ca.descripcion;

-- Crear una agenda que reuna la informacion de clientes, provedores y empleados. Es decir
-- , mostrar el nombre de conctato, el cargo que tiene, la empresa para que trabaja, telefono
-- y tipo de persona(cliente,proveedor o empleado).
-- Ayuda: los emeplados pertenecen todos a la empresa "NEPTUNO".

select  nombre, cargo , 'Neptuno', telefono_domicilio, 'Empleados' from empleados 
union
select contacto, cargo_contacto, empresa, telefono, 'Cliente' from clientes
union
select contacto, cargo_contacto, empresa, telefono, 'Provedor'  from proveedores;

-- Llamar a los clientes que no hayan comprado nada desde hace más de un año desde la fecha de hoy. para ello, 
-- los tendras que
 /* listar. de la siguiente manera: coigo(empresa), telefono, ciudad(pais).*/
 
 select empresa, telefono, ciudad, pais
 from clientes cl
 inner join pedidos pe on pe.cliente_id = cl.id
 where fecha_pedido  < '1998-01-01'
 group by cliente_id;
  
 select  cliente_id,empresa, telefono, ciudad, pais, max(pe.fecha_pedido)
 from clientes cl
 join pedidos pe on pe.cliente_id = cl.id
 where fecha_pedido <  date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
 and  cliente_id not in  (
	select cliente_id from pedidos 
	where fecha_pedido > date_add( (select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
    )
 #and (select count(id) from pedidos where cliente_id=pe.cliente_id 
 #	and fecha_pedido > date_add( (select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)) =0
 group by  cl.id;
 
 
 ## PRUEBA2
 select  cl.id,empresa, telefono, ciudad, pais, max(pe.fecha_pedido) , max(pe2.fecha_pedido)
 from clientes cl
 left join pedidos pe on pe.cliente_id = cl.id and
	pe.fecha_pedido <  date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
 left join pedidos pe2 on pe2.cliente_id = cl.id 
 and  pe2.fecha_pedido >  date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
 group by cl.id
 order by cl.id;
 

# ultima fecha pedido 1998-05-06 
# ultimo año : 1997-05-06 | 1998-05-06
# 88 clientes pidieron en el ultimo año

 
 #order by cliente_id;
 #where fecha_pedido <  date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
 /*and not exists  (
    select cliente_id 
    from pedidos
	 where fecha_pedido >  '1997-06-05'
	 order by fecha_pedido desc
 ) */

 

 
 select   distinct(cliente_id) #, fecha_pedido
 from clientes cl
 join pedidos pe on pe.cliente_id = cl.id
 where fecha_pedido >  date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR)
 order by fecha_pedido desc;
  
  #1998-05-06 
  select date_add((select max(fecha_pedido) from pedidos), INTERVAL -1 YEAR);
  
select * from clientes;
  select max(fecha_pedido) from pedidos; #1998-05-06
 
 -- Cuantos productos diferentes hay en la base de datos?
 select * 
 from productos
 where id in (select distinct id from productos);
 
 select distinct(id)
 from productos p
 order by id;
 
 -- Cuantos clientes diferentes ha atendido cada empleado? 
 -- Muestrame el id, nombre y cantidad de clientes atendidos para cada empleado.
 
 select em.id idEmpleado, em.nombre nombreEmpleado, count(distinct empleado_id) cantidadAtendidos
 from clientes cl
 inner join pedidos pe on pe.cliente_id = cl.id
 inner join empleados em on em.id = pe.empleado_id
 group by empleado_id;
 
 
 
 -- Queremos saber las tres empresas de envios con las que mas trabajamos y el numero de envios 
 -- que ha realizado con cada una de ellas.
 
 select empresa, count(en.id) numeroDeEnvios
 from envios en
 inner join pedidos pe on pe.envio_id = en.id
 group by en.id
 order by count(en.id) desc;
 
 
 -- Muestrames todos los datos del producto mas vendido
 
 select *, sum(cantidad) cantidad
 from productos pro
 inner join detalles de on de.producto_id = pro.id
 group by producto_id
 order by sum(cantidad) desc limit 1;
 
 
 
 
 -- Muestrame los pedidos que tienens productos del provedor Exotic Liquids.
 
 select empresa, ped.*
 from productos prod
 inner join proveedores prov on prov.id = prod.proveedor_id
 inner join detalles det on det.producto_id = prod.id
 inner join pedidos ped on ped.id = det.pedido_id
 where prov.empresa = 'Exotic Liquids'
 order by ped.id;
 
 -- Dime quien es el cliente que menos dinero en total ha gastado en sus pedidos.
 
 
 select cl.*, sum(pe.cargo) menosCargo
 from clientes cl
 inner join pedidos pe on pe.cliente_id = cl.id
 group by cl.id
 order by sum(pe.cargo) limit 1;
 
 