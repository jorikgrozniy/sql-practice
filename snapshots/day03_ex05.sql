SELECT pi.name AS pizzeria_name
FROM pizzeria pi
WHERE NOT EXISTS (
	SELECT m.id
	FROM menu m
	JOIN person_order po ON po.menu_id = m.id
	JOIN person p ON p.id = po.person_id
	WHERE m.pizzeria_id = pi.id AND p.name = 'Andrey'
) AND EXISTS (
	SELECT pv.id
	FROM person_visits pv
	JOIN person p ON p.id = pv.person_id
	WHERE pv.pizzeria_id = pi.id AND p.name = 'Andrey'
)
ORDER BY 1;