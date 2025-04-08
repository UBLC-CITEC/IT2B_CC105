SELECT COUNT(*) FROM exercise_02.vehicle_collision;

SELECT * FROM exercise_02.vehicle_collision limit 100;

SELECT DISTINCT(ON_STREET_NAME), COUNT(*) as COUNT FROM exercise_02.vehicle_collision GROUP BY NUMBER_OF_PERSONS_KILLED asc;
