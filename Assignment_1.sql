
--QUESTION 1
-- The following SELECT statement executes successfully 

SELECT LAST_NAME,JOB_ID,SALARY AS SAL 
FROM HR.EMPLOYEES;
--True

-- QUESTION 2
-- The following SELECT statement executes successfully. 
Select *
From JOB_GRADES;
--True,if the table exists

--QUESTION 3
--There are four coding errors in the following statement. Can you identify them? 
SELECT    employee_id, last_name 
sal x 12  ANNUAL SALARY
 FROM employees;
/*Following are the errors: 1.sal is an invalid identifier
                            2.multiple sign should be *
                            3. "," is missing after last_name
                            4.annual salary should be written as one word
correct code will be*/ 
SELECT  employee_id, last_name, salary*12  ANNUALSALARY FROM hr.employees;


--QUESTION 4
--you have been hired as a sql programmer for ABC corporation. Your first task is to create some reports based on the data from the human resources tables.  
--a.Your first task is to determine the structure of the DEPARTMENTS table and its contents. 

Describe hr.employees;

Select * from hr.employees;

--QUESTION 5
/*The HR department wants a query to display the last name, job code, hire date, and employee number for each employee, with the employee number appearing first. Provide an alias STARTDATE for the HIRE_DATE column. Save your SQL statement to a file named so that you can dispatch this file to the HR department. 
*/

select employee_id,last_name,job_id,hire_date as STARTDATE from hr.employees;

--QUESTION 6
--The HR department needs a query to display all unique job codes from the EMPLOYEES table.

select distinct(job_id) as job_codes from hr.employees;

--QUESTION 7
--The HR department wants more descriptive column headings for its report on employees. Name the column headings Emp #, Employee, Job, and Hire Date, respectively. Then run your query again.

select employee_ID as "Emp #", (first_name || ' '|| last_name)  as Employee,job_id as Job,hire_date as "HIRE DATE" from hr.employees;

--Question 8
--The HR department has requested a report of all employees and their job IDs. Display the last name concatenated with the job ID (separated by a comma and space) and name the column Employee and Title.

select (last_name || ', ' || job_id) as "Employee and Title" from hr.employees;

--Question 9
--To familiarize yourself with the data in the EMPLOYEES table, create a query to display all the data from that table. Separate each column output with a comma. Name the column THE_OUTPUT

select (EMPLOYEE_ID || ', '|| FIRST_NAME || ', '|| LAST_NAME || ', '|| EMAIL|| ', '|| PHONE_NUMBER|| ', '|| HIRE_DATE || ', '||	JOB_ID || ', '|| SALARY || ', '|| COMMISSION_PCT || ', '|| MANAGER_ID || ''|| DEPARTMENT_ID) as The_Output
from hr.employees;


