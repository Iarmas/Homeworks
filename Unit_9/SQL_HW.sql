SELECT e.emp_no, e.last_name, e.first_name, e.gender,s.salary
from public."Employees" e
INNER JOIN public."Salaries" s ON
e.emp_no=s.emp_no;

select * from public."dept_manager"

SELECT first_name, last_name, hire_date
from public."Employees"
WHERE hire_date >= '1986-01-01'
  AND hire_date <= '1986-12-31';
  
SELECT d.dept_no, dep.dept_name, d.emp_no,e.last_name, e.first_name, d.from_date,d.to_date
from public."dept_manager" d
INNER JOIN public."departments" dep
ON d.dept_no=dep.dept_no
INNER JOIN public."Employees" e 
ON d.emp_no=e.emp_no;

SELECT d.emp_no, e.last_name, e.first_name,dep.dept_name
from public."dept_manager" d
INNER JOIN public."departments" dep
ON d.dept_no=dep.dept_no
INNER JOIN public."Employees" e 
ON d.emp_no=e.emp_no;

Select *
From public."Employees"
Where first_name='Hercules'
And last_name like 'B%'

SELECT d.emp_no, e.last_name, e.first_name,dep.dept_name
from public."dept_manager" d
INNER JOIN public."departments" dep
ON d.dept_no=dep.dept_no
INNER JOIN public."Employees" e 
ON d.emp_no=e.emp_no
Where dept_name='Sales';

SELECT d.emp_no, e.last_name, e.first_name,dep.dept_name
from public."dept_manager" d
INNER JOIN public."departments" dep
ON d.dept_no=dep.dept_no
INNER JOIN public."Employees" e 
ON d.emp_no=e.emp_no
Where dept_name='Sales'
or dept_name='Development';

Select last_name, count(last_name) 
from public."Employees";

SELECT last_name,count(last_name) 
FROM public."Employees"
GROUP BY last_name
ORDER BY last_name desc;
