--- Retrieve the first and last names and department number and name of all employees directly supervised by 
--- James Borg. Show results in ascending alpha order (by last name and then first name).

--- without JOIN
SELECT E.FNAME , E.LNAME , E.DNO 
    FROM EMPLOYEE E 
    WHERE E.Super_ssn =  
      ( 
          SELECT S.Ssn 
              FROM EMPLOYEE S 
              WHERE S.FNAME = "James" 
              AND S.LNAME = "Borg"
       ) 
    ORDER BY E.LNAME , E.FNAME ;


--- Using JOIN 

SELECT E.FNAME , E.LNAME , E.DNO 
    FROM EMPLOYEE E 
      JOIN 
        EMPLOYEE S 
        ON E.SUPER_SSN = S.SSN 
        WHERE S.FNAME = "James" and S.LNAME = "Borg" 
        ORDER BY E.LNAME , E.FNAME ;
