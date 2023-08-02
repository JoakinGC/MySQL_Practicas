select *
from productos p
inner join detalles d on d.producto_id = id
inner join pedidos pe on pe.id = d.pedido_id
where fecha_pedido is not null
group by fecha_pedido order by fecha_pedido desc;


-- Cuantas veces se vendio la cerveza outback el ultimo mes

select  * #, max(fecha_pedido)
from productos p
inner join detalles d on d.producto_id = p.id
inner join pedidos pe on pe.id = d.pedido_id
where p.id=2
and year(pe.fecha_pedido) = (
	select max(year(fecha_pedido)) 
    from pedidos pe2 
    join detalles de2 on de2.pedido_id=pe2.id  and de2.producto_id = p.id)
and 
	month(pe.fecha_pedido) = (
	select max(month(fecha_pedido))
    from pedidos p where year(fecha_pedido) = year(pe.fecha_pedido)
    )
order by p.id, p.producto,pe.fecha_pedido desc;
# where month(fecha_pedido) --  (select month(max(fecha_pedido)) from pedidos);
#where  month(fecha_pedido) = (select max(month(pe.fecha_pedido)) from pedidos)
# and year(fecha_pedido) = (select max(year(fecha_pedido)) from pedidos);

select * from pedidos;
select max(month(fecha_pedido)) , max(year(fecha_pedido))from pedidos;

select * #, max(fecha_pedido)
from productos p
inner join detalles d on d.producto_id = id
inner join pedidos pe on pe.id = d.pedido_id
where month(fecha_pedido) in( '5') and year(fecha_pedido) = '1997';
#group by month(fecha_pedido);

-- El año con mas ventas

select producto_id, count(de.producto_id), year(p.fecha_pedido)
from pedidos p
inner join detalles de on de.pedido_id = p.id
group by de.producto_id order by count(de.producto_id) desc;


select * , count(producto_id) cantidadDeVentas, year(fecha_envio) Año
from pedidos p
inner join detalles de on de.pedido_id = p.id
where de.producto_id = 
(select de2.producto_id 
    from pedidos p2
	inner join detalles de2 on de2.pedido_id = p2.id
    group by de2.producto_id order by count(de2.producto_id) desc limit 1);
	

select year(p.fecha_pedido), count(p.id) as cantidad
from pedidos p
group by year(p.fecha_pedido) order by  count(p.id)  desc limit 1;
-- La media del cargo de los productos med 1996

select  producto_id,count(de.producto_id), avg(cargo)
from pedidos pe
inner join detalles de on pe.id = de.pedido_id
where year(fecha_pedido) = '1996'
group by de.producto_id order by count(de.producto_id) desc;


-- El empleado que mas vnedio

-- Sumar la cantidad de ventaas que hizo cada empleado y sacar el maximo


-- Cliente que mas comprado los ultimos 3 meses

select *, count(cliente_id) cantidadDeCompras
from pedidos pe
inner join clientes cl on cl.id = pe.cliente_id
group by cliente_id order by count(cliente_id) desc;

select em.id, pe.*, sum(pe.cargo) montoDeVenta
from empleados em
inner join pedidos pe on pe.empleado_id = em.id
where pe.fecha_pedido >=  date_add((select max(fecha_pedido) from pedidos), INTERVAL -3 MONTH)
and  pe.fecha_pedido <=  (select max(fecha_pedido) from pedidos)
#DATE_ADD(pe.fecha_pedido, INTERVAL -3 MONTH)
#and pe.fecha_pedido <= pe.fecha_pedido
group by pe.empleado_id order by sum(pe.cargo) desc ;

-- El año con mas cargo o ventas con mayor valor.

select year(fecha_pedido) Año , sum(cargo) MayoresGanancias
from pedidos 
group by year(fecha_pedido) order by cargo desc limit 1;

-- El vendedor con mas ventas y cargo

select empleado_id, count(empleado_id) cantidad, sum(pe.cargo)
from pedidos pe
inner join empleados em on pe.empleado_id = em.id
group by empleado_id
order by sum(cargo) desc;

select *
from pedidos pe
inner join empleados em on pe.empleado_id = em.id
where empleado_id = 4;


-- El empleado de reino unido con mas ventas.

select *, count(empleado_id)
from empleados em
inner join pedidos pe on pe.empleado_id = em.id
where pais = 'Reino Unido'
group by empleado_id order by count(empleado_id)  desc;


-- El empleado de reino unido con mas ventas y cargo.

select *, count(empleado_id) cantidadDeVentas , sum(pe.cargo) Valor
from empleados em
inner join pedidos pe on pe.empleado_id = em.id
where pais = 'Reino Unido'
group by empleado_id order by sum(pe.cargo)  desc, count(empleado_id) desc;

