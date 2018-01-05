CREATE PROCEDURE orderingEmails()
BEGIN
    SELECT s.id, s.email_title, IF(s.short_size lIKE '%bytes%','0 Kb',s.short_size) as short_size

  FROM 
(    
	SELECT id, email_title, 
   
  case
  when size >= 1048576 THEN CONCAT(FLOOR(size / 1048576), ' Mb')
  when size >= 1024 THEN CONCAT(FLOOR( size / 1024), ' Kb') 
  ELSE  CONCAT(ROUND(size, 0), ' bytes') END as short_size





/*
CASE
      WHEN ABS(size) <= 1000 THEN CONCAT( '0', ' Kb')
      WHEN ABS(size) <= 1048576 THEN CONCAT( FLOOR( (size/1024)), ' Kb')
      WHEN ABS(size) <= 1073741824 THEN CONCAT( FLOOR( (size/1048576) ), ' Mb')
      WHEN ABS(size) <= 1099511627776 THEN CONCAT( FLOOR( (size/1073741824)), ' Gb' )
      WHEN ABS(size) < 1125899906842624 THEN CONCAT( FLOOR( (size/1099511627776)), ' TB')
      WHEN ABS(size) < 1152921504606846976 THEN CONCAT( ROUND( (size/1125899906842624), 2 ), ' PB' )
      WHEN ABS(size) < 1180591620717411303424 THEN CONCAT( ROUND( (size/1152921504606846976) ,2), ' Eb' )
      WHEN ABS(size) < 1208925819614629174706176 THEN CONCAT( ROUND( (size/1180591620717411303424), 2), ' Zb' )
      WHEN ABS(size) < 1237940039285380274899124224 THEN CONCAT( ROUND( (size/1208925819614629174706176), 2), ' Yb' )
      WHEN ABS(size) < 1267650600228229401496703205376 THEN CONCAT( ROUND( (size/1237940039285380274899124224), 2), ' BB' )*/
    FROM emails
    ORDER BY size desc ) s ;
END