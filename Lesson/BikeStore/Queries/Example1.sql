use BikeStores
/*
	Kasha Todd is upset after doing taxes, because she claims that
	she did not recieve her proper discount on her sales.
	You are tasked with finding out what her discount was and how much
	she would have spent on the list_price.
*/

-- 1. Find count which table is the biggest.
select count(order_id) as order_items from sales.order_items
select count(*) as orders from sales.order_items
select count(*) as customers from sales.order_items
   -- NOTE: all of the fields are the same lenght.
   
-- 2. Join order_items to orders then to customers. (order depends on 1.)
select * 
from sales.order_items as a  -- a joins to b on order_id which joins to c
join sales.orders as b       -- IF a joins to b and b joins to c 
on a.order_id = b.order_id   -- THEN a joins to c
join sales.customers as c                 
on b.customer_id = c.customer_id

-- 3. Find out avg discount and avg list_price that she spent.
select                    --8
	first_name,
	last_name,
	avg(list_price) as avg_list_price,
	sum(list_price) as sum_list_price,
	avg(discount) as avg_discount,
	count(*) as total_rows

from sales.order_items as a  --1 ( order of execution)
join sales.orders as b       --2
on a.order_id = b.order_id   --3
join sales.customers as c    --4
on b.customer_id = c.customer_id  --5
where first_name like '%Kasha%' and last_name like '%Todd%' --6
group by first_name,last_name   --7

-- 4. Send tabular report of all discount and list_price for Kasha Todd.
select 
	first_name,
	last_name,
	list_price,
	discount
	
from sales.order_items as a 
join sales.orders as b       
	on a.order_id = b.order_id   
join sales.customers as c
	on b.customer_id = c.customer_id 
where first_name like '%Kasha%' and last_name like '%Todd%'

-- 5. Improve Query preformance
select 
	first_name,
	last_name,
	list_price,
	discount
from sales.customers as c
join sales.orders as b
	on c.customer_id = b.customer_id and first_name = 'Kasha' and last_name = 'Todd'
join sales.order_items as a
	on b.order_id = a.order_id
