CREATE DATABASE IF NOT EXISTS college;
use college;
 CREATE TABLE IF NOT EXISTS student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
 );
 
 INSERT INTO  student
 (rollno,name,marks,grade,city)
 VALUES
 (101,"anil",78,"C","Pune"),
 (102,"bhumika",93,"A","Mumbai"),
 (103,"chetan",85,"B","Mumbai"),
 (104,"dhruv",96,"A","Delhi"),
 (105,"emanuel",12,"E","Delhi"),
 (106,"farah",82,"B","Delhi");
 
SELECT city,AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING avg_marks >70 
ORDER BY AVG(marks) ASC;

CREATE DATABASE IF NOT EXISTS sales;
USE sales;
CREATE TABLE IF NOT EXISTS customer_data (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(30)
);
INSERT INTO customer_data (customer_id, customer, mode, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT mode,COUNT(customer)
FROM customer_data
GROUP BY mode;