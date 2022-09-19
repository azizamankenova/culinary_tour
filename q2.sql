-- Filtering years using where clause, ordering by Awarded_Since
-- Extracting year using strftime

SELECT Name, Chef, strftime('%Y', Awarded_Since) AS Awarded_Since FROM Restaurant
WHERE Awarded_Since < 2000
ORDER BY Awarded_Since
