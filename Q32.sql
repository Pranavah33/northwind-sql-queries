/* 32. Find the employees who have not processed any orders */
select employee_id
from employees
where employee_id not in (select employees.employee_id 
                          from employees
                          inner join orders
                          on employees.employee_id = orders.employee_id) ;
