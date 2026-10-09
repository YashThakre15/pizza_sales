-- group the orders by the date and calculate
--  the average number of pizzas ordered per day

SELECT orders.order_date,
sum(order_details.quantity)
FROM orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date;


