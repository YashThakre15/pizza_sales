-- DETERMINE THE TOP 3 MOST ORDERED PIZZA TYPES BASEDON REVENUE

select pizza_types_cleaned.name,
sum(order_details.quantity*pizzas.price) as revenue
from pizza_types_cleaned join pizzas
on pizzas.pizza_type_id = pizza_types_cleaned.pizza_type_id
JOIN order_details
on order_details.pizza_id = pizzas.pizza_id

GROUP BY  pizza_types_cleaned.name ORDER BY revenue desc limit 3;
