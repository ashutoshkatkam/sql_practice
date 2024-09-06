-- Question URL
-- https://datalemur.com/questions/click-through-rate

-- Approach/Learning
-- Understand the filter keyword instead of using case when and multiply with 100.0 not 100 to avoid integer division

SELECT 
app_id,round(count(event_type) FILTER (WHERE event_type = 'click')*100.0/count(event_type) FILTER (WHERE event_type = 'impression'),2) as ctr
FROM events
WHERE EXTRACT(YEAR FROM timestamp) = '2022'
GROUP BY app_id;