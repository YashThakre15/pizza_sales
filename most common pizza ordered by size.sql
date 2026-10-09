-- IDENTIFY THE MOST COMMON PIZZAS ORDERD BY SIZE

SELECT quantity , count(order_details_id)
from order_details GROUP BY quantity;
