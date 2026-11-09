INSERT INTO person_visits
VALUES (
    (SELECT MAX(id) + 1 FROM person_visits),
    (SELECT id FROM person WHERE name = 'Dmitriy'),
    (
        SELECT pi.id
        FROM pizzeria pi
        JOIN menu m ON m.pizzeria_id = pi.id
        WHERE m.price < 800 AND pi.name NOT IN (
            SELECT pizzeria_name
            FROM mv_dmitriy_visits_and_eats
        )
		LIMIT 1
    ),
    '2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;