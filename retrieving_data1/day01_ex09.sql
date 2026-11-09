SELECT p.name
FROM pizzeria p
WHERE p.id NOT IN
    (SELECT pv.pizzeria_id
    FROM person_visits pv);

SELECT p.name
FROM pizzeria p
WHERE NOT EXISTS
    (SELECT 1
    FROM person_visits pv
    WHERE pv.pizzeria_id = p.id);