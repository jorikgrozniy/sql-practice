CREATE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice NUMERIC DEFAULT 500,
    pdate DATE DEFAULT '2022-01-08'
) RETURNS TABLE(
	pizzeria_name VARCHAR
) AS $$
	BEGIN
		RETURN QUERY
    	SELECT DISTINCT pi.name
    	FROM person_visits pv
    	JOIN (SELECT id FROM person WHERE name = $1) p ON p.id = pv.person_id
    	JOIN pizzeria pi ON pi.id = pv.pizzeria_id
    	JOIN (SELECT pizzeria_id FROM menu WHERE price < $2) m ON m.pizzeria_id = pi.id
    	WHERE pv.visit_date = $3;
	END;
$$ LANGUAGE plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');