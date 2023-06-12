/* 24. Find the order with the highest total cost */
select  order_details.order_id, round(sum(order_details.unit_price * order_details.quantity - order_details.unit_price * order_details.quantity * order_details.discount),2) as summation
from order_details
group by order_details.order_id 
order by sum(order_details.unit_price * order_details.quantity - order_details.unit_price * order_details.quantity * order_details.discount) desc limit 3;
