-- Query 1: Total money by category
SELECT category, SUM(amount) AS total
FROM transactions
GROUP BY category;

-- Query 2: Customer balances, highest to lowest
SELECT c.name, SUM(t.amount) AS balance
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
GROUP BY c.name
ORDER BY balance DESC;

-- Query 3: Transaction count and total by category
SELECT category, COUNT(*) AS num_transactions, SUM(amount) AS total
FROM transactions
GROUP BY category
ORDER BY total DESC;