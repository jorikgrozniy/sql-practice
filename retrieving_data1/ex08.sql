SELECT
order_date,
(p.name || ' (age:' || p.age || ')') AS person_information
FROM person_order
NATURAL JOIN (SELECT age, name, id AS person_id FROM person) p
ORDER BY order_date, person_information;