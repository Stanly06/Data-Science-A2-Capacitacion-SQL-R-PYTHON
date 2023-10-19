-- Cuál es el nombre y apellido más largo de nuestros vendedores?

SELECT CONCAT(NOMBRE, " ",APELLIDO) AS NOMBRE_COMPLETO,
LENGTH( CONCAT (NOMBRE, " ",APELLIDO)) AS LARGO
FROM vendedor
ORDER BY LARGO 	DESC

-- Obten una vista con las ventas totales para los últimos 3 años 

SELECT "2017" AS AÑO,
       SUM(venta) AS total_año
FROM ventas
WHERE YEAR(fecha_venta) = YEAR(NOW()) -3
UNION
SELECT "2018" AS AÑO,
       SUM(venta) AS total_año
FROM ventas
WHERE YEAR(fecha_venta) = YEAR(NOW()) -2
UNION
SELECT "2019" AS AÑO,
       SUM(venta) AS total_año
FROM ventas
WHERE YEAR(fecha_venta) = YEAR(NOW()) -1

       
       