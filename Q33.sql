/* 33. Find the suppliers who supply the top 5 most sold products */
select distinct suppliers.company_name
from (select products.product_id as pID, count(order_details.order_id), products.supplier_id as sID
from order_details
inner join products
on order_details.product_id = products.product_id 
group by products.product_id
order by count(order_details.order_id) desc limit 5)
inner join suppliers
on suppliers.supplier_id = sID ;
