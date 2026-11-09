SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT m.pizza_name, pi.name AS pizzeria_name
FROM pizzeria pi
JOIN menu m ON pi.id = m.pizzeria_id;