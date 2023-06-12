/* 4. Find the total sales (Quantity*Unit_Price) for each category of products */
select  categories.category_name, round(sum(order_details.quantity * products.unit_price),2) As TotalSales
from products
inner join order_details
on products.product_id = order_details.product_id
inner join categories
on products.category_id = categories.category_id
group by categories.category_id ;
