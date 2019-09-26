--- Retrieve the number of male employees in each department.
SELECT DNO , COUNT(star)  
    FROM EMPLOYEE 
    WHERE SEX ='M' 
    GROUP BY DNO;
