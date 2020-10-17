# Count employee in each department
SELECT COUNT(id), dept_id 
  FROM Customer
  GROUP BY dept_id;
