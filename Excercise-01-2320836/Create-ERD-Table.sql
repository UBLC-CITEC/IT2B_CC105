SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
  `idtable1` INT NOT NULL AUTO_INCREMENT,  -- Changed to AUTO_INCREMENT
  PRIMARY KEY (`idtable1`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Product Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Table` (
  `Product ID` INT NOT NULL AUTO_INCREMENT,
  `Product Name` VARCHAR(45) NOT NULL,
  `TItle` VARCHAR(45) NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` DECIMAL(10, 2) NOT NULL,  -- Changed to DECIMAL for prices
  PRIMARY KEY (`Product ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `Sales ID` INT NOT NULL AUTO_INCREMENT,  -- Added a unique Sales ID
  `Order ID` VARCHAR(45) NOT NULL,
  `Customer ID` INT NOT NULL,  -- Changed to INT for consistency
  `Employer ID` INT NOT NULL,   -- Changed to INT for consistency
  `Total` DECIMAL(10, 2) NOT NULL,  -- Changed to DECIMAL for prices
  `Quality` INT NOT NULL,  -- Changed to INT for quantity
  `Discount` DECIMAL(5, 2) NOT NULL,  -- Changed to DECIMAL for discount
  `Product Table_Product ID` INT NOT NULL,
  PRIMARY KEY (`Sales ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`EMP Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMP Table` (
  `EMP ID` INT NOT NULL AUTO_INCREMENT,
  `EMP Name` VARCHAR(45) NOT NULL,
  `TItle` VARCHAR(45) NOT NULL,
  `Department` VARCHAR(45) NOT NULL,
  `Region` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EMP ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Time Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Table` (
  `Order ID` INT NOT NULL AUTO_INCREMENT,
  `Year` VARCHAR(45) NOT NULL,
  `Quarter` VARCHAR(45) NOT NULL,
  `Order Date` DATE NOT NULL,  -- Changed to DATE for proper date handling
  `Month` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Order ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Customer Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Table` (
  `Customer ID` INT NOT NULL AUTO_INCREMENT,
  `Customer Name` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Zip` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer ID`)
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
