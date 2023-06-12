/* 27. Find the average quantity of products ordered in each order */
select round(avg(quantity), 2)
from order_details
group by order_id;
