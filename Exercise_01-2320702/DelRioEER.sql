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
  `Product_ID` INT NOT NULL,
  `Product_Name` VARCHAR(45) NOT NULL,
  `Product_Category` VARCHAR(45) NOT NULL,
  `Unit_Price` FLOAT NOT NULL,
  PRIMARY KEY (`Product_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Table` (
  `Emp_ID` INT NOT NULL,
  `Emp_Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  PRIMARY KEY (`Emp_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Table` (
  `Order_ID` INT NOT NULL,
  `Order_Date` DATE NULL,
  `Year` INT NULL,
  `Quarter` INT NULL,
  `Month` INT NULL,
  PRIMARY KEY (`Order_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Table` (
  `Customer_ID` INT NOT NULL,
  `Customer_Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` INT NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `Time Table_Order_ID` INT NOT NULL,
  `Product Table_Product_ID` INT NOT NULL,
  `Customer Table_Customer_ID` INT NOT NULL,
  `Emp Table_Emp_ID` INT NOT NULL,
  `Total` FLOAT NULL,
  `Quantity` INT NULL,
  `Discount` FLOAT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
