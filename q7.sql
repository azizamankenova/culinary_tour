-- inner joining destination table wih restaurant table to have access to destination_name
-- then we are grouping restaurants by country region, and counting number
-- of distinct cuisine_types in each region using COUNT
-- sorting by cuisine count in ascending order

SELECT Country_Region,
       D.Destination_Name,
       COUNT(DISTINCT Cuisine_Type) as "Cuisine_Count"
FROM Restaurant
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
GROUP BY Country_Region
ORDER BY Cuisine_Count