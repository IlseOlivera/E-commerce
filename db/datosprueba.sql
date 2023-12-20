-- insertar los productos
-- Ejemplo 1
INSERT INTO `ecommerce`.`Productos` (`nombre`, `desc`, `precio`) 
VALUES ('Laptop HP Pavilion', 'Portátil potente con procesador Intel Core i5, 8 GB de RAM y SSD de 256 GB', 799.99);

-- Ejemplo 2
INSERT INTO `ecommerce`.`Productos` (`nombre`, `desc`, `precio`) 
VALUES ('PC de Escritorio Dell Inspiron', 'Computadora de escritorio con pantalla de 23 pulgadas, procesador AMD Ryzen 7, 16 GB de RAM y HDD de 1 TB', 1299.99);

-- Ejemplo 3
INSERT INTO `ecommerce`.`Productos` (`nombre`, `desc`, `precio`) 
VALUES ('Chromebook Acer', 'Ligero y portátil con pantalla HD de 14 pulgadas, procesador Intel Celeron, 4 GB de RAM y almacenamiento eMMC de 64 GB', 349.99);

-- insertar los usuarios
-- admin 
INSERT INTO `ecommerce`.`Usuarios` (`correo`, `password`, `nombre`, `apellido_p`, `apellido_m`)
VALUES ('admin@example.com', MD5('admin123'), 'Ilse', 'Olivera', 'Bruno');

-- Ejemplo 1
INSERT INTO `ecommerce`.`Usuarios` (`correo`, `password`, `nombre`, `apellido_p`, `apellido_m`)
VALUES ('juan@example.com', MD5('juan123'), 'Juan', 'Pérez', 'Gómez');

-- Ejemplo 2
INSERT INTO `ecommerce`.`Usuarios` (`correo`, `password`, `nombre`, `apellido_p`, `apellido_m`)
VALUES ('ana@example.com', MD5('ana456'), 'Ana', 'García', 'López');

-- Ejemplo 3
INSERT INTO `ecommerce`.`Usuarios` (`correo`, `password`, `nombre`, `apellido_p`, `apellido_m`)
VALUES ('carlos@example.com', MD5('carlos789'), 'Carlos', 'Martínez', 'Ruiz');

-- insertar las relaciones
-- Ejemplo 1: Asociar un producto a un usuario
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`)
VALUES (2, 2, 1);

-- Ejemplo 2: 
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`, `cantidad`)
VALUES (2, 2, 1);

-- Ejemplo 3: 
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`, `cantidad`)
VALUES (2, 3, 2);

-- Ejemplo 4: 
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`, `cantidad`)
VALUES (3, 2, 1);

-- Ejemplo 5: 
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`, `cantidad`)
VALUES (3, 3, 1);

-- Ejemplo 6: 
INSERT INTO `ecommerce`.`Usuario_Productos` (`UP_U_Id`, `UP_P_Id`, `cantidad`)
VALUES (4, 3, 1);
