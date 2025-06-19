CREATE DATABASE IF NOT EXISTS xyz;
USE xyz;
CREATE TABLE employee(ID INT PRIMARY KEY,
						name VARCHAR(50),
                        salary BIGINT);
INSERT INTO employee(ID,name,salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT*FROM employee;                        
                        
                        