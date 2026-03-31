--Checks for orders/customers with orders but no payment records
select c.customer_id,c.customer_name from customers c join orders o on c.customer_id=o.customer_id 
left join payments p on o.order_id=p.order_id where p.payment_id is NULL
