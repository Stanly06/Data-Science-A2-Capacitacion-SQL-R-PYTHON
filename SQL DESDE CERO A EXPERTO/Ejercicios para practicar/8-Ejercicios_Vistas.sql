-- Crea una vista de clientes morosos al día de hoy

CREATE OR REPLACE VIEW clientes_morosos AS
SELECT v.ID_venta, c.Nombre, v.venta, SUM(p.pago) AS pago, v.venta - SUM(p.pago) AS saldo
FROM pagos p
JOIN ventas v
ON p.ID_venta = v.ID_venta
JOIN clientes c
ON v.ID_cliente = c.ID_cliente
GROUP BY p.ID_venta, c.Nombre
HAVING saldo > 0

-- Crea una vista para los bonos que daremos en 2019 por ventas a los vendedores, el bono será de 1% sobre lo vendido. 

CREATE OR REPLACE VIEW bono_vendedor AS
SELECT SUM(v.venta) AS Venta_total, v.ID_Vendedor, ve.Nombre, SUM(v.venta)*.01 AS Bono
FROM ventas v
JOIN vendedor ve USING (ID_vendedor)
WHERE fecha_venta BETWEEN "2019-01-01" AND "2019-12-31"
GROUP BY ID_vendedor