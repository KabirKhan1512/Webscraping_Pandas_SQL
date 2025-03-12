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



