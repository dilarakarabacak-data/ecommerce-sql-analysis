--Customer Segmentation based on total spending
--High Value: >= 10000
--Medium Value: >= 7000
--Low Value: < 7000
select c.customer_id,c.customer_name, sum(p.payment_amount) as payment_sum ,'Segment'=case
when sum(p.payment_amount)>=10000 then 'High Value'
when sum(p.payment_amount)>=7000 then 'Medium Value'
else 'Low Value'
end from customers c join orders o on c.customer_id=o.customer_id join payments p on o.order_id=p.order_id group by c.customer_id,c.customer_name
