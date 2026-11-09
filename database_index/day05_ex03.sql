CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id);

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT person_id, menu_id
FROM person_order
WHERE person_id > 2 AND menu_id < 10;