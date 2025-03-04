-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`table1` (Empty table, consider removing or adding columns)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
  -- Example column (you can add more columns as needed)
  `example_column` VARCHAR(255) NULL
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Product_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product_Table` (
  `Product_ID` INT NOT NULL AUTO_INCREMENT,
  `Product_Category` VARCHAR(45) NULL,
  `Product_Name` VARCHAR(45) NULL,
  `Unit_Price` INT NULL,
  PRIMARY KEY (`Product_ID`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Employee_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_Table` (
  `Emp_ID` INT NOT NULL AUTO_INCREMENT,
  `Emp_Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  `Employee_Tablecol` VARCHAR(45) NULL,  -- Consider renaming this column for clarity
  `Employee_Tablecol1` VARCHAR(45) NULL, -- Consider renaming this column for clarity
  PRIMARY KEY (`Emp_ID`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Customer_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer_Table` (
  `Customer_ID` INT NOT NULL AUTO_INCREMENT,
  `Customer_Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` INT NULL,
  PRIMARY KEY (`Customer_ID`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Time_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time_Table` (
  `Order_ID` INT NOT NULL AUTO_INCREMENT,
  `Order_Date` DATE NULL,
  `Year` VARCHAR(45) NULL,
  `Quarter` VARCHAR(45) NULL,
  `Month` DATE NULL,
  PRIMARY KEY (`Order_ID`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Sales_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales_Table` (
  `Sales_ID` INT NOT NULL AUTO_INCREMENT,  -- Added unique primary key for sales table
  `Product_ID` INT NOT NULL,
  `Order_ID` INT NOT NULL,  -- Changed to INT to match `Time_Table`
  `Customer_ID` INT NOT NULL,  -- Changed to INT to match `Customer_Table`
  `Employer_ID` INT NOT NULL,  -- Changed to INT to match `Employee_Table`
  `Total_ID` VARCHAR(45) NULL,  -- You may want to use a decimal type or similar for amounts
  `Quantity_ID` INT NULL,  -- Changed to INT for consistency
  `Discount_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`Sales_ID`),
  FOREIGN KEY (`Product_ID`) REFERENCES `Product_Table`(`Product_ID`),
  FOREIGN KEY (`Order_ID`) REFERENCES `Time_Table`(`Order_ID`),
  FOREIGN KEY (`Customer_ID`) REFERENCES `Customer_Table`(`Customer_ID`),
  FOREIGN KEY (`Employer_ID`) REFERENCES `Employee_Table`(`Emp_ID`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Employee_Table_has_Sales_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_Table_has_Sales_Table` (
  `Employee_Table_Emp_ID` INT NOT NULL,
  `Sales_Table_Sales_ID` INT NOT NULL,  -- Changed to match Sales Table primary key
  PRIMARY KEY (`Employee_Table_Emp_ID`, `Sales_Table_Sales_ID`),
  FOREIGN KEY (`Employee_Table_Emp_ID`) REFERENCES `Employee_Table`(`Emp_ID`),
  FOREIGN KEY (`Sales_Table_Sales_ID`) REFERENCES `Sales_Table`(`Sales_ID`)
)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
