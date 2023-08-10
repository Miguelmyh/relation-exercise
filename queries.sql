-- write your queries here

SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
----------------------------------------------------------------
SELECT first_name, last_name, COUNT(*) FROM owners JOIN vehicles 
ON owners.id = vehicles.owner_id 
GROUP BY owners.id ORDER BY first_name;
----------------------------------------------------------------
SELECT first_name, last_name, CAST(AVG(price) AS INT) AS average_price, COUNT(*) AS count FROM owners JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY owners.id HAVING AVG(price) > 10000 AND COUNT(*) > 1 ORDER BY first_name DESC ;