/* 38. Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’
Here is the sample output */

select e.first_name, count(o.order_id) as totalOrders,
case 
when  count(o.order_id) > 100 then 'High performing'
when count(o.order_id) <= 100 and count(o.order_id) > 50 then 'Medium performing'
else 'Lower performing'
end as Performance
from employees e
inner join orders o
on e.employee_id = o.employee_id 
group by e.first_name;

