# Write your MySQL query statement below
SELECT e.Name, b.bonus
FROM employee e
LEFT JOIN bonus b ON e.empid = b.empid
WHERE b.bonus < 1000 OR  b.bonus IS NULL
ORDER BY b.Bonus;