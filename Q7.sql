/* 7. Get the top 5 most sold products */
SELECT product_name,
CASE
WHEN units_in_stock < units_on_order THEN unit_price * units_in_stock
WHEN units_in_stock > units_on_order THEN unit_price * units_on_order
ELSE unit_price * units_on_order
END AS revenue
FROM products
where revenue > 0
order by revenue desc
limit 5;
