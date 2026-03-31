select count(customer_id)*1.0/(select count(*) from customers) as repeat_purchase_rate 
from (select c.customer_id from customers c join orders o on c.customer_id=o.customer_id group by c.customer_id having count(o.order_id)>1) x
