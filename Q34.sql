/* 34. Find the customers who have ordered products from all categories */
select  c.customer_id , Count(distinct p.category_id)
from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_details od
on o.order_id = od.order_id
inner join products p 
on od.product_id = p.product_id 
inner join categories ct 
on ct.category_id = p.category_id
group by c.customer_id
having count(distinct p.category_id ) >= 8
