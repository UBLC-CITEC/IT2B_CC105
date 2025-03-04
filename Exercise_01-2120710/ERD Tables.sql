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
-- Table `mydb`.`Product Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Table` (
  `Product ID` INT NOT NULL,
  `Product Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `Product ID` INT NOT NULL,
  `Order ID` VARCHAR(45) NOT NULL,
  `Customer ID` VARCHAR(45) NOT NULL,
  `Employer ID` VARCHAR(45) NOT NULL,
  `Total` VARCHAR(45) NOT NULL,
  `Quality` VARCHAR(45) NOT NULL,
  `Discount` VARCHAR(45) NOT NULL,
  `Time Table_Order` VARCHAR(45) NOT NULL,
  `Product Table_Product ID` INT NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Table` (
  `Order ID` INT NOT NULL,
  `Order Date` VARCHAR(45) NOT NULL,
  `Year` VARCHAR(45) NOT NULL,
  `Quarter` VARCHAR(45) NOT NULL,
  `Month` VARCHAR(45) NOT NULL,
  `SALES_Product ID` INT NOT NULL,
  PRIMARY KEY (`Order ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMP Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMP Table` (
  `EMP ID` INT NOT NULL,
  `EMP Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Department` VARCHAR(45) NOT NULL,
  `Region` VARCHAR(45) NOT NULL,
  `SALES_Product ID` INT NOT NULL,
  PRIMARY KEY (`EMP ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `Customer ID` INT NOT NULL,
  `Customer Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Zip` VARCHAR(45) NOT NULL,
  `SALES_Product ID` INT NOT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
