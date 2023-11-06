USE datos;

CREATE OR REPLACE VIEW ventas_empleados AS
SELECT
      l.letra_zona,
      l.telefono,
      v.venta,
      v.venta_empleado,
      e.nombre
FROM local l
LEFT JOIN ventas v
     ON l.ID_Local = V.ID_Local
LEFT JOIN empleados e
       ON v.venta_empleado = e.ID_empleado;
WHERE venta > 1000;

       
SELECT *
FROM ventas_empleados;

DROP VIEW ventas_empleados;

CREATE VIEW ventas_mayores_800 AS
SELECT *
FROM ventas
WHERE venta > 800;

DELETE FROM ventas_mayores_800
WHERE venta > 1000;
       