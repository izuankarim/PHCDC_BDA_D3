--To use Assignment2 database
Use PHCDC

--To create customer table
Create table customer(customer_id int, customer_name varchar(50),
Customer_phone int, customer_address varchar(50), customer_email varchar(25))
 
--To insert customer records
insert into customer values (101, 'Fikri', 0102345678,'KL', 'jonnyfikri@gmail.com')
insert into customer values (102, 'Ella', 0109876543,'JB', 'ella23@gmail.com')
insert into customer values (103, 'Kassim', 0191234567,'N9','kassimselamat@gmail.com'),
(104,'Kenny',0187654321,'PG','kenny@gmail.com'),
(105, 'Hong',017654321,'KK','hongoward@gmail.com')

--Display/Retrieve the customer records
select *from customer

-- To display particular column
select customer_id,customer_name from customer where customer_address = 'jb' --not case sensitive...
select customer_id,customer_email from customer where customer_name = 'Fikri'

--Sort the record in ascending/decending order
select * from customer order by customer_name desc -- descending order
select * from customer order by customer_name asc -- ascending order

--To extract the info for specific pattern
select customer_name from customer where customer_name like 'H%'
select customer_address from customer where customer_address like '%9'
select customer_name from customer where customer_name like 'K%m'
select customer_name from customer where customer_name like 'E___' -- display cust name which starts with E and got 3 more letters after that
select customer_name from customer where customer_name like 'K___im' -- display cust name which starts with K, 3 letters in the middle and im at the end

--Add arithmetic operator
select customer_id from customer
update customer set customer_id +=2
update customer set customer_id -=1
update customer set customer_id *=3
update customer set customer_id /=3
update customer set customer_id %=3

--Relational operator
update customer set customer_id= 102 where customer_name= 'Ella'
select * from customer where customer_id = 0
update customer set customer_id =101 where customer_name = 'Kenny'
select * from customer where customer_id <102
select * from customer where customer_id <=2
select * from customer where customer_id >2
select * from customer where customer_id >=2
select * from customer where customer_id <>2

--Logical operator
select customer_name from customer where customer_phone = 102345678 and customer_address = 'KL' --and operator
select customer_name from customer where customer_phone = 102345678 and customer_address = 'KL' 
and customer_email = 'jonnyfikri@gmail.com' --and operator
select customer_name from customer where customer_phone = 102345679 or customer_address = 'KL' 
or customer_email = 'jonnyfikri@gmail.com'
select customer_name from customer where customer_phone = 102345678 or customer_address = 'KL1' 
or customer_email = 'Jonny1@gmail.com'
select * from customer where not customer_id = 101
select * from customer where not customer_name = 'Hong'

--In operator
select * from customer where customer_id in (101)
select * from customer where customer_id not in (101) --Must put parenthesis in SQL server

--Between Operator
select * from customer where customer_id >= 1 and customer_id <= 101 
select * from customer where customer_id between 1 and 101
















