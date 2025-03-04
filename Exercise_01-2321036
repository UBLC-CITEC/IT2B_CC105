-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `idtable2` INT NOT NULL,
  `Order ID` VARCHAR(45) NOT NULL,
  `Customer ID` VARCHAR(45) NOT NULL,
  `Employer ID` VARCHAR(45) NOT NULL,
  `Total` VARCHAR(45) NOT NULL,
  `Quality` VARCHAR(45) NOT NULL,
  `Discount` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtable2`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Table` (
  `idProduct Table` INT NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` VARCHAR(45) NOT NULL,
  `Product ID` VARCHAR(45) NOT NULL,
  `Product Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Sales_idtable2` INT NOT NULL,
  PRIMARY KEY (`idProduct Table`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Table` (
  `idProduct Dimension` INT NOT NULL,
  `Order Time` VARCHAR(45) NOT NULL,
  `Order Date` VARCHAR(45) NOT NULL,
  `Year` VARCHAR(45) NOT NULL,
  `Quarter` VARCHAR(45) NOT NULL,
  `Month` VARCHAR(45) NOT NULL,
  `Sales_idtable2` INT NOT NULL,
  PRIMARY KEY (`idProduct Dimension`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMP TABLE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMP TABLE` (
  `idtable1` INT NOT NULL,
  `EMP ID` VARCHAR(45) NOT NULL,
  `Emp Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Department` VARCHAR(45) NOT NULL,
  `Religion` VARCHAR(45) NOT NULL,
  `Sales_idtable2` INT NOT NULL,
  PRIMARY KEY (`idtable1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `idtable3` INT NOT NULL,
  `Customer ID` VARCHAR(45) NOT NULL,
  `Customer Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Zip` VARCHAR(45) NOT NULL,
  `Sales_idtable2` INT NOT NULL,
  PRIMARY KEY (`idtable3`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
