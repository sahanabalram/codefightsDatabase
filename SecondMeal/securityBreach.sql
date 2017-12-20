CREATE PROCEDURE securityBreach()
BEGIN
	SELECT first_name,second_name,attribute FROM users
    
    WHERE attribute REGEXP BINARY CONCAT('^.{1,}(\%', first_name,'\_',second_name, '\%).{0,}$')
    ORDER BY attribute ASC;
END