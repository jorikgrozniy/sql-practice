-- session 1
BEGIN;
-- session 2
BEGIN;
-- session 1
UPDATE pizzeria SET rating = 3 WHERE id = 1;
-- session 2
UPDATE pizzeria SET rating = 3.5 WHERE id = 2;
-- session 1
UPDATE pizzeria SET rating = 3 WHERE id = 2;
-- session 2
UPDATE pizzeria SET rating = 3.5 WHERE id = 1;
-- session 1
COMMIT;
-- session 2
COMMIT;