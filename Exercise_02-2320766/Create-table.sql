CREATE TABLE IF NOT EXISTS `exercise_02`.`VEHICLE_COLLISION` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CRASH_DATE` VARCHAR(10) NULL,
  `CRASH_TIME` VARCHAR(5) NULL,
  `BOROUGH` VARCHAR(45) NULL,
  `ZIP_CODE` VARCHAR(8) NULL,
  `LATITUDE` VARCHAR(45) NULL,
  `LONGITUDE` VARCHAR(45) NULL,
  `LOCATION` VARCHAR(45) NULL,
  `ON_STREET_NAME` VARCHAR(45) NULL,
  `CROSS_STREET_NAME` VARCHAR(45) NULL,
  `OFF_STREET_NAME` VARCHAR(45) NULL,
  `NUMBER_OF_PERSONS_INJURED` VARCHAR(45) NULL,
  `NUMBER_OF_PERSONS_KILLED` VARCHAR(45) NULL,
  `NUMBER_OF_PEDESTRIANS_INJURED` VARCHAR(45) NULL,
  `NUMBER_OF_PEDESTRIANS_KILLED` VARCHAR(45) NULL,
  `NUMBER_OF_CYCLIST_INJURED` VARCHAR(45) NULL,
  `NUMBER OF CYCLIST KILLED` VARCHAR(45) NULL,
  `NUMBER_OF_MOTORIST_INJURED` VARCHAR(45) NULL,
  `NUMBER_OF_MOTORIST_KILLED` VARCHAR(45) NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_1` VARCHAR(45) NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_2` VARCHAR(45) NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_3` VARCHAR(45) NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_4` VARCHAR(45) NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_5` VARCHAR(45) NULL,
  `COLLISION_ID` VARCHAR(45) NULL,
  `VEHICLE_TYPE_CODE_1` VARCHAR(45) NULL,
  `VEHICLE_TYPE_CODE_2` VARCHAR(45) NULL,
  `VEHICLE_TYPE_CODE_3` VARCHAR(45) NULL,
  `VEHICLE_TYPE_CODE_4` VARCHAR(45) NULL,
  `VEHICLE_TYPE_CODE_5` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
