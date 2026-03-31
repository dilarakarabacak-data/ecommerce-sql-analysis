--Finds each customer's most recent order
select * from (select c.customer_id,c.customer_name,o.order_date, ROW_NUMBER() over (partition by c.customer_id order by o.order_date desc) as orders_rank 
from customers c join orders o on c.customer_id=o.customer_id) x where orders_rank=1
