SELECT
p.id AS person_id, p.name AS person_name, age, gender, address,
pi.id AS pizzeria_id, pi.name AS pizzeria_name, rating
FROM person p, pizzeria pi
ORDER BY p.id, pi.id;