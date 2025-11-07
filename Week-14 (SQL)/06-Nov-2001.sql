use joins


-- INNER JOIN

SELECT c.customer_name, o.product_name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;


-- LEFT JOIN (to find customers with or without orders)
SELECT c.customer_name, o.product_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN
SELECT c.customer_name, o.product_name
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- Union

select * from customers;

select * from orders;

select c.customer_name, o.product_name
from customers c
left join orders o
on c.customer_id = o.customer_id
union 
select c.customer_name, o.product_name
from customers c
right join orders o
on c.customer_id = o.customer_id ;

-- Most common dish combinations (across all customers)
SELECT
    a.product_name AS dish1,
    b.product_name AS dish2,
    COUNT(DISTINCT a.customer_id) AS times_ordered_together
FROM orders a
JOIN orders b
    ON a.customer_id = b.customer_id
   AND a.product_name < b.product_name
GROUP BY a.product_name, b.product_name
ORDER BY times_ordered_together DESC;

