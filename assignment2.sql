 use e_commerce;
Database changed
mysql> select * from employee_details;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          1 | saniya mhatre |          20000 |
|          2 | saloni dharne |          15000 |
|          3 | diksha bandal |          20000 |
|          4 | harsh jadhav  |          40000 |
|          5 | niyati patil  |          15000 |
+------------+---------------+----------------+
5 rows in set (0.03 sec)

mysql> select * from employee_details limit 3;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          1 | saniya mhatre |          20000 |
|          2 | saloni dharne |          15000 |
|          3 | diksha bandal |          20000 |
+------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          1 | saniya mhatre |          20000 |
|          2 | saloni dharne |          15000 |
+------------+---------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeesalary ;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          2 | saloni dharne |          15000 |
|          5 | niyati patil  |          15000 |
|          1 | saniya mhatre |          20000 |
|          3 | diksha bandal |          20000 |
|          4 | harsh jadhav  |          40000 |
+------------+---------------+----------------+
5 rows in set (0.01 sec)

mysql>  select * from employee_details order by employeename;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          3 | diksha bandal |          20000 |
|          4 | harsh jadhav  |          40000 |
|          5 | niyati patil  |          15000 |
|          2 | saloni dharne |          15000 |
|          1 | saniya mhatre |          20000 |
+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql>  select * from employee_details order by employeename desc;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          1 | saniya mhatre |          20000 |
|          2 | saloni dharne |          15000 |
|          5 | niyati patil  |          15000 |
|          4 | harsh jadhav  |          40000 |
|          3 | diksha bandal |          20000 |
+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeesalary desc;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          4 | harsh jadhav  |          40000 |
|          1 | saniya mhatre |          20000 |
|          3 | diksha bandal |          20000 |
|          2 | saloni dharne |          15000 |
|          5 | niyati patil  |          15000 |
+------------+---------------+----------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details order by employeesalary desc limit 2;
+------------+---------------+----------------+
| employeeID | employeeName  | employeesalary |
+------------+---------------+----------------+
|          4 | harsh jadhav  |          40000 |
|          1 | saniya mhatre |          20000 |
+------------+---------------+----------------+
2 rows in set (0.01 sec)

mysql> select * from customer;
Empty set (0.06 sec)

