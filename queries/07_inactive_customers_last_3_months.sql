--Returns inactive customers from the past 3 months
select c.customer_id, c.customer_name from customers c left join orders o on c.customer_id = o.customer_id
and o.order_date >= DATEADD(MONTH, -3, '2023-12-20') and o.order_date <= '2023-12-20' where o.order_id is NULL;
