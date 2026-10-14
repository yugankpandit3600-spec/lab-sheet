-- A. Number Functions
-- 1. Demonstrate ABS()
SELECT ABS(-15.5) AS Absolute_Value;

-- 2. Demonstrate ROUND()
SELECT ROUND(123.4567, 2) AS Rounded_Value;

-- 3. Demonstrate CEIL() and FLOOR()
SELECT CEIL(42.2) AS Ceiling_Val, FLOOR(42.8) AS Floor_Val;

-- 4. Demonstrate MOD()
SELECT MOD(10, 3) AS Remainder_Val;

-- 5. Calculate the rounded salary of employees
SELECT Emp_Name, Salary, ROUND(Salary, 0) AS Rounded_Salary FROM Employee;


-- B. Aggregate Functions
-- 6. Find the total number of students using COUNT()
SELECT COUNT(*) AS Total_Students FROM Student;

-- 7. Find the total salary of all employees using SUM()
SELECT SUM(Salary) AS Total_Salary FROM Employee;

-- 8. Find the average salary using AVG()
SELECT AVG(Salary) AS Average_Salary FROM Employee;

-- 9. Find the highest salary using MAX()
SELECT MAX(Salary) AS Highest_Salary FROM Employee;

-- 10. Find the lowest salary using MIN()
SELECT MIN(Salary) AS Lowest_Salary FROM Employee;


-- C. Character Functions
-- 11. Demonstrate UPPER() on student names
SELECT UPPER(Name) AS Uppercase_Name FROM Student;

-- 12. Demonstrate LOWER() on student names
SELECT LOWER(Name) AS Lowercase_Name FROM Student;

-- 13. Demonstrate LENGTH() on student names
SELECT Name, LENGTH(Name) AS Name_Length FROM Student;

-- 14. Demonstrate CONCAT() using first and last names (assuming columns First_Name, Last_Name exist)
SELECT CONCAT('John', ' ', 'Doe') AS Full_Name;

-- 15. Demonstrate SUBSTRING()/SUBSTR()
SELECT SUBSTRING(Name, 1, 3) AS Short_Name FROM Student;


-- D. Conversion Functions
-- 16. Convert a number into a character/string value
SELECT CAST(12345 AS CHAR) AS Number_To_String;

-- 17. Convert a string into a numeric value
SELECT CAST('456.78' AS DECIMAL(6,2)) AS String_To_Number;

-- 18. Convert a date value into a different format
SELECT DATE_FORMAT(NOW(), '%d-%m-%Y') AS Formatted_Date;

-- 19. Demonstrate CAST()
SELECT CAST('2026-10-13' AS DATE) AS Cast_Date;

-- 20. Demonstrate CONVERT() where supported (MySQL/SQL Server syntax)
SELECT CONVERT(INT, '123') AS Converted_Val;


-- E. Date Functions
-- 21. Display the current date using a suitable date function
SELECT CURRENT_DATE() AS Current_Date;

-- 22. Extract the year, month and day from a date
SELECT YEAR(NOW()) AS Current_Year, MONTH(NOW()) AS Current_Month, DAY(NOW()) AS Current_Day;

-- 23. Find the difference between two dates
SELECT DATEDIFF('2026-12-31', '2026-01-01') AS Date_Difference_Days;

-- 24. Add a specified number of days to a date
SELECT DATE_ADD('2026-10-13', INTERVAL 10 DAY) AS Future_Date;

-- 25. Display employees' joining dates in a required date format (assuming Joining_Date column exists)
-- SELECT Emp_Name, DATE_FORMAT(Joining_Date, '%d/%m/%Y') FROM Employee;