-- Question URL
-- https://datalemur.com/questions/subject-matter-experts

-- Approach/Learning
-- Try to filter as early as possible and use row_number where ever required than rank



with
    cte as (
        select
            employee_id,
            "domain",
            years_of_experience,
            row_number() over (
                partition by
                    employee_id
                order by years_of_experience desc
            )
        from employee_expertise
    )
select employee_id
from cte
where
    row_number <= 2
GROUP BY
    employee_id
HAVING
    max(years_of_experience) >= 8
    or sum(years_of_experience) >= 12