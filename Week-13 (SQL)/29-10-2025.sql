use employee

select * from employee_details;


update employee_details set emp_age=25 
where emp_id='E1002';
set sql_safe_updates=0;

select * from employee_details;

-- Delete Command

delete from employee_details 
where emp_id = 'E1003';
select * from employee_details;

-- Alter (to add item in the column you need to use update instread of Insert)

alter table employee_details
add emp_experience int;
select * from employee_details;
-- 
update employee_details 
set emp_experience=2;
select * from employee_details;
--
alter table employee_details
drop column emp_experience;
select * from employee_details;
--
describe employee_details;

alter table employee_details modify emp_name varchar(50)
describe employee_details;
--
Alter table employee_details 
rename column emp_age to age_of_employee;
select * from employee_details;
--
alter table employee_details rename to employee_data;
select * from employee_data;

-- TRUNCATE (DDL [it will remove all the records from the table -- Here it will remove the all data from employee_data])

TRUNCATE TABLE employee_data;
select * from employee_data;
drop table employee_data;