CREATE PROCEDURE suspectsInvestigation()
BEGIN
	SELECT id,name,surname FROM Suspect 
    WHERE height <= 170 AND UPPER(name) LIKE 'b%' AND UPPER(surname) LIKE 'gre_n'
    ORDER BY id;
END