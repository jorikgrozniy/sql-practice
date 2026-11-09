INSERT INTO person_order
SELECT
    (SELECT MAX(id) + p_id FROM person_order),
    p_id,
    (SELECT id FROM menu WHERE pizza_name = 'Greek pizza'),
    '2022-02-25'
FROM generate_series(1, (SELECT MAX(id) FROM person)) p_id;