/* 35. Find the total sales for each year */
select round(sum(order_details.quantity * order_details.unit_price - order_details.quantity * order_details.unit_price* order_details.discount),2)  as totalSales, years 
from order_details
inner join  (select orders.order_id as ordId, year(orders.order_date)  as years
from orders) on order_details.order_id = ordId
group by years
