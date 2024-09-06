-- Question URL
-- https://datalemur.com/questions/top-profitable-drugs

-- Approach/Learning
-- ORDER BY derived column

SELECT drug,(total_sales - cogs) as total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;