CREATE FUNCTION func_minimum(arr NUMERIC[]) RETURNS NUMERIC AS $$
    SELECT min(nums)
	FROM unnest(arr) AS nums;
$$ LANGUAGE sql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);