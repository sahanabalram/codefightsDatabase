CREATE PROCEDURE movieDirectors()
BEGIN
	SELECT DISTINCT m.director 
FROM(SELECT director, SUM(oscars) AS oscars FROM moviesInfo
    WHERE year > 2000
    GROUP BY director
    ) m WHERE m.oscars > 2
    ORDER BY m.director ASC;
END