# Write your MySQL query statement below
SELECT DISTINCT L1.num AS  ConsecutiveNums
FROM (logs L1 JOIN logs L2 ON L1.num = L2.num AND L1.id = L2.id-1)
JOIN logs L3 ON L1.num = L3.num AND L2.id = L3.id-1;