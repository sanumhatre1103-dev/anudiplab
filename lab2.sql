Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

/*

mysql> create table bankaccount(account_id varchar(10)not null primary key,account_holder_name varchar(30) not null,account_balance double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into bankaccount values(101,'saniya',20000),(102,'diksha',40000),(103,'saloni',50000),(104,'niyati',30000),(105,'riya',20000);
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | saniya              |           20000 |
| 102        | diksha              |           40000 |
| 103        | saloni              |           50000 |
| 104        | niyati              |           30000 |
| 105        | riya                |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.01 sec)

mysql> select * from bankaccount where account_balance>30000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 102        | diksha              |           40000 |
| 103        | saloni              |           50000 |
+------------+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql> update bankaccount set account_balance='40000' where account_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | saniya              |           40000 |
| 102        | diksha              |           40000 |
| 103        | saloni              |           50000 |
| 104        | niyati              |           30000 |
| 105        | riya                |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.01 sec)

mysql>