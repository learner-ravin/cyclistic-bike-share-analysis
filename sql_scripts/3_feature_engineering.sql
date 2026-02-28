--  FEATURE ENGINEERING
-- Creating new columns needed to understand rider behavior patterns for our analysis.

use cyclistic;

-- 1) Creating new column 'ride_length'                    ->   Measures duration of each trip in minutes
alter table bike_trips
	add column ride_length int;

update bike_trips
	set ride_length = timestampdiff(minute, started_at, ended_at);

-- 1.2)  Removing unrealistic ride durations
delete from bike_trips where ride_length <= 0;     -- rides less than or equal to zero minutes
delete from bike_trips where ride_length > 720;   -- rides longer than 12 hours

-- 2. Creating column 'week_day'
alter table bike_trips
	add column week_day varchar(20);

update bike_trips
	set week_day = dayname(started_at);

-- 3) Creating column 'month_name'
alter table bike_trips
	add column month_name varchar(20);

update bike_trips
	set month_name = monthname(started_at);

-- 4) Creating column  'start_hour'
alter table bike_trips
	add column start_hour int;

update bike_trips
	set start_hour = hour(started_at);