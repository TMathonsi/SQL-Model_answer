-- 1. Find the user with the email address 'john-smith1992@gmail.com'
SELECT * 
FROM users 
WHERE email = 'john-smith1992@gmail.com';

-- 2. Find out how many clicks the user with ID '2921-299-1929182' has made
SELECT COUNT(*) AS total_clicks 
FROM clicks 
WHERE user_id = '2921-299-1929182';

-- 3. Find out how many different devices this user has used
SELECT COUNT(DISTINCT device_id) AS total_devices 
FROM devices 
WHERE user_id = '2921-299-1929182';

-- 4. Return all transactions of this user
SELECT * 
FROM transactions 
WHERE user_id = '2921-299-1929182';

-- 5. Return all transactions of this user within the last 30 days
SELECT * 
FROM transactions 
WHERE user_id = '2921-299-1929182'
  AND transaction_date >= date('now', '-30 days');

-- 6. Return any transactions with a status equal to 'FAILED'
SELECT * 
FROM transactions 
WHERE status = 'FAILED';

-- 7. Calculate total number of transactions sent by each email address in descending order
SELECT u.email, COUNT(t.transaction_id) AS total_transactions
FROM users u
JOIN transactions t ON u.user_id = t.user_id
GROUP BY u.email
ORDER BY total_transactions DESC;





