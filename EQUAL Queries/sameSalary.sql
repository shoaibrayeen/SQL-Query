--- Retrieve the first and last names of employees with the same salary.
- SELECT FNAME , LNAME 
      FROM EMPLOYEE 
      WHERE SALARY IN 
        ( 
          SELECT SALARY 
              FROM EMPLOYEE 
              GROUP BY SALARY 
              HAVING COUNT(*) > 1
              
              );
