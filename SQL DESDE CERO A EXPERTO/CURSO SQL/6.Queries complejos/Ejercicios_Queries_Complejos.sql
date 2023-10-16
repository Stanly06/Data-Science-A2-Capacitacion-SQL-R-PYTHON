-- *Crea un subquery para generar una vista con:

-- Los vendedores que no vendieron en 2018

SELECT *
FROM vendedor
WHERE ID_vendedor NOT IN (
      SELECT  DISTINCT ID_vendedor
      FROM ventas 
      WHERE fecha_venta BETWEEN "2018-01-01" AND "2018-12-31"
      )
      
-- Productos que no se vendieron en marzo del 2017

SELECT *
FROM producto
WHERE ID_producto NOT IN (
	SELECT ID_producto
    FROM ventas
    WHERE fecha_venta BETWEEN "2017-03-01" AND "2017-03-31"	
    )

-- Clientes que compraron propiedas de remates Bancarios en el primer cuarto de 2016

SELECT * 
FROM clientes
WHERE ID_cliente IN (
       SELECT ID_cliente
       FROM ventas v
       JOIN producto p USING (ID_producto)
       WHERE p.producto = "remates" AND Fecha_venta BETWEEN "2016-01-01" AND "2016-03-01"
       )
ORDER BY ID_cliente ASC
    
-- Todas las ventas superiores a la venta más cara de una oficina
-- venta maxima 2 888 325
    
SELECT *
FROM ventas
WHERE venta > ALL (
      SELECT venta
      FROM ventas
      WHERE ID_producto = 2
 )
 
 -- Cualquier venta mayor al de una oficina

SELECT *
FROM ventas
WHERE venta > ALL (
      SELECT venta
      FROM ventas
      WHERE ID_producto = 2
)

-- Todos los vendedores que no han vendido nada

SELECT *
FROM vendedor v
WHERE NOT EXISTS (
      SELECT ID_vendedor
      FROM ventas 
      WHERE ID_vendedor = v.ID_vendedor
)

-- Obtener el % que representa cada venta del total por cliente

SELECT ID_cliente,
	   ID_venta,
       (SELECT sum(venta)
       FROM ventas
       WHERE ID_cliente = v.ID_cliente) AS total,
       venta,
       venta / (SELECT sum(venta)
       FROM ventas 
       WHERE ID_cliente = v.ID_cliente) * 100 AS porcentaje
FROM  ventas v
GROUP BY ID_cliente       


      
       