-- calculate the percentage contribution of each 
-- pizza type to local revenue

SELECT pizza_types_cleaned.category,
round(SUM(order_details.quantity*pizzas.price) /(SELECT ROUND
(SUM(order_details.quantity*pizzas.price),2) AS total_sales

FROM order_details JOIN pizzas 
on pizzas.pizza_id = order_details.pizza_id )*100,2) as revenue

FROM pizza_types_cleaned join pizzas 
on pizza_types_cleaned.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
on order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types_cleaned.category ORDER BY revenue;