SELECT m.pizza_name, pi.name AS pizzeria_name, m.price
FROM menu m
JOIN pizzeria pi ON pi.id = m.pizzeria_id
WHERE m.pizza_name = 'pepperoni pizza' OR m.pizza_name = 'mushroom pizza'
ORDER BY m.pizza_name, pi.name;