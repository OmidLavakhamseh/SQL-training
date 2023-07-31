use store;
select * from customers where phone is null;
select * from customers where phone is not null;
select * from customers order by first_name;
select * from customers order by first_name; -- same as below
select * from customers order by first_name asc;
select * from customers order by first_name desc;
select * from customers order by first_name,points; -- order by first_name and then points
select customer_id,first_name,1 as new_col from customers;
select customer_id,first_name,1 as new_col from customers order by new_col, first_name;
-- The LIMIT clause is used to restrict the number of rows returned by the query.
select customer_id,first_name,1 as new_col from customers order by new_col, first_name limit 5; -- The first 5 records
select customer_id,first_name,1 as new_col from customers order by new_col, first_name limit 5,3; -- The first 5 records
 /* The first number (5 in this case) represents the offset, which means the query will skip the first 6 rows in the result set.
 The second number (3 in this case) indicates the maximum number of rows to include in the result set.*/
