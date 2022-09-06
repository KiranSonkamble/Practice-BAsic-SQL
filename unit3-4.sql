use unit_1;

select * from bolly;

select MovieName as NAme
from bolly 
where MovieName like '%states';

select MovieName
from bolly
where MovieName like '%10';

select count(*) 
from bolly 
where Genre is null;

select count(*)
from bolly
where Genre in ('Thriller','Action','Romance')
and YoutubeViews >=523456
and Budget between 5 and 29;
-- //35

select count(*)
from bolly
where Genre in ('Thriller','Action','Romance')
and Budget between 5 and 29
and YoutubeViews >=523456;
-- //35

select count(*)
from bolly
where Budget between 5 and 29
and YoutubeViews >=523456
and Genre in ('Thriller','Action','Romance');
-- //35

-- %%%%%%%%%%%%%  Aggregation Function %%%%%%%%%%%%% --
-- aggregation function is a function where the values of multiple rows 
						-- are grouped together to form a single summery value

-- avg() is the mean
-- min() is the minimum
-- max() is maximum
-- count() is the count
-- sum() is the sum

select * 
from bolly ;

-- show the min,max, avg,sum and count of budget
select min(Budget),avg(Budget), max(Budget),
		sum(Budget), count(Budget)
from bolly;



-- Show the max budget when genre is rom , comedy and collection in range of 99-200.
select max(budget)
from bolly
where Genre in ('Romance','Comedy')
and BoxOfficeCollection between 99 and 200;


-- ORDER by : is used to sort your result in ascending or descending order according to values or column

-- !!!!!!!! Always ORDER BY comes at the last stage of query

select * 
from bolly
where genre = 'Comedy' 
and BoxOfficeCollection>55
order by Budget;

-- show the movies as per highest Youtube likes
select *
from bolly
order by YoutubeViews desc;

-- show the movies which have box collection >5 and order by highest movies but donot include Acion Genre.
select MovieName,Genre, Budget,BoxOfficeCollection
from bolly
where genre!= 'Action' 
and BoxOfficeCollection >5
order by YoutubeViews desc;

-- sorting multiple columns
select MovieName,Genre, Budget,BoxOfficeCollection,YoutubeViews,YoutubeLikes
from bolly
where genre!= 'Action' 
and BoxOfficeCollection >5 
order by YoutubeLikes,YoutubeViews desc;



-- !@!@!@!!@!@!@!@!!@!@!@!@!@!@! GROUP BY
--  commonly group by  comes with aggrigate function 
-- after the from clause gorup by must be used

-- Q --  Show the type and count of sex

-- Show the total count  of sex 
select count(sex)
from tips;

-- show the unique sex types
select distinct sex
from tips;

-- this query not giving the expected result 
select distinct sex, count(sex)
from tips;

-- show the male and female count respectively
select sex, count(sex)
from tips
group by sex;


-- 
select * 
from tips;
-- 

-- This query gives all data grouped on day 
select * 
from tips
group by day;

-- This query gives the count and data grouped on day
select *,count(*) 
from tips
group by day;


-- This query gives the count and data grouped on day and sort by descending order
select *,count(*) 
from tips
group by day
Order By day desc;

-- show the avg tip based on tip

select tip, avg(tip),avg(total_bill),total_bill, count(tip)
from tips
group by tip;

-- show the average and count grouped by total bill
select avg(tip),total_bill,count(tip)
from tips
group by total_bill;

-- on an avg how much tip can be given for total bill based on/grouped on sizes
select avg(tip),total_bill,size
from tips
where smoker='no'
group by size
order by total_bill desc;
-- 

-- #####  Having clause
-- Q --  Show day, size, tip and grouped on size having tip more than 2

-- this query gives day and size where size is more than 2
select day,size
from tips
where size>2;

-- show day ,size,tip, count(tip) grouped on size having tip >= 2
select day ,size,tip, count(tip)
from tips
group by size
having tip>=2;


-- show the day, size, tip and grouped on size having tip more than 2 but no smoker
select day ,size,tip, count(tip)
from tips
where smoker = 'no'
group by size
having tip>2;

-- must specify the having column in the select clause
select day ,size, count(tip)
from tips
group by size
having tip>2;


-- show the day, size, tip and grouped on size having average tip more than 2 but no smoker
select day ,size,tip, avg(tip)
from tips
where smoker = 'no'
group by size
having avg(tip)>2;


-- show the day, size, tip and grouped on size having tip more than 2 but no smoker
select day ,size,tip, count(tip)
from tips
where smoker = 'no'
group by size
having tip>2
order by tip
limit 3;
-- ******************************************************************************************************* -- 








  