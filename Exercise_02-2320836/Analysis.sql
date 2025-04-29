SELECT Vehicle_Type_Code_1, COUNT(*) AS fatal_accidents
FROM mydb.table1
WHERE Number_Of_Person_Killed > 0
GROUP BY Vehicle_Type_Code_1
ORDER BY Fatal_Accidents DESC;

SELECT  DISTINCT(Borough), SUBSTRING(Crash_Date, 7, 4) Year  , Zip_Code, COUNT(*) AS Total_Accidents
FROM mydb.table1
WHERE Crash_Date IS NOT NULL AND Borough IS NOT NULL AND Zip_Code IS NOT NULL
GROUP BY Borough
ORDER BY Total_Accidents DESC, Year DESC, Borough DESC, Zip_Code DESC;

