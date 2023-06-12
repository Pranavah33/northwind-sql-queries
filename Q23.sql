/* 23. Find the most common shipping country */
select ship_country
from orders
group by ship_country
order by count(order_id) desc  limit 3;
