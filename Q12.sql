/* 12. Find the total revenue generated by each employee */
select
  name,
  round(sum(summation), 2) as revenue
from (
    select
      name,
      summation
    from (
        select
          employees.first_name as name,
          orders.order_id as ordID
        from employees
          inner join orders on employees.employee_id = orders.employee_id
      )
      Inner join (
        select
          order_id as orddID,
          round(
            sum(
              unit_price * quantity - (unit_price * quantity * discount)
            ),
            2
          ) as summation
        from order_details
        group by
          order_details.order_Id
      ) on ordID = orddID
  )
  group by name;