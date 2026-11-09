WITH orders AS (
	SELECT
		pi.id AS p_id,
        p.address AS address,
		COUNT(*) AS count
	FROM pizzeria pi
	JOIN menu m ON m.pizzeria_id = pi.id
	JOIN person_order po ON po.menu_id = m.id
    JOIN person p ON p.id = po.person_id
	GROUP BY pi.id, p.address
)
SELECT
    orders.address,
    pi.name,
    orders.count AS count_of_orders
FROM pizzeria pi
JOIN orders ON orders.p_id = pi.id
ORDER BY address, name;