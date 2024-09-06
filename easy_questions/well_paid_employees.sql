-- Question URL
-- https://datalemur.com/questions/sql-well-paid-employees

-- Approach
-- Self join

SELECT e.employee_id,e.name
FROM employee e  
INNER JOIN employee m  
ON e.manager_id = m.employee_id 
WHERE e.salary > m.salary 