CREATE PROCEDURE mischievousNephews()
BEGIN
    SELECT WEEKDAY(mischief_date) As weekday, mischief_date, author, title
    FROM mischief
    ORDER BY weekday,(CASE author WHEN 'Huey' THEN 1
                                       WHEN 'Dewey' THEN 2
                                       WHEN 'Louie' THEN 3 END), mischief_date,LEFT(title,3)ASC;
END