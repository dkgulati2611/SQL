-- 3D
SELECT SUM(SALARY),DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
Order by sum(salary) desc limit 1;