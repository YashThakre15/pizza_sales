-- determine the distribution of orders by hour of the day

select hour(order _time), count(order_id)from orders
GROUP BY hour(order_time);