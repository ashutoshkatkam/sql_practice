-- Question URL
-- https://datalemur.com/questions/completed-trades

-- Approach
-- Filter the Completed trades then order by the count of the group and limit

SELECT u.city,count(t.order_id) as c
FROM trades t
INNER JOIN 
users u   
on t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY c DESC
LIMIT 3