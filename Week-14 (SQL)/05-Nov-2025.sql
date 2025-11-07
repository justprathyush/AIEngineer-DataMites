create database joins;

USE joins;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO customers (customer_id, customer_name, city, phone) VALUES
(1, 'Rahul', 'Bangalore', '9876543210'),
(2, 'Priya', 'Bangalore', '9988776655'),
(3, 'Arjun', 'Hyderabad', '9876001122'),
(4, 'Sneha', 'Chennai', '9000088888'),
(5, 'Ravi', 'Delhi', '9123456789'),
(6, 'Kiran', 'Mumbai', '9111122233'),
(7, 'Anjali', 'Pune', '9990001111'),
(8, 'Vikas', 'Delhi', '9887766554'),
(9, 'Meena', 'Kolkata', '9445566778'),
(10, 'Vijay', 'Bangalore', '9000099999'),
(11, 'Rahul', 'Bangalore', '9876543210'),   -- duplicate
(12, 'Arjun', 'Hyderabad', '9876001122'),   -- duplicate
(13, 'Ravi', 'Delhi', '9123456789'),        -- duplicate
(14, 'Karthik', 'Bangalore', '9333344444'),
(15, 'Deepa', 'Chennai', '9555511111'),
(16, 'Nisha', 'Pune', '9001100222'),
(17, 'Sameer', 'Delhi', NULL),              -- null phone
(18, 'Pooja', 'Mumbai', '9898989898'),
(19, 'Tina', 'Kolkata', '9777788888'),
(20, 'Ajay', 'Hyderabad', NULL);

INSERT INTO orders (order_id, customer_id, product_name, amount, order_date) VALUES
(201, 1, 'Burger', 150.00, '2025-10-10'),
(202, 1, 'Pizza', 250.00, '2025-10-10'),
(203, 1, 'Fries', 100.00, '2025-10-10'),
(204, 2, 'Pizza', 250.00, '2025-10-11'),
(205, 2, 'Burger', 150.00, '2025-10-11'),
(206, 2, 'Pasta', 200.00, '2025-10-11'),
(207, 3, 'Sandwich', 120.00, '2025-10-12'),
(208, 3, 'Juice', 90.00, '2025-10-12'),
(209, 4, 'Pasta', 200.00, '2025-10-13'),
(210, 4, 'Noodles', 180.00, '2025-10-13'),
(211, 5, 'Burger', 150.00, '2025-10-14'),
(212, 5, 'Noodles', 180.00, '2025-10-14'),
(213, 5, 'Pizza', 250.00, '2025-10-14'),
(214, 6, 'Biryani', 300.00, '2025-10-15'),
(215, 6, 'Juice', 90.00, '2025-10-15'),
(216, 7, 'Biryani', 300.00, '2025-10-16'),
(217, 7, 'Pizza', 250.00, '2025-10-16'),
(218, 8, 'Idli', 80.00, '2025-10-17'),
(219, 8, 'Dosa', 90.00, '2025-10-17'),
(220, 9, 'Dosa', 90.00, '2025-10-18'),
(221, 9, 'Juice', 90.00, '2025-10-18'),
(222, 10, 'Burger', 150.00, '2025-10-19'),
(223, 10, 'Pizza', 250.00, '2025-10-19'),
(224, 11, 'Samosa', 50.00, '2025-10-20'),
(225, 11, 'Tea', 40.00, '2025-10-20'),
(226, 12, 'Biryani', 300.00, '2025-10-21'),
(227, 12, 'Juice', 90.00, '2025-10-21'),
(228, 12, 'Ice Cream', 120.00, '2025-10-21');

show tables;

select * from customers;
select * from orders;

select c.customer_id, c.customer_name, c.phone, o.product_name
from customers c
INNER JOIN orders o
on c.customer_id = o.customer_id;

select o.customer_id, c.customer_name, c.phone, c.city, sum(o.amount) as total_amount
from customers c
INNER JOIN orders o
on c.customer_id = o.customer_id
group by c.customer_name , o.customer_id, c.phone, c.city;

select o.customer_id, c.customer_name, o.product_name
from customers c
Right JOIN orders o
on c.customer_id = o.customer_id;

select customer_id, customer_name, phone
from customers
where customer_id not in (select customer_id from orders);

