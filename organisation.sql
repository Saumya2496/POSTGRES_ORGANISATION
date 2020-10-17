CREATE DATABASE First_Database;


CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATE,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20' , 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 ', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,

);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
		
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 '),
 (002, 'Executive', '2016-06-11 '),
 (008, 'Executive', '2016-06-11 '),
 (005, 'Manager', '2016-06-11 '),
 (004, 'Asst. Manager', '2016-06-11'),
 (007, 'Executive', '2016-06-11 '),
 (006, 'Lead', '2016-06-11 '),
 (003, 'Lead', '2016-06-11');








Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
 select first_name as Worker_Name from Worker;
 
 Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
  select upper(First_name) from Worker;
  
  Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 select Distinct Department from Worker;
 
Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
Select substring(FIRST_NAME,1,3) from Worker;

Q--5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';

Q-6. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
Select distinct length(DEPARTMENT) from Worker;

Q-7. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
Select REPLACE(FIRST_NAME,'a','A') from Worker;

Q-08 Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
select concat(first_name, ' ' , last_name) as Complete_name from worker;

Q-9--Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from Worker Order by First_name Asc;


Q-10. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from Worker Order by First_name Asc , Department desc;

Q-11. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from Worker where first_name in ('Vipul', 'Satish');


Q-12. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

select * from Worker where first_name not in ('Vipul', 'Satish');

Q-13. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from Worker where department like 'Admin%' ;

Q-14. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from Worker where first_name like '%a%' ;

Q-15. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from Worker where first_name like '%a' ;

Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
Select * from Worker where FIRST_NAME like '_____h';

Q-17. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where salary between 10000 and 50000;

Q-18. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';

Q-19. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select Concat(First_name, ' ', Last_name) as Complete_name, salary from worker where salary between 50000 and 100000;

Q-20. Write an SQL query to print details of the Workers who are also Managers.












































