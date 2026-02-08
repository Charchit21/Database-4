-- Create the DEPARTMENT table if it does not exist
CREATE TABLE IF NOT EXISTS aB41 (
    EMPLOYEE_ID TEXT,
    NAME TEXT,
    DEPARTMENT_ID TEXT,
    MANAGER_ID TEXT,
    SALARY REAL 
);

-- Insert sample data into the deparment table
INSERT INTO aB41 (EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES
('100', 'STEVEN KING', '98', '100', 24000),
('101', 'NEENA KOCHCAR', '90', '100', 17000),
('102', 'LEX DEHAAN', '90', '102', 9000),
('103', 'BRUCE LEE', '60', '103', 48000),
('104', 'DIANA WILLS', '60', '103', 4800),
('105', 'VALLI PATOR', '50', '100', 4200),
('1973', 'LUV HAMI', '60', '102', 5000),
('106', 'DAVID AUSTIN', '90', '100', 6000);

-- QUERY to count the number of employees in each department
SELECT DEPARTMENT_ID AS "DEPARTMENT CODE",
    COUNT(*) AS "NO OF EMPLOYEES"
FROM aB41;

SELECT DEPARTMENT_ID, SUM(salary)
FROM aB41
GROUP BY DEPARTMENT_ID;

--query to count the number of employees and sum the salry in each department
SELECT DEPARTMENT_ID AS "DEPARTMENT CODE",
    COUNT(*) AS "NO OF EMPLOYEES",
    SUM(salary) AS "TOTAL SALARY"
FROM aB41
GROUP BY DEPARTMENT_ID;

-- query to the sum the salary of employees with a specific manager
SELECT department_id as "DEPARTMENT CODE",
    SUM(salary) AS "TOTAL SALARY"
FROM aB41
WHERE MANAGER_ID = '103'
GROUP BY MANAGER_ID;

SELECT DEPARTMENT_ID, COUNT(* AS "NO OF EMPLOYEES"
FROM aB41
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 2;