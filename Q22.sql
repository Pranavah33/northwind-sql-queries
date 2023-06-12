/* 22. Get the employees who have processed orders for ‘Chai’ product */
select distinct fName as employeeName
from (
    Select
      order_details.order_id as orddID,
      products.product_name as pName
    from products
      inner join order_details on products.product_id = order_details.product_id
    Where products.product_name = "Chai"
  )
  inner join (
    select
      orders.order_id as ordID,
      employees.employee_id as eID,
      employees.first_name as fName
    from employees
      inner join orders on employees.employee_id = orders.employee_id
  ) on orddId = ordID
order by fName;
