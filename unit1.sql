-- To create new databse following command  
create schema unit_1;

					###### Now lets see  the dataset  #######

##use database/schema unit_1-- 

USE unit_1;

## Show the dataset
SELECT * FROM tips AS tp;
-- 16.99	1.01	Female	No	Sun	Dinner	2
-- 10.34	1.66	Male	No	Sun	Dinner	3
-- 21.01	3.5	Male	No	Sun	Dinner	3 
-- .
-- .


-- show smoker column only
SELECT smoker FROM tips limit 2;
-- No
-- No


## show multiple columns from a table-- 
SELECT total_biLL,sex,time FROM tips;

## select only 7 rows of a table
SELECT * FROM tips LIMIT 7;

-- show unique values from the "size" column
SELECT distinct(SIZE) FROM tips;

-- SHOW ONLY DISTICT VALUES
SELECT distinct size FROM tips; 

SELECT distinct* FROM tips; 

select distinct day from tips limit  5;

-- count all the rows 
select count(*) from tips;

-- 
select count(total_bill) from tips;

select  count(distinct sex) from tips;
-- // 2 

count number of days in dataset 
select count(day) from tips;
-- //244


select distinct day from tips;

-- count unique number of days from table
select count(distinct day) from tips;
-- //4

select count(sex) from tips;
-- //244

-- count number of unique rows in tip column
select count(distinct tip) from tips;
## //123

-- where allows to filter based on both text and num values table
select * from tips
where day= "sun";

-- show the data only when tip greater than 5
select * from tips
where tip>5;

-- show the count of row when day is sunday
select count(*) from tips
where day='sun';

-- show the distinct count time when day is sunday
select count(distinct time),time from tips
where day='sun'; 

-- show the tip where day is sunday
 select tip from tips
 where day='sun';

-- show the day and tip where smoker comes to dinner
select day,tip from tips
where smoker='yes' and time='dinner';

-- show the data when smoker comes 
select * from tips
where smoker = 'yes'; 

-- how many unique time available
select distinct time from tips; 

-- show all the unique data where tip> 5 
select distinct * from tips
where tip>5;

-- opposite to LIKE is NOT Like

-- show me engin size except 3 and similar
select Engine_size
from car_sales
where Engine_size not like '3%';

-- show me the engine size except 3's decimal place
select Engine_size
from car_sales
where Engine_size not like '3._';

--  show me the Engine sizes except 3 and decimals
select Engine_size 
from car_sales 
where Engine_size not like '%3._';

-- show me the Engine size which conatin anything related to 3
select Engine_size as SIZE
from car_sales
where Engine_size  like '%3%';

-- show all which have 3.decimal numbers only
select Engine_size as SIZE
from car_sales
where Engine_size  like '3_%';

-- show me the Engine size as SIZE whch donot include 3 and decimal
select Engine_size as SIZE
from car_sales
where Engine_size not like '3%';





