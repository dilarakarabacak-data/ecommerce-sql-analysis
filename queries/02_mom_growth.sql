--Calculates Month-over-Month (MoM) revenue growth
--Formula:(current_month - previous_month) / previous_month
select year,month, revenue, prev_month,((revenue-prev_month)*100.0/prev_month) as mom_growth
from (select year, month,revenue, lag(revenue) over(order by year,month) as prev_month from (select year(o.order_date) as year,month(o.order_date) as month, sum(p.payment_amount) as revenue 
from orders o join  payments p on o.order_id=p.order_id where o.status='Completed' group by YEAR(o.order_date),MONTH(o.order_date)) x)y
