CREATE PROCEDURE expressionsVerification()
BEGIN
    SELECT r.id, r.a,r.b,r.operation, r.c
    FROM (
        SELECT 
        id,a,b , operation, c,case when operation = '+' THEN  a + b
            when operation = '-' THEN  a - b
            when operation = '/' THEN  a / b
            when operation = '*' THEN  a * b END as res
        FROM expressions
    ) r
    where r.res=r.c
    order by r.id;
END