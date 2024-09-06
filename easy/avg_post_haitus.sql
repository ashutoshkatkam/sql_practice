-- Question URL
-- https://datalemur.com/questions/sql-average-post-hiatus-1

-- Approach 
-- Extract min and max in a group

SELECT user_id, extract( day from max(post_date) - min(post_date)) FROM posts
where EXTRACT(year from post_date) = 2021
group by user_id
having extract( day from max(post_date) - min(post_date)) <>0 ;