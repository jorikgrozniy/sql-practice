SELECT pi.name AS pizzeria_name
FROM person_visits pv
JOIN pizzeria pi ON pi.id = pv.pizzeria_id
JOIN person p ON p.id = pv.person_id
GROUP BY pizzeria_name
HAVING COUNT(CASE WHEN gender = 'male' THEN 1 END) != COUNT(CASE WHEN gender = 'female' THEN 1 END)
ORDER BY 1;