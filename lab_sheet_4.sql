-- Arithmetic Operators (1-5)
SELECT 10 + 5 AS Addition;
SELECT 10 - 5 AS Subtraction;
SELECT 10 * 5 AS Multiplication;
SELECT 10 / 2 AS Division;
SELECT Price * Quantity AS Total_Amount FROM Product;

-- Logical Operators (6-10)
SELECT * FROM Student WHERE Age > 20 AND City = 'Delhi';
SELECT * FROM Student WHERE City = 'Delhi' OR City = 'Mumbai';
SELECT * FROM Student WHERE NOT (City = 'Delhi');
SELECT * FROM Student WHERE Course = 'Computer Science' AND City = 'Delhi';
SELECT * FROM Employee WHERE Department = 'IT' OR Department = 'HR';

-- Comparison Operators (11-15)
SELECT * FROM Student WHERE City = 'Delhi';
SELECT * FROM Employee WHERE Salary > 50000;
SELECT * FROM Student WHERE Age < 20;
SELECT * FROM Employee WHERE Salary >= 40000 AND Salary <= 80000;
SELECT * FROM Employee WHERE Department != 'HR';

-- Special Operators (16-20)
SELECT * FROM Employee WHERE Salary BETWEEN 40000 AND 90000;
SELECT * FROM Student WHERE City IN ('Delhi', 'Mumbai', 'Kolkata');
SELECT * FROM Student WHERE City NOT IN ('Delhi', 'Mumbai');
SELECT * FROM Student WHERE Name LIKE 'A%';
SELECT * FROM Customer WHERE Phone IS NULL;
SELECT * FROM Customer WHERE Phone IS NOT NULL;

-- Set Operations (21-24)
SELECT Name FROM Student WHERE City = 'Delhi'
UNION
SELECT Name FROM Student WHERE Course = 'Computer Science';

SELECT Name FROM Student WHERE City = 'Delhi'
UNION ALL
SELECT Name FROM Student WHERE Course = 'Computer Science';

-- Note: INTERSECT and EXCEPT are natively supported via IN/NOT IN or specialized clauses in MySQL
SELECT Name FROM Student WHERE City = 'Delhi' AND Name IN (SELECT Name FROM Student WHERE Course = 'Computer Science'); -- INTERSECT equivalent
SELECT Name FROM Student WHERE City = 'Delhi' AND Name NOT IN (SELECT Name FROM Student WHERE Course = 'Computer Science'); -- EXCEPT equivalent

-- 25. Multiple operators combined
SELECT * FROM Employee WHERE (Salary > 45000 AND Department = 'IT') OR (Salary > 60000 AND Department != 'HR');