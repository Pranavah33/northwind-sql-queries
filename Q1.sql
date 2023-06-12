/* 1. Get the total number of orders placed by each customer */
select customers.customer_id, 
count(orders.order_id) as totalOrders
from customers 
left join orders
on customers.customer_id = orders.customer_id 
group by customers.customer_id;
