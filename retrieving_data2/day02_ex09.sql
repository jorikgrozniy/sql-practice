SELECT p.name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN (SELECT id, pizza_name FROM menu WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'cheese pizza') m
    ON m.id = po.menu_id
WHERE p.gender = 'female'
GROUP BY name
HAVING COUNT(DISTINCT m.pizza_name) = 2
ORDER BY name;