-- FUNCIONES NUMERICAS:

SELECT ROUND(2.4567,2);

SELECT TRUNCATE(2.3789,1);

SELECT CEILING(2.1234123);

SELECT FLOOR(2.897969);

SELECT ABS(5);

SELECT TRUNCATE(RAND()*100,0)

-- FUNCIONES DE TEXTO:

SELECT LENGTH("ejemplo ");

SELECT UPPER("ejemplo");

SELECT LOWER("EJEMPLO");

SELECT LTRIM("     EJEMPLO");

SELECT RTRIM("EJEMPLO     ");

SELECT LEFT("ejemplo", 3);

SELECT RIGHT("ejemplo",3);

SELECT TRIM("       ejemplo      ");

SELECT SUBSTRING("ejemplo",2,4);

SELECT SUBSTRING("ejemplo",2);

SELECT LOCATE("J","EJEMPLO");

SELECT LOCATE("MP","EJEMPLO");

SELECT REPLACE("EJEMPLO","JEMPLO","XAMPLE");

SELECT CONCAT("EJEMPLO"," ","SQL");

-- FUNCIONES DE FECHA

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT YEAR(NOW());

SELECT MONTH(NOW());

SELECT DAY(NOW());

SELECT HOUR(NOW());

SELECT MINUTE(NOW());

SELECT SECOND(NOW());

SELECT DAYNAME(NOW());

SELECT MONTHNAME(NOW());

SELECT EXTRACT(DAY FROM NOW());

SELECT EXTRACT(YEAR FROM NOW());

SELECT EXTRACT(MONTH FROM NOW());

SELECT 
      *,
      IFNULL(Domicilio,"Calle falsa 123") AS Domicilio_Nuevo
FROM empleados;

SELECT 
     *,
     COALESCE(ID_gerente, domicilio, "Gerente") AS gerente_nuevo
FROM empleados;

SELECT
     *,
     IF(Venta >1300,"bono","-") AS bono
FROM ventas;

SELECT 
     *, 
     CASE 
         WHEN venta > 1300 THEN "Bono jugosito"
         WHEN venta > 1300 THEN "Bono honesto"
         WHEN venta > 1300 THEN "Bono chiquito"
         ELSE "Echale ganas carnal"
     END AS bono
FROM ventas;
         
         