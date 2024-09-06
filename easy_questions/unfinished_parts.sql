-- Question URL
-- https://datalemur.com/questions/tesla-unfinished-parts

-- Approach 
-- Simple straight forward filter question

SELECT part,assembly_step
FROM parts_assembly 
WHERE finish_date IS NULL