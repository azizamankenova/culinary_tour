-- select a restaurant if Restaurant_ID is in array of favourite restaurant ids
-- inner join with Destination to get access to Destination_Name

SELECT Name, Chef, D.Destination_Name FROM Restaurant
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
WHERE Restaurant_ID IN (SELECT Favorite_Restaurant FROM Gourmet)