/* 18. Find all employees who report to ‘Andrew Fuller’ */
select em.employee_id, em.first_name,em.last_name
from employees em 
where em.reports_to =  (select e.employee_id
from employees e 
where e.first_name = 'Andrew' and e.last_name = 'Fuller' ) ;
