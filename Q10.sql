/* 10. List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it */
select *
from orders
inner join customers
on orders.customer_id = customers.customer_id
inner join employees
on orders.employee_id = employees.employee_id ;
