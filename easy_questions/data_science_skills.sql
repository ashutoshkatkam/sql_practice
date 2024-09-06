-- Question URL
-- https://datalemur.com/questions/matching-skills

-- Approach 
-- Filter only those skills and then group by candidate_id to find candidates with 3 as count

SELECT candidate_id
FROM candidates
where
    skill in (
        'Python',
        'Tableau',
        'PostgreSQL'
    )
GROUP BY
    candidate_id
HAVING
    count(1) = 3
ORDER BY candidate_id