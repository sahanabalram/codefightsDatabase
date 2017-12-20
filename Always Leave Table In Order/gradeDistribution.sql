CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name,ID FROM Grades
    WHERE final >(Midterm1/4+Midterm2/4+Final/2) AND(Final>MIDTERM1/2+MIDTERM2/2)
    ORDER BY LEFT(Name,3),ID ASC;
END