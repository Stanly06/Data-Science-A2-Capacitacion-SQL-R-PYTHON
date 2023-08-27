# Selecciona tu SCHEMA db_practicas con USE
USE db_practicas;

# Aplica un SELECT y obtén todas las columnas con * de ventas
SELECT * 
FROM ventas;

# Usa SELECT para traer las columnas de ID_zona, venta y ID_cliente
SELECT ID_zona,venta,ID_cliente
FROM ventas;

# Con SELECT trae ahora solo venta y dale otro nombre con AS a la columna
SELECT venta AS cantidad
FROM ventas;

# Obtén una columna que te muestre la venta + IVA (16%) y nómbrala diferente 
SELECT venta * 16 AS venta_con_iva
FROM ventas;

# Traer todas las ventas de la zona 2
SELECT * FROM ventas
WHERE ID_Zona = 2;

# Todos las ventas mayores a 2,000,000
SELECT * FROM ventas
WHERE Venta > 2000000;

# Todos los productos que sean del cliente 7
SELECT * FROM ventas
WHERE ID_Cliente = 7;

# Trae toda la venta que sean menores a 1,000,000
SELECT * FROM ventas
WHERE venta < 1000000;

# Traer todas las ventas mayores o iguales a 1,500,000 en zona 2
SELECT * FROM ventas
WHERE venta >= 1500000 AND ID_Zona = 2;

# Todos las ventas menores a 500,000 en la zona 2 que sean del vendedor 2
SELECT * FROM ventas
WHERE venta < 500000 AND ID_Zona = 2 AND ID_Vendedor = 2;

# Todas las ventas mayores a 999,999 o que sean del vendedor 13
SELECT * FROM ventas
WHERE venta > 999999 OR ID_Vendedor = 13;

# Trae toda la venta que NO sea del cliente 10
SELECT * FROM ventas
WHERE NOT ID_Cliente = 10;

# Obtén las ventas de la zona del 1 al 4
SELECT * FROM ventas
WHERE ID_Zona IN (1,2,3,4);

# Obtén las ventas que haya realizado el consumidor 6,7, 8 y 9
SELECT * FROM ventas
WHERE ID_Cliente IN (6,7,8,9);

# Obtén las ventas que NO sean del vendedor 15, 21 y 35.
SELECT * FROM ventas
WHERE NOT ID_Vendedor IN (15,21,35);

# Obtén los apellidos del personal de ventas que termine en “ez”
SELECT * FROM vendedor 
WHERE Apellido REGEXP "ez";

#  Agrega la columna de nombre para tener las 2 columnas, nombre y apellidos
SELECT Nombre, apellido 
FROM vendedor
WHERE apellido REGEXP "ez$"

# Crea una consulta para tener los apellidos que terminen en “ez” o inicien en “sa”
SELECT nombre, apellido 
FROM vendedor
WHERE apellido REGEXP "ez$" OR apellido REGEXP "^sa"

# Tenemos un cliente que no tiene teléfono, necesitamos identificarlo para poder actualizar la base de datos, qué cliente es?
SELECT *
FROM clientes 
WHERE telefono IS NULL;

# Ordena la información de los vendedores por nombre en forma descendiente.
SELECT *
FROM vendedor
ORDER BY nombre DESC;

# Ordena ahora los datos de los vendedores por nombre y después por apellido.
SELECT *
FROM vendedor
ORDER BY nombre, apellido;

# Limita las ventas a los primeros 10 registros. 
SELECT *
FROM ventas
LIMIT 10;

# Limita la venta a los registros entre el 50 y el 100.
SELECT *
FROM ventas
LIMIT 50,100;


