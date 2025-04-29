SELECT vehicle_type, SUM(killed) AS total_killed  /* With the highest killed from a vehicle type */
FROM (
       SELECT 
        VEHICLE_TYPE_CODE_1 AS vehicle_type, 
        CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED) AS killed
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_1 IS NOT NULL 
      AND VEHICLE_TYPE_CODE_1 <> '' 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_2, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_2 IS NOT NULL
     AND VEHICLE_TYPE_CODE_2 <> ''
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_3, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_3 IS NOT NULL
     AND VEHICLE_TYPE_CODE_3 <> '' 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_4, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_4 IS NOT NULL
     AND VEHICLE_TYPE_CODE_4 <> '' 
    UNION ALL
    SELECT VEHICLE_TYPE_CODE_5, CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)
    FROM exercise_02.vehicle_collision
    WHERE VEHICLE_TYPE_CODE_5 IS NOT NULL
     AND VEHICLE_TYPE_CODE_5 <> ''
) AS all_vehicles
GROUP BY vehicle_type
ORDER BY total_killed DESC
LIMIT 100;

SELECT /* With the highest killed from a location with year */
    BOROUGH AS location,
    YEAR(STR_TO_DATE(CRASH_DATE, '%m/%d/%Y')) AS crash_year,
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS total_killed
FROM exercise_02.vehicle_collision
WHERE BOROUGH IS NOT NULL AND BOROUGH <> ''
GROUP BY BOROUGH, crash_year
ORDER BY total_killed DESC
LIMIT 100;

SELECT /* With the highest killed from Year*/
    YEAR(STR_TO_DATE(CRASH_DATE, '%m/%d/%Y')) AS crash_year,
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS total_killed
FROM exercise_02.vehicle_collision
GROUP BY crash_year
ORDER BY total_killed DESC
LIMIT 100;
