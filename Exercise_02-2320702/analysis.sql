SELECT vehicle_type, SUM(killed) AS total_killed  /* With the highest killed from a vehicle type */
FROM (
       SELECT /* Different Vehicle Types */
        VEHICLE_TYPE_CODE_1 AS vehicle_type, 
        CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED) AS killed /* To count with the most total killed*/
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_1 IS NOT NULL 
      AND VEHICLE_TYPE_CODE_1 <> ''  /* To remove blank cell*/ 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_2, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_2 IS NOT NULL
     AND VEHICLE_TYPE_CODE_2 <> '' /* To remove blank cell*/ 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_3, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_3 IS NOT NULL
     AND VEHICLE_TYPE_CODE_3 <> ''  /* To remove blank cell*/ 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_4, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_4 IS NOT NULL 
     AND VEHICLE_TYPE_CODE_4 <> ''  /* To remove blank cell*/ 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_5, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_5 IS NOT NULL
     AND VEHICLE_TYPE_CODE_5 <> '' /* To remove blank cell*/ 
) AS all_vehicles
GROUP BY vehicle_type
ORDER BY total_killed DESC
LIMIT 100;

SELECT /* With the highest killed from a location with year */
    BOROUGH AS location, /* Set Borough as Location inthe table*/
    YEAR(STR_TO_DATE(CRASH_DATE, '%m/%d/%Y')) AS crash_year, /* Format Crash_Date to Year*/
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS total_killed /* To count with the most total killed*/
FROM exercise_02.vehicle_collision
WHERE BOROUGH IS NOT NULL AND BOROUGH <> ''
GROUP BY BOROUGH, crash_year
ORDER BY total_killed DESC
LIMIT 100;

SELECT /* With the highest killed from Year*/
    YEAR(STR_TO_DATE(CRASH_DATE, '%m/%d/%Y')) AS crash_year, /* Format Crash_Date to Year*/
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS total_killed /* To count with the most total killed*/
FROM exercise_02.vehicle_collision
GROUP BY crash_year
ORDER BY total_killed DESC
LIMIT 100;
