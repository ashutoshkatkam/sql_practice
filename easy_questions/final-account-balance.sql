-- Question URL
-- https://datalemur.com/questions/final-account-balance

-- Approach/Learning
-- We can use case when inside the aggregate functions

SELECT account_id, sum(
        case
            when transaction_type = 'Deposit' then amount
            when transaction_type = 'Withdrawal' then -1.0 * amount
        end
    )
from transactions
GROUP BY
    account_id