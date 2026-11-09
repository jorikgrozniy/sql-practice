CREATE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10) RETURNS TABLE(
    fibonacci INTEGER
) AS $$
    DECLARE
        f0 INTEGER := 0;
        f1 INTEGER := 1;
        f2 INTEGER := 1;
    BEGIN
        IF f0 < $1 THEN
            fibonacci := f0;
			RETURN NEXT;
        END IF;
		IF f1 < $1 THEN
			fibonacci := f1;
			RETURN NEXT;
		END IF;
        WHILE f2 < $1 LOOP
            fibonacci := f2;
            f0 := f1;
            f1 := f2;
            f2 := f0 + f1;
			RETURN NEXT;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();