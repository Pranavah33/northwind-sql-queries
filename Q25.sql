/* 25. Find the employees who have processed more than 100 orders */
select *
from (
    select
      employees.employee_id,
      count(orders.order_id) as noOfOrders
    from employees
      inner join orders on employees.employee_id = orders.employee_id
    group by employees.employee_id
    order by count(orders.order_id) desc
  )
where noOfOrders > 100;
