CREATE PROCEDURE booksCatalogs()
BEGIN
    SELECT SUBSTRING_INDEX(ExtractValue(xml_doc,'//catalog//book//author'),' ',2) AS author
    FROM catalogs
    ORDER BY author;
END