SELECT p.name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN (SELECT id FROM menu WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza') m
    ON m.id = po.menu_id
WHERE p.gender = 'male' AND p.address = 'Moscow' OR p.address = 'Samara'
ORDER BY name DESC;