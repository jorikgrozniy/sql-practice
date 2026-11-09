SELECT m.pizza_name, pi.name AS pizzeria_name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pi ON pi.id = m.pizzeria_id
WHERE p.name = 'Denis' OR p.name = 'Anna'
ORDER BY pizza_name, pizzeria_name;