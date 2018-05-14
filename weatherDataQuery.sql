
/*
commands used to download the CSV files from the online database using SQL.
*/


-- Rename columns for joining
ALTER TABLE global_data RENAME COLUMN avg_temp to global_avg_temp;

ALTER TABLE city_data RENAME COLUMN avg_temp to city_avg_temp;

-- Select the desired data
SELECT global_data.year, global_data.global_avg_temp, city_avg_temp
FROM global_data INNER JOIN city_data
ON global_data.year=city_data.year
WHERE city = 'San Francisco';
-- Saved as csv file

