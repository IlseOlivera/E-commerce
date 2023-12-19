-- MySQL Script generated by MySQL Workbench
-- Sun Dec 17 19:38:41 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `correo` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido_p` VARCHAR(100) NOT NULL,
  `apellido_m` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  UNIQUE INDEX `correo_UNIQUE` (`correo` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `desc` VARCHAR(512) NOT NULL,
  `precio` DOUBLE NOT NULL,
  PRIMARY KEY (`idProductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Usuario_Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Usuario_Productos` (
  `UP_U_Id` INT NOT NULL,
  `UP_P_Id` INT NOT NULL,
  INDEX `FK_UP_U_Id_idx` (`UP_U_Id` ASC) ,
  INDEX `FK_UP_P_Id_idx` (`UP_P_Id` ASC) ,
  CONSTRAINT `FK_UP_U_Id`
    FOREIGN KEY (`UP_U_Id`)
    REFERENCES `ecommerce`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_UP_P_Id`
    FOREIGN KEY (`UP_P_Id`)
    REFERENCES `ecommerce`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;