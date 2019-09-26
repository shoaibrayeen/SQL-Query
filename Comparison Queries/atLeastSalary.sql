--- Retrieve the names of employees who make at least $10,000 more than the employee who is paid the least in the company.
SELECT FNAME , MINIT , LNAME , SALARY 
  FROM EMPLOYEE 
  WHERE (SALARY - 10000) >= 
        ( 
        SELECT MIN(SALARY) 
        FROM EMPLOYEE
        );
