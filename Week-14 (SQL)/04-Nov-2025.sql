show databases;
use orders;

select * from sales;

-- GROUP BY
SELECT Category, SUM(sales)
FROM sales
GROUP BY category;

SELECT subcategory, SUM(sales), count(quantity)
FROM sales
GROUP BY subcategory;

-- HAVING
SELECT subcategory, SUM(sales), count(quantity)
FROM sales
GROUP BY subcategory
HAVING count(quantity)>1000;

select orderid, subcategory
from sales
where subcategory = 'binders';

select * from sales
order by sales desc
limit 1
offset 4;

select *
from sales
where sales = (select min(sales) from sales);