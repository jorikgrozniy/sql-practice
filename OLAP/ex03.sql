SELECT
	pi.name,
	COALESCE(visits.count, 0) +
	COALESCE(orders.count, 0) AS total_count
FROM pizzeria pi
LEFT JOIN (
	SELECT pi.id AS p_id, COUNT(*) AS count
	FROM pizzeria pi
	JOIN person_visits pv ON pv.pizzeria_id = pi.id
	GROUP BY pi.id
) visits ON visits.p_id = pi.id
LEFT JOIN (
	SELECT pi.id AS p_id, COUNT(*) AS count
	FROM pizzeria pi
	JOIN menu m ON m.pizzeria_id = pi.id
	JOIN person_order po ON po.menu_id = m.id
	GROUP BY pi.id
) orders ON orders.p_id = pi.id
ORDER BY total_count DESC, name ASC;

