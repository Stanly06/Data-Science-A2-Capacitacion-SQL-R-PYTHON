SELECT * 
FROM ventas;

INSERT INTO ventas(ID_local,clave_producto,venta)
VALUES(2,"pzz",233);

SELECT LAST_INSERT_ID();

INSERT INTO venta_detalle
VALUES(LAST_INSERT_ID(),"Llevar");

CREATE TABLE archivo_ventas AS
SELECT * FROM ventas;

INSERT INTO archivo_ventas
SELECT *
FROM ventas 	
WHERE venta > 1000;

UPDATE ingredientes
SET ingredientes = "Pina", clave_ingrediente = "pin"
WHERE ingredientes_id = 5;

UPDATE ventas
SET venta = 777
WHERE ID_local = 1;

SELECT ID_Local
FROM local
WHERE letra_zona = "D"

UPDATE archivo_ventas
SET venta = venta * 1.16
WHERE ID_local =
	   (SELECT ID_local IN
       FROM local
       WHERE letra_zona IN("D", "C"))

DELETE FROM ingredientes
WHERE ingredientes_id = 8;

DELETE FROM ingredientes
WHERE ingredientes_id BETWEEN 15 AND 17;      
       
 

