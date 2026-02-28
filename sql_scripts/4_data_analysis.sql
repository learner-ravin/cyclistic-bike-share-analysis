--  ANALYSIS
-- Business Question    -->          How do annual members and casual riders use Cyclistic bikes differently?

-- Objective: To identify behavioral differences between rider types to support marketing strategies aimed at converting casual riders into annual members.

use cyclistic;


-- 1) Rider Composition Analysis: What are Riders Distribution and percentage share of total rides?
select 
    member_casual,
    count(*) as total_rides,
    round(count(*) * 100.0 / (select count(*) from bike_trips), 2)  as ride_percentage
from bike_trips
group by member_casual;

-- 2) What is average ride duration (in minutes) by user type ?
select 
    member_casual,
    round(avg(ride_length), 2) as avg_ride_duration_mint
from bike_trips
group by member_casual;

-- 3) Weekly Usage Patterns: No of rides taken the Riders by the day of the week.
select week_day,
		sum(case when member_casual = 'member' then 1 else 0 end) as member_rides,
		sum(case when member_casual = 'casual' then 1 else 0 end) as casual_rides
	from bike_trips
	group by week_day
	order by field(week_day,'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
    
    
-- 4. Hourly Distribution by Rider Type.
select start_hour,
		sum(case when member_casual = 'member' then 1 else 0 end) as member_rides,
		sum(case when member_casual = 'casual' then 1 else 0 end) as casual_rides
	from bike_trips
	group by start_hour
	order by start_hour;
-- ----------------- OR 
select start_hour, member_casual, count(*) as ride_count from bike_trips
	group by start_hour, member_casual
    order by start_hour;
    
-- 5) No of rides in each month
select month_name, count(ride_id) from bike_trips
	group by month_name
    	order by field(month_name, 'January', 'February', 'March', 'April', 'May' , 'June',
												'July', 'August' , 'September', 'October', 'November', 'December');

-- 6) Seasonal Trends.What are Monthly ride distribution by rider type?
select month_name,
		sum(case when member_casual = 'member' then 1 else 0 end) as member_rides,
		sum(case when member_casual = 'casual' then 1 else 0 end) as casual_rides
	from bike_trips
	group by month_name
	order by field(month_name, 'January', 'February', 'March', 'April', 'May' , 'June',
												'July', 'August' , 'September', 'October', 'November', 'December');

-- 7) Bike Type Preference by Rider types
select  rideable_type, member_casual,
		count(*) as total_rides
	from bike_trips
	group by rideable_type, member_casual;

-- 8) Average Ride duration by Weekday and Rider Type
select week_day,
		round(avg(case when member_casual = 'member' then ride_length end), 2) as member_avg_duration,
		round(avg(case when member_casual = 'casual'   then ride_length end), 2) as casual_avg_duration
	from bike_trips
	group by week_day
	order by field(week_day, 'Sunday', 'Monday','Tuesday', 'Wednesday', 'Thursday', 'Friday','Saturday');


-- 9. Weekend vs Weekday Usage Pattern
select 
    case when week_day in ('Saturday','Sunday') then 'Weekend' else 'Weekday' end as day_type,
    member_casual,
    count(*) as total_rides
from bike_trips
group by day_type, member_casual;

-- 10)What are peak hours ?
select start_hour, count(ride_id) 
	from bike_trips
	group by start_hour
	order by start_hour;

