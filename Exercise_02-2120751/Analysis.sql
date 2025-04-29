
SELECT COUNT(*) AS total_rows 
FROM vehicle_collision.vehicle_collision;

SELECT 
    VEHICLE_TYPE_CODE_1 AS Vehicle_Type, 
    SUM(NUMBER_OF_PERSONS_KILLED) AS Total_Killed 
FROM vehicle_collision.vehicle_collision
WHERE NUMBER_OF_PERSONS_KILLED > 0
GROUP BY VEHICLE_TYPE_CODE_1 
ORDER BY Total_Killed DESC 
LIMIT 1;

SELECT 
    CRASH_DATE, 
    SUM(NUMBER_OF_PERSONS_KILLED) AS Total_Killed 
FROM vehicle_collision.vehicle_collision 
WHERE NUMBER_OF_PERSONS_KILLED > 0
GROUP BY CRASH_DATE 
ORDER BY Total_Killed DESC 
LIMIT 1;

SELECT 
    BOROUGH, 
    SUBSTRING(CRASH_DATE, 7, 4) AS Crash_Year, 
    ZIP_CODE, 
    COUNT(*) AS Total_Accidents, 
    SUM(NUMBER_OF_PERSONS_KILLED) AS Total_Killed 
FROM vehicle_collision.vehicle_collision
WHERE 
    CRASH_DATE IS NOT NULL 
    AND BOROUGH IS NOT NULL 
    AND ZIP_CODE IS NOT NULL
GROUP BY BOROUGH
ORDER BY Total_Killed DESC, Crash_Year DESC, BOROUGH ASC;
    
    
    
    
