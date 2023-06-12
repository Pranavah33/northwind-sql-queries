/* 30. Find the employee who processed the most orders in August 2016 */
select e.First_name, e.Last_name , count(o.order_id) as 'TotalOrders' 
from employees e 
inner join orders o 
On e.employee_id = o.employee_id
where o.order_date between '2016-08-01' And '2016-08-31'
Group by e.employee_id
