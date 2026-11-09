CREATE TABLE city_tour (
	point1 VARCHAR,
	point2 VARCHAR,
	cost INT
);

INSERT INTO city_tour (point1, point2, cost)
VALUES 
	('a', 'b', 10),
	('a', 'c', 15),
	('a', 'd', 20),
	('b', 'a', 10),
	('b', 'c', 35),
	('b', 'd', 25),
	('c', 'a', 15),
	('c', 'b', 35),
	('c', 'd', 30),
	('d', 'a', 20),
	('d', 'b', 25),
	('d', 'c', 30);

WITH RECURSIVE path_tour AS (
	SELECT
		point1 AS start_point,
		point2 AS current_point,
		cost AS total_cost,
		ARRAY[point1, point2] AS tour
	FROM city_tour
	WHERE point1 = 'a'

	UNION ALL

	SELECT
		pt.start_point,
		ct.point2 AS current_point,
		pt.total_cost + ct.cost AS total_cost,
		pt.tour || ARRAY[ct.point2] AS tour
	FROM path_tour pt
	JOIN city_tour ct ON pt.current_point = ct.point1
	WHERE NOT ct.point2 = ANY(pt.tour)
), complete_tours AS (
	SELECT
		pt.total_cost + ct.cost AS total_cost,
		pt.tour || ARRAY['a'] AS tour
	FROM path_tour pt
	JOIN city_tour ct ON pt.current_point = ct.point1 AND ct.point2 = 'a'
	WHERE array_length(pt.tour, 1) = 4
)

SELECT
    total_cost,
    tour
FROM complete_tours
WHERE total_cost = (SELECT MIN(total_cost) FROM complete_tours)
ORDER BY total_cost ASC, tour ASC;