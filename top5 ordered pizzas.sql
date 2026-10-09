-- LIST TOP 5 MOST ORDERED PIZZA TYPES
--  ALONG WITH THEIR QUANTITY

SELECT pizza_types_cleaned.Name,
SUM(order_details.quantity) as Quantity
from pizza_types_cleaned JOIN pizzas
on pizza_types_cleaned.pizza_type_id = pizzas.pizza_type_id
JOIN order_details 
on order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types_cleaned.name order by Quantity desc limit 5;