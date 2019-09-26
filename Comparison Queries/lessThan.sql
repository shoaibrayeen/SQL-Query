--- Retrieve department number of departments that have less than five employees in it.
SELECT DNUMBER 
    FROM DEPARTMENT 
    WHERE DNUMBER IN 
        ( 
          SELECT DNO 
              FROM EMPLOYEE 
              GROUP BY DNO 
              HAVING COUNT(*) < 5
              ) 
              OR
              DNUMBER NOT IN 
              ( 
                SELECT DNO 
                FROM EMPLOYEE
                );
