-- Question URL
-- https://datalemur.com/questions/linkedin-power-creators

-- Approach/Learning
-- Try to join and filter as early as possible

select p.profile_id
from
    personal_profiles p
    inner join company_pages c on p.employer_id = c.company_id
WHERE
    p.followers > c.followers
order by p.profile_id