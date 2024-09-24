-- Question URL
-- https://datalemur.com/questions/quickbooks-vs-turbotax

-- Approach/Learning
-- Use like in filter clause
SELECT
    count(product) filter (
        where
            product like '%TurboTax%'
    ) as turbotax_total,
    count(product) filter (
        where
            product like '%QuickBooks%'
    ) as quickbooks_total
FROM filed_taxes