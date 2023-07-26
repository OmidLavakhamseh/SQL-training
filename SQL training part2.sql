-- The AND & OR operators -> to filter records based on more than one condition
use store;
select * from products;
select * from products where unit_price>2 and quantity_in_stock>60 or quantity_in_stock<20;
-- and has higher priority than or , so it is checked first, it is better if we write as below:
select * from products where (unit_price>2 and quantity_in_stock>60) or quantity_in_stock<20;
select * from products where unit_price>2 and (quantity_in_stock>60 or quantity_in_stock<20); -- inside the parentheses is checked first
select * from products where not(unit_price>4 and quantity_in_stock>60) or quantity_in_stock<20;
select * from products where quantity_in_stock !=70;
select name from products where quantity_in_stock !=70;
select * from orders where shipped_date in ('2018-08-03','2017-08-26','2018-09-23');
select * from orders where order_date>='2018-01-01' and order_date<='2018-12-30';
select * from orders where order_date between '2018-01-01' and '2018-12-30'; -- or we can write
select * from products where name like 'f%'; -- starts with f
select * from products where name like '%e'; -- ends with e
select * from products where name like '%d%'; -- d can be anywhere
select * from customers ;
select * from customers where last_name like '_____y'; -- name that are 6 characters and the last one is y	
select * from customers where last_name like 'r____y'; 
select * from customers where last_name regexp 'mac|son|ase'; 
/*we are using the "REGEXP" operator, which allows us to perform a regular expression match on the "last_name" column. 
The pipe symbol (|) acts as an OR operator*/
select * from customers where last_name regexp 'mac|^son|ase'; 
-- The caret symbol (^) at the beginning of the pattern indicates that the match should start from the beginning of the "last_name" value
select * from customers where last_name regexp 'mac|son$|ase'; 
-- The dollar sign ($) at the end of "mac" indicates that the match should occur at the end of the "last_name" value.
select * from customers where last_name regexp '[abw]s'; -- all the customers who have as or bs or ws  
select * from customers where last_name regexp '[a-w]s';
-- ^ begining
-- $ end
-- | logical or
-- [abcd] 
-- [a-f]
select * from customers where last_name regexp 's[a-f]';
