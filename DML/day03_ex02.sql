SELECT pizza_name, price, pi.name AS pizzeria_name
FROM menu m, pizzeria pi
WHERE m.id NOT IN (SELECT menu_id FROM person_order) AND pizzeria_id = pi.id
ORDER BY 1, 2;