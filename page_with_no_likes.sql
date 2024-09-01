-- Question URL
-- https://datalemur.com/questions/sql-page-with-no-likes

-- Approach 
-- DO a left join and find were likes are null
-- Another approach is find the ids present in pages but not in page likes use EXCEPT key word

SELECT p.page_id
FROM pages p
    LEFT JOIN page_likes pl on p.page_id = pl.page_id
WHERE
    pl.page_id is NULL