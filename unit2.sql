-- show the dat which give tip more than 6
use unit_1;
select * from tips
where tip>6;

select count(smoker)
from tips
where time='Lunch';

select count(distinctrow size)  
from tips 
where time= 'Lunch';


select distinctrow size
from tips 
where time= 'Lunch';


select distinctrow size
from tips 
where time= 'Lunch';

############-- logical opearation --############ 

-- show the netflix dataset
select * from netflix;

select count(*) from netflix;
-- show the data whch have Genre Comedy and Lunguage is English
select * 
from netflix
where Genre='Comedy' and Languages='English';

-- get all the details of spanish language
select *
from netflix
where languages='Polish';

-- Use danti dataset
select count(*)
from danti;
-- //10000
select * 
from danti;

-- show the brand skechers or UGG
select * 
from danti
where Brand='Skechers' or Brand='UGG';


select count(*) 
from danti
where Brand='Skechers' or Brand='UGG';
-- // 144

select count(*) 
from danti
where Brand=('Skechers' or 'UGG');
-- // 9997

-- ***** between  : values within the range ****** --
-- &&&&& between=> (>= and <=)

select * from danti;
select brand,name,colors ,count(name)
from danti
where sizes >7 and sizes<10;
-- //3588


-- show the brand,name,colors where sizes between 7 and 10
-- this code is without between keyword
select brand,name,colors ,count(name)
from danti
where sizes >=7 and sizes<=10;
-- // 5190


-- this code is with between keyword
select brand,name,colors 
from danti
where sizes between 7 and 10;
-- //5190


select count(*)
from danti 
where colors between 'Black' and 'Tauple';

select count(*)
from danti 
where colors between 'Army' and 'Olive';
-- //6826


select count(*) 
from danti
where dateAdded between '2019-01-01T09:27:22Z' and '2019-12-01T09:27:22Z';
-- // 8636


-- show  all the data where band si Array or Pleaser between 2019-01 to 2019-12
select *,count(*)
from danti
where dateAdded between '2019-01-01T09:27:22Z' and '2019-12-01T09:27:22Z' and Brand='ARRAY' or Brand='Pleaser' ;
-- // 426

-- ^^^^^^^^ where 'COLUMN_name' in (value1, value2,..) ^^^^^^^^ --

select count(*) 
from tips
where tip= 5 or tip=2 or tip= 3;
-- //66

-- IN operator allows to specify multiple values inn WHERE clause
-- IN is not a range, must specify distinct values

select count(*)
from tips
where tip in (5,2,3);
-- //66


-- show the bills between 10 and 20 range
select *
from tips 
where total_bill between 10 and 20;


-- show the total_bill for 10.34 and 18.64 only
select * 
from tips
where total_bill in (10.34,18.64);


-- show the tip when size is >2 on weekends
select total_bill,tip, size
from tips 
where day in('Sun','Sat')
	and size>2;


-- show the distinct days
select distinct day
from tips;


-- ______ NULL values in a table _________--
 select *
 from car_sales;

select *
from car_sales
where Engine_size is null;

-- _____________ IS NOT NULL __________--

select * from car_sales
where Engine_size is not null; 


-- ***  'LIKE' or 'NOT LIKE' ***--
--  sometime you know the pattern rather than specific text
--  '%' will mach 0 or many text character >> 'Ca%'
-- '_' will match any single charcter only >>

select * 
from car_sales
where model like 'cam%';

-- give me all anything similar to '3' Engine_size
select Engine_size
from car_sales
where engine_size like '3%';

-- give me engine size which is exact 3.some number
select Engine_size
from car_sales
where Engine_size like '3._'; 

