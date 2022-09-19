-- select name, chef and destination name(inner joining the destination table
-- with restaurant) from the restaurant table
-- then we restrict Country_Region to the travel destination of the gourmet 1,
-- restrict Cuisine_Type to favourite cuisine of gourmet 1
-- and restrict average budget of gourmet 1 to be greater than or equal to
-- average price of the restaurant

SELECT Name, Chef, D.Destination_Name FROM Restaurant
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
WHERE Country_Region = (SELECT Travel_Destination FROM Gourmet WHERE Gourmet_ID = 1)
  AND Cuisine_Type = (SELECT Favorite_Cuisine FROM Gourmet WHERE Gourmet_ID = 1)
  AND (SELECT Average_Budget FROM Gourmet WHERE Gourmet_ID = 1) >= Average_Price
