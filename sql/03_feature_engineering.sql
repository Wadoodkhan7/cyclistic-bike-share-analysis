-- ============================================
-- STEP 3: FEATURE ENGINEERING
-- ============================================

-- Add new analytical columns
ALTER TABLE trips
ADD COLUMN ride_length INT,
ADD COLUMN day_of_week VARCHAR(10),
ADD COLUMN month_name VARCHAR(10),
ADD COLUMN hour_of_day INT;

-- Calculate ride duration (in minutes)
UPDATE trips
SET ride_length = TIMESTAMPDIFF(MINUTE, started_at, ended_at);

-- Remove invalid records
DELETE FROM trips
WHERE ride_length <= 0 OR ride_length IS NULL;

-- Extract time-based features
UPDATE trips
SET
    day_of_week = DAYNAME(started_at),
    month_name = MONTHNAME(started_at),
    hour_of_day = HOUR(started_at);

-- Preview cleaned data
SELECT * FROM trips LIMIT 5;