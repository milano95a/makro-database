--View all Sales by branch (Inner Join)
create view BranchSales as
select Branch.branch_name, Sales.sale_date,Electronics.product_name,Electronics.product_description, Electronics.price, Staff.first_name as seller, Staff.last_name
from Branch
inner join Sales
on Sales.branch_id = Branch.branch_id
inner join Electronics
on Electronics.electronics_id = Sales.electronics_id
inner join Staff
on Staff.staff_id = Sales.staff_id

-- Manager should be able to see Orders (Outer Join)
create view OtherProductsOrders as
select Orders.order_id as 'Order ID',OtherProducts.product_name as 'Ordered Product Name',OtherProducts.product_description as 'Product Description', Supplier.company_name as 'Supplier Name', Staff.first_name as 'Ordered',Staff.last_name as 'By', Orders.order_date as 'Order Date'
from Orders
left outer join OtherProducts
on Orders.otherp_id = OtherProducts.otherp_id 
left outer join Supplier
on Orders.supplier_id = Supplier.supplier_id
left outer join Staff
on Orders.staff_id = Staff.staff_id

-- see different types of products in a 1 table (UNION)
select product_name, product_description, price, amount_in_stock from Electronics
union
select product_name, product_description, price, amount_in_stock from DailyProducts
union
select product_name, product_description, price, amount_in_stock from OtherProducts
order by price

--See products by brand Oster (Intersect)
select * from Electronics
intersect 
select * from Electronics
where product_name = 'oster'

--See all employees except 'Alisher'
select * from Staff
except
select * from Staff
where first_name = 'Alisher'

--select sales made by Ravshan (corrolated)
select sale_id, branch_id, staff_id
from Sales
where staff_id = (select staff_id from Staff where first_name ='Ravshan')

--Select Managers that is responsible for a branch with a zip code 100005 (uncorrolated)
select first_name, last_name
from Staff
where (position_id = (select position_id from Position where title = 'Manager')) and (staff_branch = (select branch_id from branch where zip = 100005))

-- (Group By) total number of orders made by each Inventory Staff
select first_name,last_name, count(Orders.order_id) as 'No of Orders'
from Staff, Orders
where Orders.staff_id = Staff.staff_id
group by first_name, last_name
