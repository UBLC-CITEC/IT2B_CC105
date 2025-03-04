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
-- Table `mydb`.`Product Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Dimension` (
  `Product ID` INT NOT NULL,
  `Product Name` VARCHAR(45) NULL,
  `Product Category` VARCHAR(45) NULL,
  `Unit Price` VARCHAR(45) NULL,
  `Product Dimensioncol` VARCHAR(45) NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Dimension` (
  `Order ID` INT NOT NULL,
  `Order Date` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Quarter` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  PRIMARY KEY (`Order ID`))
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
  `Quantity` VARCHAR(45) NOT NULL,
  `Discount` VARCHAR(45) NOT NULL,
  `Product Dimension_Product ID` INT NOT NULL,
  `Time Dimension_Order ID` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `Emp ID` INT NOT NULL,
  `Emp Name` VARCHAR(45) NULL,
  `Emp Dimension` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  `SALES_Product ID` INT NULL,
  PRIMARY KEY (`Emp ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `Customer ID` INT NOT NULL,
  `Customer Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `SALES_Product ID` INT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
