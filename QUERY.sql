-- ======================================================
--			              ALL QUERIES
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



