-- Question URL
-- https://datalemur.com/questions/click-through-rate

-- Approach/Learning
-- We can use column alias in the order by clause

SELECT card_name,max(issued_amount) - min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference DESC;