 -- join the relevant table to 
 -- join the category wise  distribution of pizzas.
 
SELECT category , count(name) from pizza_types_cleaned
GROUP BY category;