SELECT vd.generated_date AS missing_date
FROM v_generated_dates vd
LEFT JOIN person_visits pv ON pv.visit_date = vd.generated_date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;