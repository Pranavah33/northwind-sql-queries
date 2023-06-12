/* 15. Find the total revenue for the year 2016 */
select sum(summation)
from orders
inner join (select
  order_id as orddID,
  round(
    sum(
      unit_price * quantity - (unit_price * quantity * discount)
    ),
    2
  ) as summation
from order_details
group by orddID)
on orders.order_id = orddID
where shipped_date between '2016-01-01' and '2016-12-31' ;
