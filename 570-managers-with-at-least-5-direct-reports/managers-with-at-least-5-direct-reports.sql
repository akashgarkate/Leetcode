# Write your MySQL query statement below
SELECT e1.name
FROM employee e1
JOIN employee e2 ON e1.id = e2.managerid
GROUP BY e2.managerid
HAVING count(e2.managerid) >= 5
;