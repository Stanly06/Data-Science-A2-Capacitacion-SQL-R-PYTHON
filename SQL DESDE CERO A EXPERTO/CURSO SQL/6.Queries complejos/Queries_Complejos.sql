-- SUBCONSULTAS

-- Empleados cuya edad es mayor al promedio

SELECT *
FROM empleados 
WHERE edad >
	(SELECT 
           AVG(edad)
     FROM empleados);   
  
-- cuantos empleados hicieron una venta

SELECT COUNT(DISTINCT ID_empleado)
FROM empleados;

SELECT COUNT(DISTINCT venta_empleado)
FROM ventas; 

SELECT *
FROM empleados
WHERE ID_empleado IN(
           SELECT DISTINCT venta_empleado
           FROM ventas);
           
           
SELECT DISTINCT venta_empleado
           FROM ventas;
           
-- JOIN VS SUBQUERY

SELECT *
FROM empleados e
LEFT JOIN ventas v
     ON v.venta_empleado = e.ID_empleado
 WHERE v.ventas_id IS NULL
 
 -- ALL
 
 -- ENCONTRAR LAS VENTAS QUE SEAN MAYORES A LAS VENTAS DEL LOCAL 2
 
SELECT MAX(venta)
FROM VENTAS
WHERE ID_local = 2;

SELECT *
FROM VENTAS
WHERE venta > (
       SELECT MAX(venta)
	   FROM VENTAS
	   WHERE ID_local = 2);  
       
-- OR

SELECT *
FROM VENTAS
WHERE venta > ALL(
       SELECT venta
	   FROM VENTAS
	   WHERE ID_local = 2);       
       
-- TODAS LAS VENTAS QUE SEAN MENORES A LAS DEL LOCAL 4

SELECT venta
FROM ventas 
WHERE ID_local = 4;

SELECT *
FROM ventas 
WHERE venta < ALL(
      SELECT venta
      FROM ventas 
      WHERE ID_local = 4);
      
-- *ANY

--  CUALES VENTAS SON MAYORES QUE CUALQUIER DEL LOCAL 2

SELECT *
FROM ventas
WHERE ID_local = 2;

SELECT *
FROM ventas
WHERE venta > ANY(
       SELECT venta
       FROM ventas
       WHERE ID_local = 2);
       
-- *QUERIES CORRELACIONADAS

SELECT AVG(venta)
FROM ventas
WHERE ID_local = 4;

SELECT ID_local, AVG(venta)
FROM ventas
GROUP BY ID_local;

SELECT *
FROM ventas v
WHERE venta > (
       SELECT AVG(venta)
       FROM ventas 
       WHERE ID_local = v.ID_local)
       
-- *EXISTS

SELECT *
FROM empleados
WHERE ID_empleado NOT IN (
      SELECT DISTINCT venta_empleado
      FROM ventas);
      
SELECT *
FROM empleados e
WHERE NOT EXISTS(
      SELECT venta_empleado
      FROM ventas
      WHERE venta_empleado = e.ID_empleado);
      
-- *CONSULTAS DENTRO DEL SELECT:

SELECT
       ventas_id,
       venta,
       (SELECT AVG(venta) FROM ventas) AS promedioventa,
       venta - (SELECT promedioventa)
FROM ventas;


-- *CONSULTAS DENTRO DEL FROM

SELECT *
FROM (
      SELECT 
            ventas_id,
            venta,
                  (SELECT AVG(venta) FROM ventas) AS promedioventa,
            venta - (SELECT promdioventa) AS delta
            FROM ventas) AS promedio
WHERE delta >100;            
           
       
      
      

	
       

           