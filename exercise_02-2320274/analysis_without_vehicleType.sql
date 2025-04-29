-- This is my first query trial
SELECT 
  SUBSTRING(CRASH_DATE, 7, 4) AS CrashYear, -- Extracts the year from CRASH_DATE
  BOROUGH AS Location,                      -- Renames BOROUGH column as Location
  COUNT(*) AS TotalIncidents,               -- Counts TotalIncidents per year and BOROUGH
  SUM(CAST(NULLIF(NUMBER_OF_PERSONS_KILLED, '') AS UNSIGNED)) AS TotalKilled -- Converts non-empty killed values to numbers and sums them
FROM exercise_02.VEHICLE_COLLISION
WHERE BOROUGH IS NOT NULL     -- Filters out rows where BOROUGH is completely NULL
  AND BOROUGH <> ''           -- Filters out rows where BOROUGH is an empty string
GROUP BY CrashYear, BOROUGH   -- Groups data by extracted year and borough name
ORDER BY TotalIncidents DESC  -- Orders results by highest number of incidents first
LIMIT 100;                    -- Limits the result to the top 100 rows
