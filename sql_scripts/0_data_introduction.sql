-- DATA 	INTRODUCTION
-- Inspecting table structures and performing initial validation checks before consolidation and cleaning.

use cyclistic;

-- 1) Previewing Sample records;
select * From jan limit 10;

select * from sept limit 5;

-- 2)  Inspecting Table Structure of months data to check schema consistency 
describe jan;
describe feb;
describe march;
describe apr;
describe may;
describe june;
describe july;
describe aug;
describe sept;
describe oct;
describe nov;
describe `dec`;

-- 4) Checking for Row counts
select count(*) from jan;
select count(*) from aug;


-- 4. Checking key categorical Values
select distinct member_casual from jan;
select distinct rideable_type from jan;


