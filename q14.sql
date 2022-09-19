-- inner joining gourmet and destination table;
-- then grouping by destination_name, counting gourmets in each destination
-- filtering gourmet_count greater than 1;
-- and displaying destination_name, and gourmet_count

SELECT Destination_Name, COUNT(Gourmet_ID) AS Gourmet_Count FROM Destination
INNER JOIN Gourmet G on Destination.Destination_ID = G.Travel_Destination
GROUP BY Destination_Name
HAVING Gourmet_Count > 1;
