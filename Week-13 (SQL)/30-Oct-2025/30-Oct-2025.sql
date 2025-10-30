CREATE DATABASE orders;
USE orders;

-- WE import the sales.csv data set by clicking the from the schema select the current database
-- And right click then will show a option called "Table Data Import Wizard" and keep on selecting next
SELECT * FROM sales;

--
SELECT customerid, customername FROM sales;

-- DISTINCT in SQL removes duplicate rows from the result, showing only unique values.
SELECT DISTINCT(category) FROM sales;
SELECT DISTINCT(subcategory) FROM sales;

-- An alias in SQL gives a temporary name to a column or table for easier reference.
SELECT order_id AS id FROM sales;
SELECT * FROM sales;
SELECT SUM(sales) AS total_sales FROM sales;

-- The WHERE clause filters rows in SQL based on specific conditions.
-- WHERE filters rows before grouping, while HAVING filters groups after aggregation; execution order: WHERE → GROUP BY → HAVING → SELECT → ORDER BY.

SELECT * FROM sales;

SELECT * FROM sales WHERE category='technology';

SELECT * FROM sales WHERE category='Furniture';

-- Find the customer details who dif the sales more than 500
SELECT * FROM sales WHERE sales>500;

-- Find the customer details not from west region
SELECT * FROM sales WHERE region !='west';

-- Find the customer details whose total sales > 1000

-- SELECT * FROM sales WHERE sum(sales) > 1000;
-- WhERE clause YOU cant filter the aggregator fn

SELECT * FROM sales WHERE state='texas' 
AND category='Technology';

SELECT * FROM sales WHERE state='texas' 
OR category='Technology';

SELECT * FROM sales WHERE subcategory='phones'
OR subcategory='art' OR subcategory='paper';

SELECT * FROM sales WHERE NOT category = 'technology';
SELECT * FROM sales WHERE category != 'technology';

-- Order BY
-- Find the Customer details from category tech
-- sort by orderdate

-- ASC
SELECT * FROM sales WHERE category='technology'
ORDER BY orderdate ASC;

-- DESC
SELECT * FROM sales WHERE category='technology'
ORDER BY orderdate DESC;

-- Find the customer details 
-- who did the sales highest to lowest
SELECT * FROM sales 
ORDER BY sales DESC;

-- Limit
SELECT * FROM sales 
ORDER BY sales DESC
Limit 1;

-- Who did the sales higest to lowest
SELECT * from sales 
WHERE category='technology'
ORDER BY sales DESC
LIMIT 5;

-- ORDER OF EXECUTION
-- FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT
