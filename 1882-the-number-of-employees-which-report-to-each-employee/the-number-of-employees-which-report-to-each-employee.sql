# Write your MySQL query statement below
Select e1.employee_id, e1.name, COUNT(e2.reports_to) as reports_count, ROUND(AVG(e2.age)) as average_age
From employees e1
Join employees e2 ON e1.employee_id = e2.reports_to
Group By e1.employee_id
Order By e1.employee_id;