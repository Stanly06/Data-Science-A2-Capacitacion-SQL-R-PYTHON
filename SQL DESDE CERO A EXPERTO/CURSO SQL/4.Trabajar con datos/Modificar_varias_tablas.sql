SELECT * 
FROM ventas;

INSERT INTO ventas(ID_local,clave_producto,venta)
VALUES(2,"pzz",233);

SELECT LAST_INSERT_ID();

INSERT INTO venta_detalle
VALUES(LAST_INSERT_ID(),"Llevar");