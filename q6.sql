-- inner joining destination table wih restaurant table to have access to destination_name
-- then we are grouping restaurants by country region, and counting number
-- of restaurants in a region(group) using COUNT
-- sorting by restaurant count in descending order

SELECT Country_Region, D.Destination_Name, COUNT(Restaurant_ID) as "Restaurant_Count" FROM Restaurant
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
GROUP BY Country_Region
ORDER BY Restaurant_Count DESC