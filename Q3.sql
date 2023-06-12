/* 3. Get the total quantity of each product sold */
select sum(order_details.quantity) As total_quantity_of_each_product_sold
from products 
join order_details
on products.product_id = order_details.product_id 
where products.discontinued = 0
