CREATE PROCEDURE marketReport()
BEGIN
    SELECT CASE WHEN c.country IS NULL THEN 'Total:' ELSE c.country END AS country, c.competitors
    FROM(SELECT country, SUM(1) AS competitors
        FROM foreignCompetitors
        GROUP BY country WITH ROLLUP)c;
END