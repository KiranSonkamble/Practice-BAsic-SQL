use unit_5;

select * from elec;
select * from books;

-- dataType must be same 
-- show all the columns after inner join
select *
from elec as e
inner join books as b
on e.Area=b.Region;

-- show only area, state and AreaCount
select e.Area, b.State,count(Area) as AreaCount
from elec as e
inner join books as b
on e.Area=b.Region
group by Area;


-- show area and state and count using comon column in both the table
select e.Area, b.State,count(area) as AreaCount
from elec as e
inner join books as b
using(State)
group by Area;

-- _____________________________________________________________________________

-- whats common on both sides is State
select e.Area, b.State, count(area) as AreaCount
from elec as e
inner join books as b
using (State)
group by Area;



-- show the left join
select e.Area, b.State,count(area)
from elec as e
left join books as b
on e.Area=b.Region
group by Area;


-- show the left join on Area and Region
select e.Area, b.State,count(b.Region)
from elec as e
left join books as b
on e.Area=b.Region
group by b.Region;



-- show right join using common column State
select e.Area, b.State,count(b.Region)
from elec as e
right join books as b
using(State)
group by b.Region;

-- jooin the tables on states column
select e.Area, b.Region,b.State as books,e.state as elec
from elec as e 
join books as b
on b.State=e.State;

-- By default join is Inner join
select e.Area, b.Region,b.State as books,e.state as elec
from elec as e 
join books as b
using(State);

-- 
select e.Area, b.Region,b.State as books,e.state as elec
from elec as e 
join books as b
using(State);


-- ____________________________________________________

use unit_1;

select * from tips;

-- show the total_bill >10
select count(*)
from tips
where total_bill>10;

-- ______________________________________________________________________________________--                     
-- Union/ Union all/ Except
-- min 2 table
-- datatype must be same to perform operation
-- number of columns must be same
use unit_5;

-- give me the 
select count(books.region)
from books
union
select count(elec.Area)
from elec;

select count(books.region)
from books
union all
select count(elec.Area)
from elec;



-- query and sub query
select count(tt.total_bill),count(t.total_bill)
from tips as t, (select total_bill,tip,sex,day,time
					from tips 
                    where smoker = 'no')as tt;
                    
-- case clause 

-- simple case example
select day,total_bill,
case
	when total_bill<=10 then '10'
    when total_bill between 10 and 20 then '17'
    else 'more'
end as caseTest
from tips;




