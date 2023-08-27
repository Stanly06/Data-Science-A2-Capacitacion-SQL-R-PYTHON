# / JOIN
SELECT 
      v.ventas_id,
      v.fecha,
      l.direccion,
      v.clave_producto,
      v.venta,
      e.nombre,
      e.Apellido FROM ventas v
JOIN local l
    ON v.ID_local = l.ID_Local
JOIN empleados e
    ON v.venta_empleado = e.ID_empleado;
    
 # Join a traves de bases de datos   
SELECT 
      p.periodo1_id,
      p.Fecha,
      e.Nombre,
      e.Apellido,
      p.Local,
      p.Turno_completo
FROM periodo1 p
JOIN datos.empleados e
     ON p.ID_empleado = e.ID_empleado;    
     
# Self Join

SELECT 
        e.ID_empleado,
        e.Nombre,
        e.Telefono,
        e.edad,
        e.Domicilio,
        p.Nombre AS Gerente,
        p.Apellido As Apellido_Gerente
FROM empleados e
JOIN empleados p
     ON e.ID_Gerente = p.ID_empleado;
     
# Joins Externos

SELECT *
FROM ventas v
LEFT JOIN empleados e
     ON v.venta_empleado = e.ID_empleado;
     
# USING

SELECT *
FROM ventas v
JOIN local l
		USING(ID_local);
        
# Cross Join

SELECT *
FROM productos p
CROSS JOIN ingredientes i;

# Join Natural

SELECT *
FROM ventas v
NATURAL JOIN local 	l;

SELECT *
FROM ventas v 
NATURAL JOIN empleados e;

# Union
SELECT producto
FROM productos
UNION 
SELECT ingredientes 
FROM ingredientes;        

