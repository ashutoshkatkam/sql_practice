-- Question URL
-- https://datalemur.com/questions/frequent-callers

-- Approach
-- GROUP BY + HAVING 

SELECT count(*) as policy_holder_count
FROM 
  (SELECT policy_holder_id 
  FROM callers
  GROUP BY policy_holder_id
  HAVING count(case_id) >= 3) a