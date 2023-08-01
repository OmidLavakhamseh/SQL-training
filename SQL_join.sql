/* SELECT column_name(s)
FROM table_name1 + (where,as,like,regexp,order by, limit) */

 /*JOIN: Return rows when there is at least one match in both tables
LEFT JOIN: Return all rows from the left table, even if there are no matches in the right table
RIGHT JOIN: Return all rows from the right table, even if there are no matches in the left table
FULL JOIN: Return rows when there is a match in one of the tables.
 INNER JOIN is the same as JOIN
 */

-- INNER join or join
select * from orders;
select * from customers;
select order_id,first_name,last_name,orders.customer_id
from orders
join customers
 on orders.customer_id=customers.customer_id
 order by customer_id;
 -- replace orders and customers with o and c respectivelly
select order_id,first_name,last_name,o.customer_id
from orders o
join customers c
 on o.customer_id=c.customer_id;
 
 /* The INNER JOIN keyword return rows when there is at least one match in both tables. If there are rows
in "Persons" that do not have matches in "Orders", those rows will NOT be listed */

select * from order_items;
select * from products;
select order_id,o.product_id,quantity,o.unit_price
from order_items o
join products p
 on o.product_id=p.product_id;

-- from different database
select * from order_items;
select * from sql_inventory.products;
select * 
from order_items oi
join sql_inventory.products p
 on oi.product_id=p.product_id;
-- selfjoin
use sql_hr;
select * from employees;
select e.employee_id,e.first_name,
m.first_name as manager
from employees e
join employees m
 on e.reports_to=m.employee_id;

-- SQL LEFT JOIN Keyword
/*The LEFT JOIN keyword returns all rows from the left table (table_name1), even if there are no
matches in the right table (table_name2).*/


use store;
select * from orders;
select * from customers;
select * from order_statuses;
select 
o.order_id,
o.order_date,
c.first_name,
c.last_name,
os.name as status
from orders o
join customers c
 on o.customer_id=c.customer_id
join order_statuses os
 on o.status=os.order_status_id;
 
 
 -- outer join:if there are some customer ids in customer that are not in orders so we need to do outer join(left or right join)
use store;
select * from customers;
select * from orders;
select 
    c.customer_id,
    c.first_name,
    o.order_id
from customers c
left join orders o
 on c.customer_id=o.customer_id
order by c.customer_id;
