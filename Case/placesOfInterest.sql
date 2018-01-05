/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterest()
BEGIN
    SELECT r.country, sum(r.adventure_park) as adventure_park, sum(r.golf) as golf, sum(r.river_cruise) as river_cruise, sum(r.kart_racing) as kart_racing
    FROM (
    SELECT country, CASE WHEN leisure_activity_type = 'Adventure park' THEN number_of_places ELSE 0 END as adventure_park, CASE WHEN leisure_activity_type = 'Golf' THEN  number_of_places ELSE 0 END as golf, CASE WHEN leisure_activity_type = 'River cruise' THEN number_of_places ELSE 0 END as river_cruise, CASE WHEN leisure_activity_type = 'Kart racing' THEN number_of_places ELSE 0 END as kart_racing
        FROM countryActivities
    ) r
    GROUP by r.country;
END