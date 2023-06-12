/* 9. Find the customers who have not placed any orders */
SELECT c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
where o.customer_id is null ;
