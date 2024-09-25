-- Question URL
-- https://datalemur.com/questions/most-expensive-purchase

-- Approach/Learning
-- Order by can be used with aliased columns

SELECT customer_id, MAX(purchase_amount) as purchase_amount
FROM transactions
GROUP BY
    customer_id
order by purchase_amount desc