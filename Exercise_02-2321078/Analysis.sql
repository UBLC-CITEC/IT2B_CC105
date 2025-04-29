--This query identifies the type of vehicle most frequently associated with fatalities.
SELECT
    VEHICLE_TYPE_CODE_1 AS VehicleType,
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS TotalKilled -- Calculates the total number of persons killed for each vehicle type.
FROM
    exercise_02.VEHICLE_COLLISION
WHERE
    NUMBER_OF_PERSONS_KILLED IS NOT NULL AND CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED) > 0
    AND VEHICLE_TYPE_CODE_1 IS NOT NULL AND VEHICLE_TYPE_CODE_1 != ''
GROUP BY
    VehicleType
ORDER BY
    TotalKilled DESC;

-- This query determines the street where the highest number of fatalities occurred.
SELECT
    ON_STREET_NAME AS StreetName,
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS TotalKilled
FROM
    exercise_02.VEHICLE_COLLISION
WHERE
    NUMBER_OF_PERSONS_KILLED IS NOT NULL AND CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED) > 0
    AND ON_STREET_NAME IS NOT NULL AND ON_STREET_NAME != ''
GROUP BY
    StreetName
ORDER BY
    TotalKilled DESC;

-- This query identifies the year with the highest number of persons killed in vehicle collisions.
SELECT
    SUBSTR(CRASH_DATE, 7, 4) AS CrashYear,
    SUM(CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED)) AS TotalKilled
FROM
    exercise_02.VEHICLE_COLLISION
WHERE
    NUMBER_OF_PERSONS_KILLED IS NOT NULL AND CAST(NUMBER_OF_PERSONS_KILLED AS UNSIGNED) > 0
    AND CRASH_DATE IS NOT NULL AND LENGTH(CRASH_DATE) = 10
GROUP BY
    CrashYear
ORDER BY
    TotalKilled DESC;
