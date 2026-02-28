-- DATA CLEANING
-- In this script I did data cleaning, like fixing the data types, removing invalid records, handling missing values etc

use cyclistic;

-- 1) Converting Date Columns to DATETIME
alter table bike_trips
	modify started_at datetime,
	modify ended_at datetime;

-- 2) Checking for  Missing Values 
select count(*) 
	from bike_trips
	where ride_id is null;
    
select count(*) 
	from bike_trips 
	where rideable_type is null;
    
select count(*) from bike_trips
	where member_casual is null;
                                                           
-- 3) Removing rows with missing values
delete from bike_trips
	where end_lat is null;

-- 4) Checking for  Duplicated Ride IDs
select ride_id, count(*) as duplicate_count
	from bike_trips
		group by ride_id
		having count(*) > 1;

-- 5) Validate Timestamp Logic
delete from bike_trips                          -- Remove records where end time occurs before start time
where ended_at <= started_at;


-- 6) Total Final rows
select count(*) as total_rows
from bike_trips;