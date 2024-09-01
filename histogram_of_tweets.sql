-- Question URL
-- https://datalemur.com/questions/sql-histogram-tweets

-- Approach
-- Need to first filter the records of 2022
-- Group by user_id and find count
-- Then group by count and find the count frequency

WITH
    cte AS (
        SELECT user_id, count(1) AS cnt
        FROM tweets
        WHERE
            extract(
                YEAR
                FROM tweet_date
            ) = '2022'
        GROUP BY
            user_id
    )
SELECT cnt AS tweet_bucket, count(1) AS users_num
FROM cte
GROUP BY
    cnt