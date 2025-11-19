SELECT department, SUM(salary) AS total_salaries
FROM employees
GROUP BY department;
