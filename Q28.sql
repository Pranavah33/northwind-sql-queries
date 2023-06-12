/* 28. Find the top 3 most popular categories of products ordered */
select
  count(order_details.order_id) as noOfOrders,
  cName
from order_details
  inner join (
    select
      products.product_id as pID,
      categories.category_id as cID,
      categories.category_name as cName
    from products
      inner join categories on products.category_id = categories.category_id
  ) on order_details.product_id = pID
group by cName
order by
  count(order_details.order_id) desc
limit 3;
