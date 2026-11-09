SELECT
    p.name,
    m.pizza_name,
    m.price,
    ROUND(m.price * (1 - pd.discount / 100)) AS discount_price,
    pi.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN person p ON p.id = po.person_id
JOIN pizzeria pi ON pi.id = m.pizzeria_id
JOIN person_discounts pd ON pd.person_id = po.person_id
    AND pd.pizzeria_id = m.pizzeria_id
ORDER BY name, pizza_name;