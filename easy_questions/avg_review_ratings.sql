-- Question URL
-- https://datalemur.com/questions/sql-avg-review-ratings

-- Approach
-- Group by month and product_id 


SELECT EXTRACT(MONTH FROM submit_date) as mth,product_id,ROUND(avg(stars),2) as avg_stars 
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date),product_id
ORDER BY mth, product_id