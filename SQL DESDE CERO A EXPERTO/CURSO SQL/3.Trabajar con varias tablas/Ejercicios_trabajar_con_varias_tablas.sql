# /JOIN/ Imagina que vas a prerarar un análisis de ventas, tienes que entregar 2 columnas por vista con la descripción de:// 

# Ventas por cliente

SELECT v.venta, c.nombre 
FROM ventas v 
JOIN clientes c ON v.ID_Cliente = c.ID_cliente;

# Ventas por zona

SELECT v.venta, z.zona 
FROM ventas v 
JOIN zona z ON v.ID_zona = z.ID_zona;

# Ventas por vendedor

SELECT v.venta, ve.nombre 
FROM ventas v 
JOIN vendedor ve ON v.ID_vendedor = ve.ID_vendedor;

# Ventas por producto

SELECT v.venta, p.producto 
FROM ventas v 
JOIN producto p ON v.ID_producto = p.ID_Producto;

# /Multiples tablas/ Genera una vista con la descripción que contenga: 

# Información de venta por vendedor y cliente. 

SELECT v.venta, c.nombre, ve.nombre AS vendedor
FROM ventas v
JOIN clientes c ON v.ID_Cliente = c.ID_Cliente
JOIN vendedor ve ON v.ID_Vendedor = ve.ID_Vendedor

# Otra para la venta por cliente y zona y producto

SELECT v.venta, c.nombre, z.zona, p.producto
FROM ventas v
JOIN clientes c ON v.ID_Cliente = c.ID_cliente
JOIN zona z ON v.ID_zona = z.ID_zona
JOIN producto p ON v.ID_producto = p.ID_producto

# JOIN Externo
# Encontrar al vendedor que no ha vendido nada  

SELECT venta, ve.nombre
FROM ventas v
RIGHT JOIN vendedor ve
ON v.ID_vendedor = ve.ID_vendedor
ORDER BY venta

# / Venta con el cliente y zona /
#USING:

SELECT v.venta, c.Nombre, z.zona 
FROM ventas v
JOIN clientes c USING (ID_cliente)
JOIN zona z USING (ID_zona)

# / Venta con vendedor y producto /

SELECT v.venta, ve.Nombre, p.producto 
FROM ventas v
JOIN vendedor v USING (ID_vendedor)
JOIN producto p USING (ID_producto)

# CROSS JOIN
# Genera una vista para traer todas las combinaciones de: 
# / Nombre de productos y nombre de clientes/

SELECT c.nombre, p.producto	
FROM producto p, clientes c

#UNION
# Genera 2 consultas y únelas para lograr:
# 1- Una vista con clientes que tengan la calificación “A” y “B”

SELECT nombre, Clasificacion_credito
FROM clientes
WHERE Clasificacion_credido = "A"
UNION 
SELECT nombre, Clasificacion_credito
FROM clientes
WHERE Clasificacion_credito = "B"

# Lista de vendedores que estén casados y sean mayores de 50 años con los vendedores solteros y menores de 30

SELECT Nombre, Edad, Estado_civil
FROM vendedor 
WHERE estado_civil = "casado" AND edad > 50
UNION 
SELECT Nombre, Edad, Estado_civil
FROM vendedor 
WHERE estado_civil = "soltero" AND edad < 30






