-- using min function retrieve the minimal average price
-- and then find the restaurants with the minimal average price

SELECT * FROM Restaurant
WHERE Average_Price = (SELECT min(Average_Price) FROM Restaurant)