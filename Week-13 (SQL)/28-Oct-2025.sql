-- This is single comment
/* This is multiple
 line 
 comment*/
 
-- DDL
 
create database employee;
create database emp_11;

drop database emp_11;

show databases;

use employee;

create table employee_details(
	emp_id char(5),
    emp_name varchar(25),
    emp_designation varchar(20),
    emp_age int
    );

select * from employee_details;

insert INTO employee_details values 
('E1001','Likitha','Data Scientist',25),
('E1002','Nilesh','AI',27),
('E1003','Akash','ML',26);


