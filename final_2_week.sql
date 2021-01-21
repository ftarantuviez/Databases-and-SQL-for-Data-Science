-- Query A1: Enter a failing (i.e. which gives an error) to retrieve all employees whose salary is greater than the average salary

SELECT * FROM EMPLOYEES WHERE AVG(SALARY)>SALARY;

-- Query A2: Enter a working query using a sub-select to retrieve all employees whose salary is greater than the average salary
SELECT * FROM EMPLOYEES WHERE SALARY > (select AVG(SALARY) from EMPLOYEES);

-- Query A3: Enter a failing query (i.e. that gives an error) that retrieves all employees records and average salary in every row

SELECT *, AVG(SALARY) FROM EMPLOYEES;

-- Query A4: Enter a Column Expression that retrieves all employees records and average salary in every row

SELECT EMP_ID, SALARY, (select AVG(SALARY) FROM EMPLOYEES) FROM EMPLOYEES;

-- Query A5: Enter a Table Expression that retrieves only the columns with non-sensitive employee data

select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL ;

-- Query B1: Retrieve only the EMPLOYEES records that correspond to departments in the DEPARTMENTS table

SELECT D.DEP_NAME, E.EMP_ID, E.F_NAME, E.L_NAME, E.DEP_ID FROM DEPARTMENTS as D, EMPLOYEES as E
WHERE D.DEPT_ID_DEP = E.DEP_ID;

-- Query B2: Retrieve only the list of employees from location L0002

SELECT * FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID IN 
(select DEPT_ID_DEP from DEPARTMENTS where LOC_ID = 'L0002');


-- Query B3: Retrieve the department ID and name for employees who earn more than $70,000

SELECT DEP_NAME, DEPT_ID_DEP FROM DEPARTMENTS
WHERE DEPT_ID_DEP IN 
(select DEP_ID from EMPLOYEES where SALARY >70000);

-- Query B4: Specify 2 tables in the FROM clause

SELECT * FROM DEPARTMENTS, EMPLOYEES;

-- Query B5: Retrieve only the EMPLOYEES records that correspond to departments in the DEPARTMENTS table

select * from EMPLOYEES, DEPARTMENTS where employees.DEP_ID = departments.DEPT_ID_DEP;

-- Query B6: Use shorter aliases for table names

SELECT * FROM EMPLOYEES as E, DEPARTMENTS as D;

-- Query B7: Retrieve only the Employee ID and Department name in the above query

SELECT E.EMP_ID, D.DEP_NAME FROM EMPLOYEES as E, DEPARTMENTS as D;

-- Query B8: In the above query specify the fully qualified column names with aliases in the SELECT clause

select E.EMP_ID, D.DEP_NAME from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP;
