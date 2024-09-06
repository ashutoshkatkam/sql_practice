-- Question URL
-- https://datalemur.com/questions/duplicate-job-listings

-- Approach 
-- First find all company_id with duplicate job postings
-- Then count the companies




select count(*) from (SELECT company_id
FROM job_listings
GROUP BY company_id,title,description
HAVING count(1) > 1) a