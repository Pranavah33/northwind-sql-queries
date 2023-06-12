/* 5. List the employees and the number of orders each employee has taken */
select  employees.first_name,count(orders.order_id)As TotalOrders
from employees
left join orders
on employees.employee_id = orders.employee_id 
group by employees.employee_id'
