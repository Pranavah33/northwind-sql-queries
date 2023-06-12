/* 8. Find the products that have never been ordered */
select products.product_name
from products
where products.product_name 
in (select Distinct product_name
from products
inner join order_details
on products.product_id = order_details.product_id
where products.discontinued = 1 );
