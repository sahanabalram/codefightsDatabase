CREATE PROCEDURE nullIntern()
BEGIN
	SELECT COUNT(1) AS number_of_nulls
    FROM departments
    WHERE description IS NULL
    OR UPPER(description) REGEXP BINARY '^[[:blank:]]*(NULL|NIL|\-)[[:blank:]]*$';
END