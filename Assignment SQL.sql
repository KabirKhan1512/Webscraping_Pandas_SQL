drop table yahoo_finance;

create table yahoo_finance (
	symbol varchar(10) primary key not null,
	name varchar(50),
	price float,
	change float,
	per_change float,
	volume float,
	avg_volume float,
	market_cap float,
	p_e_ratio float,
	year_percent_change float
);

select * from yahoo_finance;

-- 1.	Retrieve all companies with a market capitalization greater than 1 trillion dollars
select * 
from yahoo_finance
where market_cap > 1000000000000;

-- 2.	Find the top 5 companies with the highest percentage change (per_change).
select top (5) name, per_change
from yahoo_finance
order by per_change desc;

-- 3.	Get the average price of all stocks.
select avg(price) as average
from yahoo_finance;

-- 4.	List all companies where p_e_ratio is null (missing).
select *
from yahoo_finance
where p_e_ratio is null;

-- 5.	Find the total trading volume of all stocks combined.
select SUM(volume) as total_volume
from yahoo_finance;

-- 6.	Retrieve all companies whose symbol starts with 'A'.
select *
from yahoo_finance
where symbol like 'A%';

-- 7.	Find the company with the lowest price.
select *
from yahoo_finance
where price = (select min(price) from yahoo_finance);

-- 8.	Calculate the total number of companies with a negative year_percent_change
select count(name) as no_of_companies
from yahoo_finance
where year_percent_change < 0;



-- 9.	Sort companies by avg_volume in descending order and limit the result to 10 companies.
select *
from yahoo_finance
order by avg_volume desc;

-- 10.	Get the company with the highest market_cap.
select top(1) *
from yahoo_finance
order by market_cap desc;

-- 11.	Find the average p_e_ratio of all companies that have a non-null p_e_ratio.
select AVG(p_e_ratio) as avg_ep_ratio
from yahoo_finance
where p_e_ratio is not null;

-- 12.	Find the total volume of all stocks traded for companies with a p_e_ratio greater than 20.
select sum(volume) as sum
from yahoo_finance
where p_e_ratio > 20;

-- 13.	Find companies that have a per_change greater than the average per_change of all companies.
select *
from yahoo_finance
where per_change > (select avg(per_change) from yahoo_finance);

-- 14.	Display the symbol, name, and year_percent_change for stocks with a year_percent_change greater than 50%.
select symbol, name, year_percent_change
from yahoo_finance
where year_percent_change > 50;

-- 15.	Retrieve the top 5 stocks with the highest volume traded.
select top(5) *
from yahoo_finance
order by volume desc;

-- 16. Retrieve the symbol, name, and per_change of stocks where the per_change is between 5% and 10%.
select symbol, name, per_change
from yahoo_finance
where per_change between 5 and 10;

-- 17. Retrieve the symbol, name, and price of stocks where the price is greater than the average price of all stocks.
select symbol, name, price
from yahoo_finance
where price > (select AVG(price) from yahoo_finance);

-- 18. Calculate the difference between volume and avg_volume for each stock and display the symbol, name, and the calculated difference.
select symbol, name, (volume-avg_volume) as difference
from yahoo_finance;

-- 19. Retrieve the top 5 companies with the highest absolute percentage change (per_change) in stock price.
select top(5) *
from yahoo_finance
order by ABS(per_change) desc;

-- 20. List the top 5 companies with the highest year_percent_change, and the bottom 5 companies with the lowest year_percent_change.
select * from ( select top(5) *
from yahoo_finance
order by year_percent_change desc) as top_5

union

select * from ( select top(5) *
from yahoo_finance
order by year_percent_change) as bottom_5
order by year_percent_change desc;

-- 21. Find all companies where the volume is at least 50% higher than their avg_volume.
select *
from yahoo_finance
where volume > 1.5 * (avg_volume);

-- 22. Identify the company with the highest change and the company with the lowest change in stock price.
select * from (select top(1) name, change from yahoo_finance order by change desc) as highest_change
union
select * from (select top(1) name, change from yahoo_finance order by change )as lowest_change;



