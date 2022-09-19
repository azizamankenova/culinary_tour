-- using case + exists find if there exists a feasible restaurant,
-- where country region is the same as the travel destination,
-- cuisine type is the favourite cuisine and average price is less than average budget
-- of the gourmet, display "TRUE",
-- otherwise display "FALSE"

SELECT Gourmet_ID,
CASE WHEN EXISTS(
    SELECT * FROM Restaurant r
    WHERE r.Country_Region = Travel_Destination
      AND r.Cuisine_Type = Favorite_Cuisine
      AND r.Average_Price < Average_Budget
) THEN 'TRUE' ELSE 'FALSE' END AS Feasibility
FROM Gourmet