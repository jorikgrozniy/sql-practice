SELECT pi.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pi ON pi.id = m.pizzeria_id
JOIN person p ON p.id = po.person_id
GROUP BY pizzeria_name
HAVING COUNT(CASE WHEN gender = 'male' THEN 1 END) = 0
UNION
SELECT pi.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pi ON pi.id = m.pizzeria_id
JOIN person p ON p.id = po.person_id
GROUP BY pizzeria_name
HAVING COUNT(CASE WHEN gender = 'female' THEN 1 END) = 0
ORDER BY 1;