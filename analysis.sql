
-- 1. Total Ridership by Rider Type

SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM `cylistic-project-one.cyclistic.trips_cleaned`
GROUP BY member_casual;


-- 2. Average Ride Duration by Rider Type

SELECT
  member_casual,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
FROM `cylistic-project-one.cyclistic.trips_cleaned`
GROUP BY member_casual;


-- 3. Weekly Ridership by Rider Type
-- Uses Chicago local time

SELECT
  EXTRACT(
    DAYOFWEEK FROM DATETIME(started_at, 'America/Chicago')
  ) AS day_number,
  FORMAT_DATETIME(
    '%A',
    DATETIME(started_at, 'America/Chicago')
  ) AS day_of_week,
  member_casual,
  COUNT(*) AS total_rides
FROM `cylistic-project-one.cyclistic.trips_cleaned`
GROUP BY
  day_number,
  day_of_week,
  member_casual
ORDER BY
  day_number,
  member_casual;


-- 4. Monthly Ridership Trends by Rider Type
-- Uses Chicago local time

SELECT
  FORMAT_DATETIME(
    '%Y-%m',
    DATETIME(started_at, 'America/Chicago')
  ) AS ride_month,
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
FROM `cylistic-project-one.cyclistic.trips_cleaned`
GROUP BY
  ride_month,
  member_casual
ORDER BY
  ride_month,
  member_casual;


-- 5. Hourly Ridership by Rider Type
-- Uses Chicago local time

SELECT
  EXTRACT(
    HOUR FROM DATETIME(started_at, 'America/Chicago')
  ) AS ride_hour,
  member_casual,
  COUNT(*) AS total_rides
FROM `cylistic-project-one.cyclistic.trips_cleaned`
GROUP BY
  ride_hour,
  member_casual
ORDER BY
  ride_hour,
  member_casual;
