INSERT INTO person_discounts
SELECT
    ROW_NUMBER() OVER (ORDER BY po.person_id) AS id,
    po.person_id,
    m.pizzeria_id,
    CASE
        WHEN COUNT(po.id) = 1 THEN 10.5
        WHEN COUNT(po.id) = 2 THEN 22
        ELSE 30
    END AS discount
FROM person_order po
JOIN menu m ON m.id = po.menu_id
GROUP BY person_id, pizzeria_id;