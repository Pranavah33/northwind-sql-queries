/* 6. Get the customers who have placed more than 10 orders */
Select *
from
(select Customers.company_name ,count(orders.order_id) As totalOrders
from customers
inner join orders
on customers.customer_id = orders.customer_id 
group by customers.customer_id)
where totalOrders > 10
;
