CREATE TABLE Student (Student_ID INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, Age INT, Course VARCHAR(50), City VARCHAR(50));
CREATE TABLE Employee (Emp_ID INT, Emp_Name VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10,2));
CREATE TABLE Department (Dept_ID INT, Dept_Name VARCHAR(50), Location VARCHAR(50));
CREATE TABLE Product (Product_ID INT, Product_Name VARCHAR(50), Price DECIMAL(10,2), Quantity INT);
CREATE TABLE Customer (Customer_ID INT, Customer_Name VARCHAR(50), Email VARCHAR(100), Phone VARCHAR(15));
CREATE TABLE Course (Course_ID INT, Course_Name VARCHAR(50), Duration VARCHAR(20), Fees DECIMAL(10,2));

INSERT INTO Student VALUES (1, 'Alice', 20, 'Computer Science', 'Delhi');

INSERT INTO Student VALUES (2, 'Bob', 21, 'Mathematics', 'Mumbai');
INSERT INTO Student VALUES (3, 'Charlie', 22, 'Physics', 'Kolkata');
INSERT INTO Student VALUES (4, 'Diana', 20, 'Chemistry', 'Chennai');
INSERT INTO Student VALUES (5, 'Ethan', 23, 'Biology', 'Bangalore');
INSERT INTO Student VALUES (6, 'Fiona', 21, 'Computer Science', 'Pune');

INSERT INTO Student VALUES 
(7, 'George', 22, 'History', 'Hyderabad'),
(8, 'Hannah', 20, 'English', 'Jaipur');

INSERT INTO Employee VALUES 
(101, 'John Smith', 'IT', 55000.00),
(102, 'Jane Doe', 'HR', 48000.00);

INSERT INTO Department VALUES 
(1, 'IT', 'Block A'),
(2, 'HR', 'Block B');

INSERT INTO Product VALUES 
(1, 'Laptop', 75000.00, 10),
(2, 'Mouse', 1200.00, 50);

INSERT INTO Customer VALUES 
(1, 'Acme Corp', 'contact@acme.com', '9876543210');

INSERT INTO Course VALUES 
(101, 'B.Tech', '4 Years', 400000.00),
(102, 'B.Sc', '3 Years', 150000.00);

INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES (9, 'Ian', 24, 'Economics', 'Lucknow');

INSERT INTO Student (Student_ID, Name, City) VALUES (10, 'Julia', 'Patna');

UPDATE Student SET City = 'Chandigarh' WHERE Student_ID = 1;

UPDATE Employee SET Salary = 60000.00 WHERE Emp_ID = 101;


UPDATE Employee SET Salary = Salary * 1.10;


UPDATE Product SET Price = Price * 1.05;


UPDATE Student SET Course = 'Data Science' WHERE Student_ID = 2;


UPDATE Employee SET Department = 'Finance' WHERE Emp_ID = 102;


UPDATE Student SET City = 'Delhi' WHERE City = 'Meerut';


UPDATE Course SET Fees = 450000.00 WHERE Course_ID = 101;


UPDATE Student SET Age = 22, Course = 'AI & ML', City = 'Noida' WHERE Student_ID = 3;


DELETE FROM Student WHERE Student_ID = 10;


DELETE FROM Student WHERE City = 'Patna';


DELETE FROM Employee WHERE Salary < 50000.00;


DELETE FROM Product WHERE Quantity = 0;


DELETE FROM Student WHERE Age > 22 OR City = 'Chennai';


INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES (50, 'Test User', 20, 'Testing', 'Delhi');
SELECT * FROM Student;
UPDATE Student SET City = 'Mumbai' WHERE Student_ID = 50;
SELECT * FROM Student;
DELETE FROM Student WHERE Student_ID = 50;
SELECT * FROM Student;
