/*Please add ; after each select statement*/
CREATE PROCEDURE combinationLock()
BEGIN
    SELECT CEIL(ROUND(exp(sum(log(CHAR_LENGTH(characters)))),2)) as combinations
    FROM discs;
END