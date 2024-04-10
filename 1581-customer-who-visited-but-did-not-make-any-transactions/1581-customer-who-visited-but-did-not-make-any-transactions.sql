# Write your MySQL query statement below
SELECT 
    V.customer_id,
    COUNT(V.visit_id) AS count_no_trans  -- Count visits without transactions
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id  -- Join visits with transactions
WHERE T.visit_id IS NULL  -- Filter visits without matching transactions
GROUP BY V.customer_id;  -- Group by customer to count their visits without transactions


# Explanation:

# SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans ...:

# Selects the customer_id and counts the number of visits (visit_id) for each customer.
# Aliases the count as count_no_trans to indicate the number of visits without transactions.
# FROM Visits V LEFT JOIN Transactions T ON V.visit_id = T.visit_id ...:

# Performs a LEFT JOIN between the Visits table (V) and the Transactions table (T).
# This means all visits will be included, even if they don't have corresponding transactions.
# The join is based on the visit_id column, linking visits to their transactions.
# WHERE T.visit_id IS NULL ...:

# Filters the results to only include visits where the visit_id is NULL in the Transactions table.
# This effectively selects visits that have no matching transactions.
# GROUP BY V.customer_id;:

# Groups the results by customer_id, aggregating the counts of their visits without transactions.
# This provides the desired output of customer IDs and their respective counts of visits without transactions.
# Key Points:

# The LEFT JOIN ensures all visits are considered, even those without transactions.
# The WHERE T.visit_id IS NULL condition isolates the visits without transactions.
# The GROUP BY clause organizes the results by customer and counts their visits without transactions.