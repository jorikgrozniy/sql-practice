-- session 1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN;
-- session 2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN;
-- session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- session 2
UPDATE pizzeria SET rating = 3 WHERE name = 'Pizza Hut';
COMMIT;
-- session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- session 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';