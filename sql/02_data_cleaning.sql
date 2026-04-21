-- ============================================
-- STEP 2: DATA CLEANING & TYPE CONVERSION
-- ============================================

-- Convert datetime fields
ALTER TABLE trips
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

-- Convert coordinates to numeric
ALTER TABLE trips
MODIFY start_lat DECIMAL(9,6),
MODIFY start_lng DECIMAL(9,6),
MODIFY end_lat DECIMAL(9,6),
MODIFY end_lng DECIMAL(9,6);

-- Validate dataset size
SELECT COUNT(*) AS total_rows FROM trips;

-- Check date range
SELECT
    MIN(started_at) AS earliest_ride,
    MAX(started_at) AS latest_ride
FROM trips;

-- NOTE:
-- If conversion fails, use STR_TO_DATE for safer parsing