-- SQL stands for Structured Query Language: Standard language for managing data kept in relational database management systems(RDBMS) or accessing and manipulating databases.
-- MySQL:An open source relational database management system that is based on SQL. Written using C and C++ languages.
-- SQL is a language created to manage relational database and MySQL is an open-source relational database management system based on SQL.
-- The data in RDBMS is stored in database objects called tables.
-- A table(is identified by a name) is a collection of data that is organized into rows(records) and columns(fields or attributes).
-- ; is used to separate each sql statement(like C)
-- for commention : /* */ or -- or # (like C)
-- SQL keywords are NOT case sensitive : select or SELECT
/*SQL can be divided into two parts: The Data Manipulation Language(DML) and the Data Deffinition Language(DDL)
DML: query and update commands(to add, remove,modify data from database tables)->SELECT,UPDATE,DELET,INSERT INTO
DDL: to create and delet databse objects like tables-> CREATE DATABASE,ALTER DATABASE,CREATE TABLE, ALTER TABLE,DROP TABLE,CREATE INDEX, DROP INDEX
*/

#SELECT: the following SQL staement will select the records
use store; -- to select the database(ctrl+Enter to run)
select * from sql_hr.employees; -- instread of using use database name

-- SQL select syntax:
select * from customers;
select phone from customers;
select customer_id,phone from customers;
select distinct city from customers;
select * from customers where city='Orlando';
select * from customers where points>1000 ;
-- The AND & OR operators -> to filter records based on more than one condition
select * from customers where points>1000 and city='Chicago';
select * from products ;
select * from products where unit_price>2 and (quantity_in_stock>60 or quantity_in_stock<20);
select * from products where unit_price>2 and quantity_in_stock>60 or quantity_in_stock<20; -- not the same result as the above code
select customer_id,10*points from customers; 
select customer_id,10*points as new_points from customers; 

