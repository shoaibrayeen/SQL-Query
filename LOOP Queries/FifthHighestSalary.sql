--- Write an SQL query to determine the 5th highest salary from employee table without using TOP or limit method.


SELECT DISTINCT (A1.SALARY)
  FROM EMPLOYEE A1 
  WHERE 5 = 
            (SELECT COUNT(DISTINCT(A2.SALARY)) 
            FROM EMPLOYEE A2 
            WHERE A1.SALARY <= A2.SALARY);
