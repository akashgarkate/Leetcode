# Write your MySQL query statement below
WITH CTE AS
(SELECT player_id, MIN(event_date) as first_login
FROM Activity
GROUP BY player_id),

CTE2 AS
(SELECT * , DATE_ADD(first_login, INTERVAL 1 DAY) AS next_login
FROM CTE)

SELECT
ROUND((SELECT COUNT(DISTINCT player_id)
FROM Activity
WHERE (player_id, event_date) IN (SELECT player_id, next_login from CTE2 ))/(SELECT COUNT(DISTINCT player_id) from Activity),2) AS fraction