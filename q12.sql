-- left joining restaurant table with gourmet table because it preserves all the rows
-- of the left table(restaurant) and joins rows of the right table (gourmet)
-- when a row with a restaurant id does not exist in right table (gourmet)
-- NULL row is placed
-- and finally selecting all the fields from that table

SELECT * FROM Restaurant
LEFT JOIN Gourmet G on Restaurant.Restaurant_ID = G.Favorite_Restaurant