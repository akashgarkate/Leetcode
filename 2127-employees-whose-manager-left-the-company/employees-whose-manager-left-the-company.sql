# Write your MySQL query statement below
Select employee_id
From Employees
Where manager_id NOT IN (Select employee_id From Employees) AND salary < 30000
order by employee_id;