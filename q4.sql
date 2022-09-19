-- using max function retrieve the maximal average price
-- and then find all the restaurants' destination name and cuisine type after
-- inner joining Restaurant table wih Cuisine and Destination tables
-- select the restaurant with maximum average price found

SELECT D.Destination_Name, C.Type FROM Restaurant
INNER JOIN Cuisine C on C.Cuisine_ID = Restaurant.Cuisine_Type
INNER JOIN Destination D on D.Destination_ID = Restaurant.Country_Region
WHERE Average_Price = (SELECT max(Average_Price) from Restaurant)