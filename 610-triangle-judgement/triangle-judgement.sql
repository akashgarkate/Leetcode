# Write your MySQL query statement below
Select x, y, z,
case when x+y>z AND y+z>x AND x+z>y then "Yes" Else "No" End As triangle
From triangle
;