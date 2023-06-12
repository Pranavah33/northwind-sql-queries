/* 2. Find all suppliers who provide products in the ‘Seafood’ category */
select distinct suppliers.company_name As Seafood_suppliers
from suppliers
left join products
on Suppliers.supplier_id = products.supplier_id
left join categories
on categories.category_id = products.category_id
Where categories.category_name = "Seafood" ;
