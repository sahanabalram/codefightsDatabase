CREATE PROCEDURE habitatArea()
BEGIN
	SET @g = (SELECT CONCAT('MULTIPOINT(', GROUP_CONCAT( CONCAT(x, ' ', y) SEPARATOR ','),')') FROM places);
    SELECT ST_Area(ST_CONVEXHULL(ST_GeomFromText(@g))) as area;
END