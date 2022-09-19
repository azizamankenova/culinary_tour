-- use insert into function to insert a gourmet with the given parameters into gourmet
-- table, returning * will output the new row

INSERT INTO Gourmet (Favorite_Cuisine, Favorite_Restaurant, Travel_Destination, Average_Budget)
VALUES (15, 119, 3, 260)
RETURNING *;
