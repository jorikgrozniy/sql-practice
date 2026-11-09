(
SELECT
    pi.name,
    COUNT(po.id) AS count,
    'order' AS action_type
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pi ON pi.id = m.pizzeria_id
GROUP BY pi.name
ORDER BY action_type ASC, count DESC
LIMIT 3
)
UNION ALL
(
SELECT
    pi.name,
    COUNT(pv.id) AS count,
    'visit' AS action_type
FROM person_visits pv
JOIN pizzeria pi ON pi.id = pv.pizzeria_id
GROUP BY pi.name
ORDER BY action_type ASC, count DESC
LIMIT 3
);