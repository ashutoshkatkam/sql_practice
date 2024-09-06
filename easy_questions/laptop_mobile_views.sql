-- Question URL
-- https://datalemur.com/questions/laptop-mobile-viewership

-- Approach 
-- Use case when to output 1 or 0
-- We can use count along with FILTER 


SELECT
SUM(case when device_type = 'laptop' then 1 else 0 end) as laptop_views,
SUM(case when device_type = 'tablet' or device_type = 'phone' then 1 else 0 end) as mobile_views
FROM
viewership

SELECT 
  COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_views,
  COUNT(*) FILTER (WHERE device_type IN ('tablet', 'phone'))  AS mobile_views 
FROM viewership;