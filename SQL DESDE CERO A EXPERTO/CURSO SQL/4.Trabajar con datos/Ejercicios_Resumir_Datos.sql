# Inserta 2 nuevos productos en la tabla producto

# Inserta 2 productos nuevos, puedes llamarlos producto1 y producto2.

INSERT INTO productos (producto)
VALUES ("producto1"),
        ("producto2");

# Actualizar Filas

# Ahora vamos a actualizar los nombres de esos productos: 
# Producto1 será “Casa”

UPDATE productos
SET 
     Producto = "casa"
WHERE productos_id = 8;

# Producto 2 será “Departamento”

UPDATE productos
SET 
     Producto = "Departamento"
WHERE productos_id = 9;

# Borrar Filas

# Eliminar casa y departamento de la tabla producto

DELETE FROM productos
WHERE productos_id = 8

     