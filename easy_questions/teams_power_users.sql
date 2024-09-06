-- Question URL
-- https://datalemur.com/questions/teams-power-users

-- Approach 
-- No need to use rank or dense_rank as there No two users have sent the same number of messages in August 2022.

SELECT sender_id,count(message_id) as message_count FROM messages
where extract(year from sent_date) = 2022 and EXTRACT(month from sent_date) = 8
group by sender_id
order by message_count desc
limit 2;