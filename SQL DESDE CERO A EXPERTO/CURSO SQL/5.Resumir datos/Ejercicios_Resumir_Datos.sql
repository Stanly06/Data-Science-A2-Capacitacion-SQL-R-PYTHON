-- Tienes que entregar un informe por cliente donde entregues la siguiente información:

-- Cuál cliente realizó la compra máxima en el año 2018?

SELECT 
      MAX(venta) AS compra_maxima,
      c.nombre
FROM ventas v
JOIN clientes c
ON v.ID_Cliente = c.ID_Cliente
WHERE Fecha_venta BETWEEN "2018-01-01" AND "2018-12-31"

-- Cuál fue el pago menor que recibimos en 2018?

SELECT 
	MIN(pago) AS pago_minimo,
    ID_pago
FROM pagos 
WHERE Fecha_pago BETWEEN "2018-01-01" AND "2018-12-31"

-- Cuántas ventas hubo en el 2ndo semestre de 2018?

SELECT 
     COUNT(venta) AS CONTEO
FROM ventas 	
WHERE fecha_venta BETWEEN "2018-07-31" AND "2018-12-31"

-- Las ventas por vendedor

SELECT ve.ID_Vendedor, ve.nombre, SUM(venta) AS Suma_venta
FROM ventas v
JOIN vendedor ve 
     ON v.ID_Vendedor= ve.ID_Vendedor
GROUP BY ve.nombre
     
-- Ventas por producto

SELECT p.producto, SUM(venta) AS suma_venta
FROM ventas v
JOIN producto p
     ON v.ID_producto = p.ID_producto
GROUP BY p.producto

-- Resumen de compras por cliente en 2017

SELECT c.nombre, SUM(venta) AS suma_venta
FROM ventas v
JOIN clientes c
     ON v.ID_cliente = c.ID_cliente
WHERE fecha_venta BETWEEN "2017-01-01" AND "2017-12-31"    
GROUP BY c.nombre	

-- Resumen de compras por cliente en 2017 que hayan sido mayores a 150,00

SELECT c.nombre, SUM(venta) AS suma_venta
FROM ventas v
JOIN clientes c
     ON v.ID_cliente = c.ID_cliente
WHERE fecha_venta BETWEEN "2017-01-01" AND "2017-12-31"    
GROUP BY c.nombre
HAVING suma_venta > 150000

-- Dame la lista de los clientes morosos

SELECT v.ID_venta, c.Nombre, v.venta, SUM(p.pago) AS pago, v.venta - SUM(p.pago) AS saldo
FROM pagos p
JOIN ventas v
ON p.ID_venta = v.ID_venta
JOIN clientes c
ON v.ID_cliente = c.ID_cliente
GROUP BY p.ID_venta, c.Nombre
HAVING saldo > 0

     
     