SELECT *
FROM ventas;

SELECT MAX(venta)
FROM ventas;

SELECT 
       MAX(venta) AS venta_maxima,
       venta_empleado,
       Fecha
FROM ventas;

SELECT 
      MAX(venta) AS venta_maxima,
      venta_empleado,
      Fecha
FROM ventas;

SELECT 
      COUNT(venta) AS conteo_ventas
FROM ventas;

SELECT 
      COUNT(DISTINCT venta_empleado) AS empleados_diferentes
FROM ventas;

SELECT 
      AVG(venta)
FROM ventas;

SELECT 
      SUM(venta),
      ID_local
FROM ventas;

SELECT 
      SUM(venta),
      ID_local
FROM ventas 
GROUP BY ID_local

SELECT
     SUM(venta),
	 Venta_empleado
FROM ventas
GROUP BY venta_empleado;      

SELECT id_local, clave_producto, SUM(venta) AS Venta_total
FROM ventas
GROUP BY ID_local, clave_producto
HAVING Venta_total > 1500

SELECT id_local,clave_producto,SUM(venta) AS venta_total
FROM ventas 
GROUP BY id_local,clave_producto WITH ROLLUP     
       