use datos;

select *
FROM empleados;

select *
from ventas;

select * from productos;

select venta,fecha from ventas;

select venta,fecha,venta * .16 as IVA_COBRADO
FROM ventas;

select * from ventas 
where ID_lOCAL = 2;

select venta,fecha from ventas
where ID_lOCAL = 2;

select * FROM ventas
where venta < 1000;

SELECT * FROM ventas WHERE ID_local != 2;

SELECT * FROM ventas 
WHERE ID_local = 2 OR clave_producto = "pzz";

SELECT * FROM ventas 
WHERE ID_local = 2 OR ID_local = 4;

SELECT * 
FROM ventas 
WHERE NOT clave_producto = "pzz" AND NOT ID_local = 2;

SELECT * 
FROM ventas 
WHERE clave_producto = "pzz" OR clave_producto = "clz" OR clave_producto = "qsd";

SELECT * 
FROM ventas 
WHERE clave_producto IN ("clz", "pzz", "clz");

SELECT * 
FROM ventas 
WHERE ID_local IN (1,2,3) AND clave_producto IN ("czl", "pzz");

SELECT *
FROM ventas
WHERE venta >= 500 AND venta <1000;

SELECT *
FROM empleados
WHERE nombre LIKE "%a";

SELECT * 
FROM empleados 
WHERE apellido REGEXP "ez|iz|b";

SELECT *
FROM ventas
WHERE venta BETWEEN 500 AND 1000;

SELECT telefono,edad
FROM empleados 
WHERE apellido LIKE "%ez"
ORDER BY nombre DESC;

SELECT * 
FROM empleados
WHERE domicilio IS NOT NULL;

SELECT *
FROM ventas 
LIMIT 5,9;





