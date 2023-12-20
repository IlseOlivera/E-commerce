CREATE DATABASE E_commerce_primera;
USE E_commerce_primera;
CREATE TABLE `e_commerce_primera`.`productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `unidades` INT NULL,
  `precio` DOUBLE NULL,
  `marca` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `descripcion` VARCHAR(70) NULL,
  PRIMARY KEY (`idProductos`));
  
  CREATE TABLE `e_commerce_primera`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `telefono` VARCHAR(10) NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`idclientes`),
  UNIQUE INDEX `idclientes_UNIQUE` (`idclientes` ASC) VISIBLE);

  