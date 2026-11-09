insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

WITH nearest_rate AS (
    SELECT
        b.currency_id,
        b.updated AS balance_date,
        (
            SELECT c.rate_to_usd
            FROM currency c
            WHERE b.currency_id = c.id
            ORDER BY
                CASE WHEN c.updated <= b.updated THEN b.updated - c.updated END,
        	    CASE WHEN c.updated > b.updated THEN c.updated - b.updated END
            LIMIT 1
        ) AS nearest_rate
    FROM balance b
	WHERE b.currency_id IN (SELECT id FROM currency)
)
SELECT DISTINCT
    COALESCE(u.name, 'not defined') AS name,
    COALESCE(u.lastname, 'not defined') AS lastname,
    c.name AS currency_name,
    b.money * nr.nearest_rate AS currency_in_usd
FROM balance b
JOIN nearest_rate nr ON nr.currency_id = b.currency_id
    AND nr.balance_date = b.updated
JOIN currency c ON c.rate_to_usd = nr.nearest_rate
LEFT JOIN "user" u ON u.id = b.user_id
ORDER BY name DESC, lastname ASC, currency_name ASC;