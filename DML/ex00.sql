SELECT m.pizza_name, m.price, pi.name AS pizzeria_name, pv.visit_date
FROM person_visits pv
JOIN (SELECT id FROM person WHERE name = 'Kate') p ON p.id = pv.person_id
JOIN pizzeria pi ON pi.id = pv.pizzeria_id
JOIN (SELECT * FROM menu WHERE price BETWEEN 800 AND 1000) m ON m.pizzeria_id = pi.id
ORDER BY 1, 2, 3;