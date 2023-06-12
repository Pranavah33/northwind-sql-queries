1/* 3. List all orders shipped to ‘Germany’ */
select
  order_Id,
  ship_country
from orders
where ship_country = "Germany";
