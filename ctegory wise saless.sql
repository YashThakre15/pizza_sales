-- join the necessary tables to find the 
-- total quantity of each pizza category ordered.

SELECT pizza_types_cleaned.category, 
SUM(order_details.quantity) as quantity
FROM pizza_types_cleaned join pizzas
on pizza_types_cleaned.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
on order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types_cleaned.category ORDER BY quantity desc;