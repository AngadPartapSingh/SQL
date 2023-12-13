SELECT * 
FROM portfolio1.weeklyshop;

select sum(spend), 
sum(income), 
(sum(spend)/sum(income))*100 as spend_percentage 
from weeklyshop;

select spend, 
income, 
(spend/income)*100 as spend_percentage, 
famsize from weeklyshop;

select sum(spend), 
sum(income), 
sum((spend/income)*100) as spend_percentage, 
famsize from weeklyshop 
group by famsize;


select famsize, 
sum(income) as total_income 
from weeklyshop 
group by famsize 
order by 1 asc;


select store, 
SUM(SPEND) as total_spend 
from weeklyshop 
group by store;

select sum(gtime), 
store from weeklyshop 
group by store 
order by 1;

select sum(gtime), 
sum(income), 
famsize from weeklyshop 
group by famsize 
order by famsize desc;

select famsize, 
sum(spend) from weeklyshop 
group by famsize 
order by 1 asc;