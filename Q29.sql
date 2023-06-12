/* 29. Find the month in the year 2016 with the highest total sales */
select orders.order_date
from (select  order_details.order_id as orddID, round(sum(order_details.unit_price * order_details.quantity - order_details.unit_price * order_details.quantity * order_details.discount),2) as summation
from order_details
group by order_details.order_id )
inner join orders
on orders.order_id = orddID 
group by orders.order_date
order by Round(sum(summation),2) desc limit 1 ;
