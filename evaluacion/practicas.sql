-- Ordeno los pedidos por fecha de entrega y que muestre el cliente.

select c.id idDeCliente, pedidos.fecha_entrega FechaEntrega
from clientes c
inner join pedidos on pedidos.cliente_id = c.id
order by fecha_entrega;

-- Dime la cantidad de pedidos de la empresa

select * , count(pe.id) cantidadDePedidos  from pedidos pe 
inner join envios en on en.id = pe.envio_id
group by empresa order by count(pe.id) desc;


-- Dime de nombres de los provedores que tengan productos que tenga 50 unidades .

select p.empresa as nombreEmpresa,  sum(unidades_existencia)
from proveedores p
inner join productos pr on pr.proveedor_id = p.id
group by unidades_existencia having unidades_existencia > 50;


-- clientes que pidieron queso en mayo de 1997


-- Saca el empleado que mas a vendido

select *, sum(em.cargo) Ventas
from empleados em
inner join pedidos pe on pe.empleado_id = em.id
group by pe.empleado_id order by sum(em.cargo) desc limit 1 ;


select id from empleados where cargo = (select max(cargo) from empleados limit 1);

