CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id,name,surname FROM Suspect
    WHERE height <=170 OR UPPER(name) NOT LIKE 'B%'OR UPPER(surname) NOT LIKE 'gre_n'
    ORDER BY id;
END