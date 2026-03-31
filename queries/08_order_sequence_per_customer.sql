--Creates the 1st, 2nd, and 3rd order sequences by customer with PARTITION BY
select c.customer_id,c.customer_name, o.order_date, ROW_NUMBER() over (partition by c.customer_id order by o.order_date) as 'orders' 
from customers c join orders o on c.customer_id=o.customer_id 
