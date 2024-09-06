-- Question URL
-- https://datalemur.com/questions/total-drugs-sales

-- Approach/Learning
-- CONCAT, CAST 
-- You can Order by column not present in select clause

SELECT manufacturer,CONCAT('$',CAST((ROUND(SUM(total_sales)/1000000)) AS VARCHAR),' million') as sale
FROM pharmacy_sales
GROUP BY manufacturer 
ORDER BY (ROUND(SUM(total_sales)/1000000)) DESC,manufacturer DESC