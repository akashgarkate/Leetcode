# Write your MySQL query statement below
select 
  s1.product_id, 
  year as first_year, 
  quantity, 
  price 
from 
  Sales s1 
  inner join (
    select 
      product_id, 
      min(year) min_year 
    from 
      Sales 
    group by 
      product_id
  ) s2 on s1.product_id = s2.product_id 
  and s2.min_year = s1.year;