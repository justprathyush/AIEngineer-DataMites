USE orders;

show tables;

select * from sales
where quantity>10;


select * from sales
where sales > 1000;

select * from sales
where category = 'Technology';

select * from sales
where category = 'Technology'
order by sales desc
limit 3;

select max(sales) from sales;

select * from sales
where sales < (select max(sales) from sales)
Order by sales 
limit 1
offset 1;

-- IN 
select * from sales
where subcategory in ('paper','art','phone');

-- BETWEEN
SELECT * FROM sales
WHERE orderdate BETWEEN '2016-10-03' AND '2017-10-03';

-- LIKE is used to return records based on the pattern
select * from sales
WHERE productname like 'Cisco%';

-- COUNT
select count(*) from sales
WHERE category = 'Technology';

-- SUM
select SUM(sales) from sales 
where category = 'Technology';

select Sum(Profit) from sales;

-- AVERAGE
select AVG(sales) from sales 
where category = 'Technology';

select AVG(profit) from sales;

-- MAX

-- SUM
select MAX(profit) from sales;


