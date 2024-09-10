-- Question URL
-- https://datalemur.com/questions/sql-ibm-db2-product-analytics

-- Approach/Learning
-- Be careful with the join condition if you are filtering the grouped output in the given time interval you will filter out the null values also
-- In left join to preserve nulls filter or apply conditions on ON clause



with cte as (select e.employee_id,COALESCE(count(distinct q.query_id) as cnt
from employees e  
left join queries q
on e.employee_id = q.employee_id
where q.query_starttime between '2023-07-01 00:00:00' and '2023-09-30 23:59:59'
GROUP BY e.employee_id)
select cnt,count(employee_id)
from cte
group by cnt
order by cnt
