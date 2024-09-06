-- Question URL
-- https://datalemur.com/questions/second-day-confirmation

-- Approach/Learning
-- Understand how to add interval to the date column in where condition



SELECT e.user_id
FROM emails e   
INNER JOIN texts t  ON 
e.email_id = t.email_id
where t.signup_action = 'Confirmed' and e.signup_date = t.action_date - INTERVAL '1 day'