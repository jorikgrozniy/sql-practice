SELECT pi.name AS pizzeria_name
FROM person_visits pv
JOIN (SELECT id FROM person WHERE name = 'Dmitriy') p ON p.id = pv.person_id
JOIN pizzeria pi ON pi.id = pv.pizzeria_id
JOIN (SELECT pizzeria_id FROM menu WHERE price < 800) m ON m.pizzeria_id = pi.id
WHERE pv.visit_date = '2022-01-08';