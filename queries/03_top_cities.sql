--Calculates top 3 most profitable cities
select top 3 c.city,sum(p.payment_amount) sum_payment from customers c join orders o on c.customer_id=o.customer_id join payments p on o.order_id=p.order_id where o.status='Completed' group by c.city order by sum(p.payment_amount) desc
