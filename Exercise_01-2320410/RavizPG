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
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee` (
  `emp_id` INT NOT NULL,
  `emp_name` VARCHAR(45) NULL,
  `emp_title` VARCHAR(45) NULL,
  `emp_department` VARCHAR(45) NULL,
  `emp_region` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `custom_id` INT NOT NULL,
  `custom_name` VARCHAR(45) NULL,
  `custom_addrs` VARCHAR(45) NULL,
  `custom_city` VARCHAR(45) NULL,
  `custom_zip` VARCHAR(45) NULL,
  PRIMARY KEY (`custom_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NULL,
  `product_category` VARCHAR(45) NULL,
  `unit_price` VARCHAR(45) NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time` (
  `order_id` INT NOT NULL,
  `order_date` VARCHAR(45) NULL,
  `order_year` VARCHAR(45) NULL,
  `order_quart` VARCHAR(45) NULL,
  `order_month` VARCHAR(45) NULL,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Employee_emp_id` INT NOT NULL,
  `Customer_custom_id` INT NOT NULL,
  `sales_total` VARCHAR(45) NULL,
  `sales_quant` VARCHAR(45) NULL,
  `sales_disc` VARCHAR(45) NULL,
  `Product_product_id` INT NOT NULL,
  `Time_order_id` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
