--Calculates the order cancellation rate
select count(case 
when o.status='Cancelled' 
then 1
end) * 100.0/count(*) as cancellation_rate from orders o
