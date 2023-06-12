/* 11. Calculate the average product price by category */
select categories.category_name,round(Avg(products.unit_price),2)as AVGPrice
from products
inner join categories
on products.category_id = categories.category_id 
group by categories.category_id;
