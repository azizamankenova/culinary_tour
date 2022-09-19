-- select name, chef and destination name(inner joining the destination table
-- with restaurant) from the restaurant table
-- then we restrict Country_Region to the travel destination of the gourmet 2,
-- and either restrict Cuisine_Type to favourite cuisine of gourmet 2 or
-- the average budget of gourmet 2 to be greater than or equal to
-- average price of the restaurant

SELECT Name, Chef, D.Destination_Name FROM Restaurant
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
WHERE Country_Region = (SELECT Travel_Destination FROM Gourmet WHERE Gourmet_ID = 2)
  AND (Cuisine_Type = (SELECT Favorite_Cuisine FROM Gourmet WHERE Gourmet_ID = 2)
  OR (SELECT Average_Budget FROM Gourmet WHERE Gourmet_ID = 2) >= Average_Price)
