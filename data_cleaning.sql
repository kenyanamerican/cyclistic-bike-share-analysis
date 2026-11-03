
CREATE OR REPLACE TABLE
  `cylistic-project-one.cyclistic.trips_cleaned` AS

WITH ranked_rides AS (
  SELECT
    *,
    TIMESTAMP_DIFF(
      ended_at, started_at, SECOND
    ) AS ride_length_seconds,
    ROW_NUMBER() OVER (
      PARTITION BY ride_id
      ORDER BY started_at, ended_at
    ) AS row_num
  FROM
    `cylistic-project-one.cyclistic.trips_202510_202609`
)

SELECT
  * EXCEPT(row_num),
  ROUND(ride_length_seconds / 60.0, 2)
    AS ride_length_minutes,
  EXTRACT(
    DAYOFWEEK FROM started_at
  ) AS day_of_week,
  EXTRACT(
    MONTH FROM started_at
  ) AS ride_month
FROM ranked_rides
WHERE
  row_num = 1
  AND ride_length_seconds BETWEEN 60 AND 86400
  AND started_at >= TIMESTAMP('2025-10-01')
  AND started_at < TIMESTAMP('2026-10-01');
