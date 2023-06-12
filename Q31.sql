/* 31. Find the top 3 customers who have ordered the most products */
select  customers.company_name , count (orders.order_id)  as noOfOrders
from customers
inner join orders
on customers.customer_id = orders.customer_id 
group by customers.customer_id
order by count (orders.order_id) desc limit 3
;
