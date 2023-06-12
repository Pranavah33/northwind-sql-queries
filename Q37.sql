/* 37. Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ */

select p.product_name, sum(od.quantity) as totalQuantity,
case 
when sum(od.quantity)  > 1000 then 'High Sales'
when sum(od.quantity) <= 1000 and sum(od.quantity) > 500 then 'Medium Sales'
else 'Low Sales'
end as salesClass
from order_details od
inner join products p 
on od.product_id = p.product_id
group by p.product_name ;
