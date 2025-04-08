CREATE TABLE `vehicle_collision` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Crash_Date` varchar(10) DEFAULT NULL,
  `Crash_Time` varchar(5) DEFAULT NULL,
  `Borough` varchar(10) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longtitude` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `On_Street_Name` varchar(45) DEFAULT NULL,
  `Cross_Street_Name` varchar(45) DEFAULT NULL,
  `Off_Street_Name` varchar(45) DEFAULT NULL,
  `Number_Of_Person_Injured` varchar(45) DEFAULT NULL,
  `Number_Of_Person_Killed` varchar(45) DEFAULT NULL,
  `Number_Of_Pedestrian_Injured` varchar(45) DEFAULT NULL,
  `Number_Of_Pedestrian_Killed` varchar(45) DEFAULT NULL,
  `Number_Of_Cyclist_Injured` varchar(45) DEFAULT NULL,
  `Number_Of_Cyclist_Killed` varchar(45) DEFAULT NULL,
  `Number_Of_Motorist_Injured` varchar(45) DEFAULT NULL,
  `Number_Of_Motorist_Killed` varchar(45) DEFAULT NULL,
  `Contributing_Factor_Vehicle 1` varchar(45) DEFAULT NULL,
  `Contributing_Factor_Vehicle_2` varchar(45) DEFAULT NULL,
  `Contributing_Factor_Vehicle_3` varchar(45) DEFAULT NULL,
  `Contributing_Factor_Vehicle_4` varchar(45) DEFAULT NULL,
  `Contributing_Factor_Vehicle_5` varchar(45) DEFAULT NULL,
  `Collison_ID` varchar(45) DEFAULT NULL,
  `Vehicle_Type_Code_1` varchar(45) DEFAULT NULL,
  `Vehicle_Type_Code_2` varchar(45) DEFAULT NULL,
  `Vehicle_Type_Code_3` varchar(45) DEFAULT NULL,
  `Vehicle_Type_Code_4` varchar(45) DEFAULT NULL,
  `Vehicle_Type_Code_5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57152 DEFAULT CHARSET=latin1
