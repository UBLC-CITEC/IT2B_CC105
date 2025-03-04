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
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `Emp ID` INT NOT NULL,
  `ENPName` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  PRIMARY KEY (`Emp ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Dimension` (
  `Product id` INT NOT NULL,
  `Product Name` VARCHAR(45) NULL,
  `Product Category` VARCHAR(45) NULL,
  `Unit price` FLOAT NULL,
  PRIMARY KEY (`Product id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Dimension` (
  `Order Id` INT NOT NULL,
  `Order Date` INT NOT NULL,
  `Year` INT NOT NULL,
  `Quarter` INT NOT NULL,
  `Month` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Order Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `Customer Id` INT NOT NULL,
  `Customer Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `ZIP` INT NULL,
  PRIMARY KEY (`Customer Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `Product Id` INT NOT NULL,
  `Employer Id` INT NULL,
  `Total` INT NULL,
  `Quantity` INT NULL,
  `Discount` INT NULL,
  `Emp Dimension_Emp ID` INT NULL,
  `Product Dimension_Product id` INT NULL,
  `Time Dimension_Order Id` INT NULL,
  `Customer Dimension_Customer Id` INT NULL,
  PRIMARY KEY (`Product Id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
