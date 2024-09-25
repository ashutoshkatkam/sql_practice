-- Question URL
-- https://datalemur.com/questions/apple-pay-volume

-- Approach/Learning
-- Usage of coalesce and filter in the select clause

select
    merchant_id,
    COALESCE(
        sum(transaction_amount) FILTER (
            WHERE
                lower(payment_method) = 'apple pay'
        ),
        0
    ) as total_transaction
FROM transactions
GROUP BY
    merchant_id
order by total_transaction DESC