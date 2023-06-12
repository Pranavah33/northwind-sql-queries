/* 19. Find the customers who have spent more than $5000 in total */
select
  customers.contact_name,
  summation
from (
    select
      orddId,
      summation,
      orders.customer_id as cid
    from (
        select
          order_id as orddID,
          round(
            sum(
              unit_price * quantity - (unit_price * quantity * discount)
            ),
            2
          ) as summation
        from order_details
        group by orddID
      )
      inner join orders on orders.order_id = orddID
  )
  inner join customers on cid = customers.customer_id
where summation > 5000;

/* 
second ways

select    c.customer_id, round(
            sum(
              od.unit_price * od.quantity - (od.unit_price * od.quantity * od.discount)
            ),
            2
          ) as summation

from customers c 
inner join orders o 
on c.customer_id = o.customer_id 
inner join order_details od
on od.order_id = o.order_id 
group by c.customer_id
having round(
            sum(
              od.unit_price * od.quantity - (od.unit_price * od.quantity * od.discount)
            ),
            2
          ) > 5000
 */