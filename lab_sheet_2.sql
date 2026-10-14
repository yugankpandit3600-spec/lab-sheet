-- Recreate base tables for DML execution if dropped earlier
CREATE TABLE Student (Student_ID INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, Age INT, Course VARCHAR(50), City VARCHAR(50));
CREATE TABLE Employee (Emp_ID INT, Emp_Name VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10,2));
CREATE TABLE Department (Dept_ID INT, Dept_Name VARCHAR(50), Location VARCHAR(50));
CREATE TABLE Product (Product_ID INT, Product_Name VARCHAR(50), Price DECIMAL(10,2), Quantity INT);
CREATE TABLE Customer (Customer_ID INT, Customer_Name VARCHAR(50), Email VARCHAR(100), Phone VARCHAR(15));
CREATE TABLE Course (Course_ID INT, Course_Name VARCHAR(50), Duration VARCHAR(20), Fees DECIMAL(10,2));

-- 1. Insert one record into the Student table
INSERT INTO Student VALUES (1, 'Alice', 20, 'Computer Science', 'Delhi');

-- 2. Insert five student records using separate INSERT statements
INSERT INTO Student VALUES (2, 'Bob', 21, 'Mathematics', 'Mumbai');
INSERT INTO Student VALUES (3, 'Charlie', 22, 'Physics', 'Kolkata');
INSERT INTO Student VALUES (4, 'Diana', 20, 'Chemistry', 'Chennai');
INSERT INTO Student VALUES (5, 'Ethan', 23, 'Biology', 'Bangalore');
INSERT INTO Student VALUES (6, 'Fiona', 21, 'Computer Science', 'Pune');

-- 3. Insert multiple records into the Student table using a single statement
INSERT INTO Student VALUES 
(7, 'George', 22, 'History', 'Hyderabad'),
(8, 'Hannah', 20, 'English', 'Jaipur');

-- 4. Insert records into the Employee table
INSERT INTO Employee VALUES 
(101, 'John Smith', 'IT', 55000.00),
(102, 'Jane Doe', 'HR', 48000.00);

-- 5. Insert records into the Department table
INSERT INTO Department VALUES 
(1, 'IT', 'Block A'),
(2, 'HR', 'Block B');

-- 6. Insert records into the Product table
INSERT INTO Product VALUES 
(1, 'Laptop', 75000.00, 10),
(2, 'Mouse', 1200.00, 50);

-- 7. Insert records into the Customer table
INSERT INTO Customer VALUES 
(1, 'Acme Corp', 'contact@acme.com', '9876543210');

-- 8. Insert records into the Course table
INSERT INTO Course VALUES 
(101, 'B.Tech', '4 Years', 400000.00),
(102, 'B.Sc', '3 Years', 150000.00);

-- 9. Insert a student record with values for all columns
INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES (9, 'Ian', 24, 'Economics', 'Lucknow');

-- 10. Insert a student record by specifying only selected columns
INSERT INTO Student (Student_ID, Name, City) VALUES (10, 'Julia', 'Patna');

-- 11. Update the city of a particular student
UPDATE Student SET City = 'Chandigarh' WHERE Student_ID = 1;

-- 12. Update the salary of a particular employee
UPDATE Employee SET Salary = 60000.00 WHERE Emp_ID = 101;

-- 13. Increase the salary of all employees by 10%
UPDATE Employee SET Salary = Salary * 1.10;

-- 14. Increase the price of all products by 5%
UPDATE Product SET Price = Price * 1.05;

-- 15. Change the course of a particular student
UPDATE Student SET Course = 'Data Science' WHERE Student_ID = 2;

-- 16. Update the department of an employee
UPDATE Employee SET Department = 'Finance' WHERE Emp_ID = 102;

-- 17. Update the city of all students from Meerut to Delhi
UPDATE Student SET City = 'Delhi' WHERE City = 'Meerut';

-- 18. Update the fees of a particular course
UPDATE Course SET Fees = 450000.00 WHERE Course_ID = 101;

-- 19. Update multiple columns of a student simultaneously
UPDATE Student SET Age = 22, Course = 'AI & ML', City = 'Noida' WHERE Student_ID = 3;

-- 20. Delete a particular student record using Student_ID
DELETE FROM Student WHERE Student_ID = 10;

-- 21. Delete all students belonging to a particular city
DELETE FROM Student WHERE City = 'Patna';

-- 22. Delete employees whose salary is below a specified amount
DELETE FROM Employee WHERE Salary < 50000.00;

-- 23. Delete products whose quantity is zero
DELETE FROM Product WHERE Quantity = 0;

-- 24. Delete records satisfying multiple conditions using AND/OR
DELETE FROM Student WHERE Age > 22 OR City = 'Chennai';

-- 25. Perform a complete sequence of INSERT, UPDATE and DELETE operations
INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES (50, 'Test User', 20, 'Testing', 'Delhi');
SELECT * FROM Student;
UPDATE Student SET City = 'Mumbai' WHERE Student_ID = 50;
SELECT * FROM Student;
DELETE FROM Student WHERE Student_ID = 50;
SELECT * FROM Student;