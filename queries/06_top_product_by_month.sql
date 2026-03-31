--Finds the product that generates the most revenue each month
select * from (select month(o.order_date) as order_month, p.product_name,sum(oi.quantity*p.price) as revenue, 
Row_number() over (partition by month(o.order_date) order by sum(oi.quantity*p.price) desc) as revenue_rank 
from orders o join order_items oi on o.order_id=oi.order_id join products p on oi.product_id=p.product_id 
where o.status='Completed' group by month(o.order_date), p.product_name ) x where revenue_rank=1
