-- ======================================================
--			            ALL QUERIES
-- ======================================================


-- =========================================================================
-- QUERY-01: Retrieve all upcoming football matches belonging to the 'Champions League' 
-- where the match status is 'Available'
-- =========================================================================
SELECT 
  match_id, fixture, ROUND(base_ticket_price) 
FROM  
  matches
WHERE 
  tournament_category = 'Champions League' 
AND 
  match_status = 'Available';



-- =========================================================================
-- QUERY-02: Search for all users whose full names start with 'Tanvir' 
-- or contain the phrase 'Haque' (case-insensitive).
-- =========================================================================
SELECT 
  user_id, full_name, email 
FROM 
  users
WHERE 
  full_name ILIKE 'Tanvir%' 
OR 
  full_name ILIKE '%Haque%'



-- =========================================================================
-- QUERY-03: Retrieve all booking records where the payment status is missing (NULL), 
-- replacing the empty result with 'Action Required'.
-- =========================================================================
SELECT
  booking_id, 
  user_id, match_id, 
  COALESCE(payment_status, 'Action Required') AS systematic_status
FROM 
  bookings
WHERE 
  payment_status IS NULL;



-- =========================================================================
-- QUERY-04: Retrieve match booking details along with 
-- the User's full name and the scheduled Match fixture teams.
-- =========================================================================
SELECT 
  booking_id, full_name, fixture, ROUND(total_cost) AS total_cost
FROM 
  bookings AS b
INNER JOIN 
  users AS u 
ON 
  b.user_id = u.user_id
INNER JOIN 
  matches AS m
ON 
 b.match_id = m.match_id;


-- =========================================================================
-- QUERY-05: Display a comprehensive list of all users and their booking IDs, 
-- ensuring that fans who have never bought a ticket are still listed.
-- =========================================================================
SELECT 
  u.user_id, 
  full_name, 
  booking_id
FROM 
  users AS u
FULL JOIN 
  bookings AS b 
ON 
  u.user_id = b.user_id;



-- =========================================================================
-- QUERY-06: Find all ticket bookings where the total cost is strictly higher 
-- than the average cost of all ticket bookings.
-- =========================================================================
SELECT 
    booking_id, 
    match_id, 
    ROUND(total_cost) AS total_cost
FROM 
    bookings
WHERE 
    total_cost > (SELECT AVG(total_cost) FROM bookings);



-- =========================================================================
-- QUERY-07: Retrieve the top 2 most expensive matches sorted by base ticket price, 
-- skipping the absolute highest premium match.
-- =========================================================================
SELECT 
  match_id,
  fixture,
  base_ticket_price
FROM 
  matches
ORDER BY 
 base_ticket_price DESC
LIMIT 2
OFFSET 1