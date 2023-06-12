/* 36. Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’
Here is the sample output */

select c.customer_id,round(sum((quantity * unit_price) - (quantity * unit_price * discount)),2) as summation,
case 
when  round(sum((quantity * unit_price) - (quantity * unit_price * discount)),2) > 5000 then 'High Value'
when  round(sum((quantity * unit_price) - (quantity * unit_price * discount)),2) <= 5000  and 
round(sum((quantity * unit_price) - (quantity * unit_price * discount)),2) > 1000 then 'Medium Value'
else 'Low Walue'
end as customerClass
from order_details od
inner join orders o 
on od.order_id = o.order_id
inner join customers c 
on o.customer_id = c.customer_id 
group by c.customer_id 
order by summation desc;
