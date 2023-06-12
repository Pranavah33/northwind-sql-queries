/* 26. Find the customer who has ordered the most ‘Chai’ product */
select
cName,
count(ordID)
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
      customers.customer_id as cID,
      customers.company_name as cName
    from customers
      inner join orders on customers.customer_id = orders.customer_id
  ) on orddId = ordID
  group by cID
  order by count(ordID) desc
  ;
