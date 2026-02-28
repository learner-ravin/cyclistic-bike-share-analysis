-- DATA COMBINATION
-- In this script I combined all the monthly tables into one unified table 'bike_trips' for all future tasks.

use cyclistic;

-- 1) Drop existing table if exists.
drop table if exists bike_trips;

-- 2) Creating the main table using jan data
create table bike_trips as
select * from jan;

-- 3)  Adding all other months data into 'bike_trips' table 
insert into bike_trips select * from feb;
insert into bike_trips select * from march;
insert into bike_trips select * from apr;
insert into bike_trips select * from may;
insert into bike_trips select * from june;
insert into bike_trips select * from july;
insert into bike_trips select * from aug;
insert into bike_trips select * from sept;
insert into bike_trips select * from oct;
insert into bike_trips select * from nov;
insert into bike_trips select * from `dec`;

-- 4)  Checking the table
select count(*) as total_rows from bike_trips;
