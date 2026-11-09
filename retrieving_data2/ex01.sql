SELECT date_series::date AS missing_date
FROM generate_series(
    '2022-01-01'::date,
    '2022-01-10'::date,
	'1 day'::interval
) AS date_series
LEFT JOIN (SELECT visit_date FROM person_visits WHERE person_id BETWEEN 1 AND 2) pv
	ON pv.visit_date = date_series::date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;