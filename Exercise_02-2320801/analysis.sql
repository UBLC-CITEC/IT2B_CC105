SELECT COUNT(*) FROM exercise_02.vehicle_collision;

SELECT
    DISTINCT(VEHICLE_TYPE_CODE_1),
    COUNT(*) AS KILLED,
    SUBSTRING(CRASH_DATE, 7, 4) AS accident_year,
    CRASH_DATE,
    BOROUGH
FROM
    exercise_02.vehicle_collision
GROUP BY
    VEHICLE_TYPE_CODE_1, accident_year, CRASH_DATE, BOROUGH
ORDER BY
    KILLED DESC;
