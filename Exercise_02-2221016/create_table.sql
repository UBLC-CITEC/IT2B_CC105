CREATE TABLE `vehicle_collision` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CRASH_DATE` varchar(45) DEFAULT NULL,
  `CRASH_TIME` varchar(45) DEFAULT NULL,
  `BOROUGH` varchar(45) DEFAULT NULL,
  `ZIP_CODE` varchar(45) DEFAULT NULL,
  `LATITUDE` varchar(45) DEFAULT NULL,
  `LONGITUDE` varchar(45) DEFAULT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `ON_STREET_NAME` varchar(45) DEFAULT NULL,
  `CROSS_STREET_NAME` varchar(45) DEFAULT NULL,
  `OFF_STREET_NAME` varchar(45) DEFAULT NULL,
  `NUMBER_OF_PERSONS_INJURED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_PERSONS_KILLED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_PEDESTRIANS_INJURED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_PEDESTRIANS_KILLED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_CYCLIST_INJURED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_CYCLIST_KILLED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_MOTORIST_INJURED` varchar(45) DEFAULT NULL,
  `NUMBER_OF_MOTORIST_KILLED` varchar(45) DEFAULT NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_1` varchar(45) DEFAULT NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_2` varchar(45) DEFAULT NULL,
  `CONTRIBUTING_FACTOR _VEHICLE_3` varchar(45) DEFAULT NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_4` varchar(45) DEFAULT NULL,
  `CONTRIBUTING_FACTOR_VEHICLE_5` varchar(45) DEFAULT NULL,
  `COLLISION_ID` varchar(45) DEFAULT NULL,
  `VEHICLE_TYPE_CODE_1` varchar(45) DEFAULT NULL,
  `VEHICLE_TYPE_CODE_2` varchar(45) DEFAULT NULL,
  `VEHICLE_TYPE_CODE_3` varchar(45) DEFAULT NULL,
  `VEHICLE_TYPE_CODE_4` varchar(45) DEFAULT NULL,
  `VEHICLE_TYPE_CODE_5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
