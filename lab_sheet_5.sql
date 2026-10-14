-- 1. Demonstrate an INNER JOIN between Student and Department
SELECT * FROM Student INNER JOIN Department ON Student.City = Department.Location;

-- 2. Display student names along with their department names using INNER JOIN
-- (Assuming Student table has Dept_ID column)
SELECT Student.Name, Department.Dept_Name FROM Student INNER JOIN Department ON Student.Student_ID = Department.Dept_ID;

-- 3. Display employee names along with their department names
SELECT Employee.Emp_Name, Department.Dept_Name FROM Employee INNER JOIN Department ON Employee.Department = Department.Dept_Name;

-- 4. Display students along with their course details
SELECT Student.Name, Course.Course_Name, Course.Fees FROM Student INNER JOIN Course ON Student.Course = Course.Course_Name;

-- 5. Find students belonging to a particular department using INNER JOIN
SELECT Student.Name FROM Student INNER JOIN Department ON Student.Student_ID = Department.Dept_ID WHERE Department.Dept_Name = 'Computer Science';

-- 6 & 7. Demonstrate a LEFT OUTER JOIN and display all students
SELECT Student.Name, Department.Dept_Name FROM Student LEFT OUTER JOIN Department ON Student.Student_ID = Department.Dept_ID;

-- 8 & 9. Demonstrate a RIGHT OUTER JOIN and display all departments
SELECT Student.Name, Department.Dept_Name FROM Student RIGHT OUTER JOIN Department ON Student.Student_ID = Department.Dept_ID;

-- 10. Find students who are not assigned to any department using LEFT JOIN
SELECT Student.Name FROM Student LEFT JOIN Department ON Student.Student_ID = Department.Dept_ID WHERE Department.Dept_ID IS NULL;

-- 11. Find departments having no students using RIGHT/LEFT JOIN
SELECT Department.Dept_Name FROM Student RIGHT JOIN Department ON Student.Student_ID = Department.Dept_ID WHERE Student.Student_ID IS NULL;

-- 12. Demonstrate a FULL OUTER JOIN concept using a UNION workaround in MySQL
SELECT Student.Name, Department.Dept_Name FROM Student LEFT JOIN Department ON Student.Student_ID = Department.Dept_ID
UNION
SELECT Student.Name, Department.Dept_Name FROM Student RIGHT JOIN Department ON Student.Student_ID = Department.Dept_ID;

-- 13. Demonstrate a CROSS JOIN between Student and Course
SELECT Student.Name, Course.Course_Name FROM Student CROSS JOIN Course;

-- 14. Calculate the number of possible Student-Course combinations using CROSS JOIN
SELECT COUNT(*) AS Total_Combinations FROM Student CROSS JOIN Course;

-- 15 & 16. Demonstrate a NATURAL JOIN and compare with INNER JOIN
SELECT * FROM Student NATURAL JOIN Department;

-- 17 & 18. Perform a SELF JOIN on an Employee table to show employee-manager relationships
-- (Assuming Manager_ID column exists in Employee)
-- SELECT E1.Emp_Name AS Employee, E2.Emp_Name AS Manager FROM Employee E1 LEFT JOIN Employee E2 ON E1.Emp_ID = E2.Manager_ID;

-- 19 & 20. Join three tables - Student, Department and Course
SELECT Student.Name, Course.Course_Name, Department.Dept_Name 
FROM Student 
JOIN Course ON Student.Course = Course.Course_Name 
JOIN Department ON Student.Student_ID = Department.Dept_ID;

-- 21. Find employees whose salary is greater than the average salary of their department
SELECT E1.Emp_Name, E1.Salary, E1.Department 
FROM Employee E1 
WHERE E1.Salary > (SELECT AVG(E2.Salary) FROM Employee E2 WHERE E2.Department = E1.Department);

-- 22. Find the department having the maximum number of students using joins and aggregation
SELECT Department.Dept_Name, COUNT(Student.Student_ID) AS Total_Students 
FROM Department 
LEFT JOIN Student ON Department.Dept_ID = Student.Student_ID 
GROUP BY Department.Dept_Name 
ORDER BY Total_Students DESC 
LIMIT 1;

-- 23. Display departments and the total number of students in each department
SELECT Department.Dept_Name, COUNT(Student.Student_ID) AS Total_Students 
FROM Department 
LEFT JOIN Student ON Department.Dept_ID = Student.Student_ID 
GROUP BY Department.Dept_Name;

-- 24. Display courses along with the number of students enrolled in each course
SELECT Course.Course_Name, COUNT(Student.Student_ID) AS Enrolled_Students 
FROM Course 
LEFT JOIN Student ON Course.Course_Name = Student.Course 
GROUP BY Course.Course_Name;

-- 25. Create a complete query using INNER JOIN, LEFT JOIN, GROUP BY and aggregate functions
SELECT Department.Dept_Name, Course.Course_Name, COUNT(Student.Student_ID) AS Student_Count 
FROM Department 
LEFT JOIN Student ON Department.Dept_ID = Student.Student_ID 
INNER JOIN Course ON Student.Course = Course.Course_Name 
GROUP BY Department.Dept_Name, Course.Course_Name;