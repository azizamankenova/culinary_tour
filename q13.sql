-- selecting from Cuisine table, we are taking a particular cuisine id
-- then we are selecting from restaurant table rows with the respective cuisine id
-- and counting number of restaurant with the respective cuisine id
-- and counting number of distinct restaurants with in some Country Region

SELECT *,
       (
           SELECT COUNT(R.Restaurant_ID) FROM Restaurant R
           WHERE R.Cuisine_Type = Cuisine_ID
       ) AS Restaurant_Count,
       (
           SELECT COUNT(DISTINCT R.Country_Region) FROM Restaurant R
           WHERE R.Cuisine_Type = Cuisine_ID
       ) AS Distinct_Country_Region_Count
FROM Cuisine
