WITH orders AS (
	SELECT
		pi.id AS p_id,
		COUNT(*) AS count
	FROM pizzeria pi
	JOIN menu m ON m.pizzeria_id = pi.id
	JOIN person_order po ON po.menu_id = m.id
	GROUP BY pi.id
), prices AS (
    SELECT
		pi.id AS p_id,
		ROUND(AVG(m.price), 2) AS avg,
		MAX(m.price) AS max,
		MIN(m.price) AS min
	FROM pizzeria pi
	JOIN menu m ON m.pizzeria_id = pi.id
	JOIN person_order po ON po.menu_id = m.id
	GROUP BY pi.id
)
SELECT
    pi.name,
    COALESCE(orders.count, 0) AS count_of_orders,
    prices.avg AS average_price,
	prices.max AS max_price,
	prices.min AS min_price
FROM pizzeria pi
LEFT JOIN orders ON orders.p_id = pi.id
LEFT JOIN prices ON prices.p_id = pi.id
ORDER BY name;