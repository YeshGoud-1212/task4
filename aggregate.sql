-- Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Average salary in each department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Count of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Departments having more than 10 employees
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;

-- Maximum salary in each job role
SELECT job_role, MAX(salary) AS max_salary
FROM employees
GROUP BY job_role;

-- Department with the highest average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;
