/* 20. List the top 5 employees who have processed the most orders */
select  employees.first_name,count(orders.order_id) as noOfOrders
from employees
inner join orders
on employees.employee_id = orders.employee_id
group by employees.employee_id
order by count(orders.order_id) desc limit 5;