mysql>  insert into customer values('c103','shubham','sion','shubhu@gmail.com',3634,'gdfjh',26267),('c104','anjali','kopar','anjali@gmail.com',7636,'agrakoli',253616),('c105','shambhu','mumbai','shambhu@gamil.com',2525,'lodha',277313);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------+--------+-------------------+----------+----------+----------+
| customer_id | name    | city   | email             | phone_no | address  | pin_code |
+-------------+---------+--------+-------------------+----------+----------+----------+
| c103        | shubham | sion   | shubhu@gmail.com  | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com  | 7636     | agrakoli |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha    |   277313 |
+-------------+---------+--------+-------------------+----------+----------+----------+
3 rows in set (0.03 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| sion   |
| kopar  |
| mumbai |
+--------+
3 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+-------------------+----------+----------+----------+
| customer_id | name    | city   | email             | phone_no | address  | pin_code |
+-------------+---------+--------+-------------------+----------+----------+----------+
| c103        | shubham | sion   | shubhu@gmail.com  | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com  | 7636     | agrakoli |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha    |   277313 |
+-------------+---------+--------+-------------------+----------+----------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+---------+-------+------------------+----------+----------+----------+
| customer_id | name    | city  | email            | phone_no | address  | pin_code |
+-------------+---------+-------+------------------+----------+----------+----------+
| c103        | shubham | sion  | shubhu@gmail.com | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar | anjali@gmail.com | 7636     | agrakoli |   253616 |
+-------------+---------+-------+------------------+----------+----------+----------+
2 rows in set (0.01 sec)

mysql> create table product(product_id varchar(10) not null primary key,product_name varchar(50) not null,category varchar(50) not null,sub_category varchar(50) not null,original_price double not null,selling_price double not null,stock int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(50) | NO   |     | NULL    |       |
| category       | varchar(50) | NO   |     | NULL    |       |
| sub_category   | varchar(50) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.06 sec)

mysql> insert into product values('p101','television','electronics','sony',70000,65000,25);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product values('p102','chair','furniture','office chair',10000,8000,30),('p103','table','furniture','ofice table',12000,10000,10),('p104','sprite','food','juice',150,100,100),('p105','phone','elctronics','iphone',100000,80000,70);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from product;
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| product_id | product_name | category    | sub_category | original_price | selling_price | stock |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| p101       | television   | electronics | sony         |          70000 |         65000 |    25 |
| p102       | chair        | furniture   | office chair |          10000 |          8000 |    30 |
| p103       | table        | furniture   | ofice table  |          12000 |         10000 |    10 |
| p104       | sprite       | food        | juice        |            150 |           100 |   100 |
| p105       | phone        | elctronics  | iphone       |         100000 |         80000 |    70 |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> create table order_details(order_id int(10) not null primary key, customer_id varchar(10) not null,product_id varchar(10) not null,quentity double not null,total_price double not null,payment_mode varchar(50) not null,order_date datetime not null,order_status varchar(50) not null,foreign key(customer_id) references customer(customer_id),foreign key(product_id) references product(product_id));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into order_details values(101,'c103','p103',20,200000,'gpay','2026-06-06','shipping');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values(102,'c103','p105',20,20000,'cash','2026-06-08','shipping'),(103,'c105','p103',60,100000,'cash','2026-02-08','delivered'),(104,'c104','p104',10,2000000,'phonepay','2026-01-10','shipping'),(105,'c103','p104',20,50000,'cash','2026-06-06','delivered');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c103        | p103       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from order_details where order_date between '2026-06-08' and '2026-01-10';
Empty set (0.00 sec)

mysql>  select * from order_details where order_date between '2026-06-08' and '2026-01-10';
Empty set (0.00 sec)

mysql>  select * from order_details where order_date between '2026-06-06' and '2026-06-08';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c103        | p103       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+--------+-------------------+----------+----------+----------+
| customer_id | name    | city   | email             | phone_no | address  | pin_code |
+-------------+---------+--------+-------------------+----------+----------+----------+
| c103        | shubham | sion   | shubhu@gmail.com  | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com  | 7636     | agrakoli |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha    |   277313 |
+-------------+---------+--------+-------------------+----------+----------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c103','c104');
+-------------+---------+-------+------------------+----------+----------+----------+
| customer_id | name    | city  | email            | phone_no | address  | pin_code |
+-------------+---------+-------+------------------+----------+----------+----------+
| c103        | shubham | sion  | shubhu@gmail.com | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar | anjali@gmail.com | 7636     | agrakoli |   253616 |
+-------------+---------+-------+------------------+----------+----------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('c103','c104');
+-------------+---------+--------+-------------------+----------+---------+----------+
| customer_id | name    | city   | email             | phone_no | address | pin_code |
+-------------+---------+--------+-------------------+----------+---------+----------+
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha   |   277313 |
+-------------+---------+--------+-------------------+----------+---------+----------+
1 row in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.01 sec)

mysql> select * from customer where city is not null;
+-------------+---------+--------+-------------------+----------+----------+----------+
| customer_id | name    | city   | email             | phone_no | address  | pin_code |
+-------------+---------+--------+-------------------+----------+----------+----------+
| c103        | shubham | sion   | shubhu@gmail.com  | 3634     | gdfjh    |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com  | 7636     | agrakoli |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha    |   277313 |
+-------------+---------+--------+-------------------+----------+----------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where city='sion' or address='lodha';
+-------------+---------+--------+-------------------+----------+---------+----------+
| customer_id | name    | city   | email             | phone_no | address | pin_code |
+-------------+---------+--------+-------------------+----------+---------+----------+
| c103        | shubham | sion   | shubhu@gmail.com  | 3634     | gdfjh   |    26267 |
| c105        | shambhu | mumbai | shambhu@gamil.com | 2525     | lodha   |   277313 |
+-------------+---------+--------+-------------------+----------+---------+----------+
2 rows in set (0.00 sec)