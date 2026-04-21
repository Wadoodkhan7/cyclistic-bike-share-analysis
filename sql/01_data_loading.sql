-- ============================================
-- STEP 1: DATABASE & RAW DATA LOADING
-- ============================================

-- Create and select database
CREATE DATABASE cyclistic;
USE cyclistic;

-- Create raw table (all columns as VARCHAR to avoid import errors)
CREATE TABLE trips (
    ride_id VARCHAR(50),
    rideable_type VARCHAR(50),
    started_at VARCHAR(50),
    ended_at VARCHAR(50),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat VARCHAR(50),
    start_lng VARCHAR(50),
    end_lat VARCHAR(50),
    end_lng VARCHAR(50),
    member_casual VARCHAR(50)
);

-- Load CSV data
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zip/202501-divvy-tripdata.csv'
INTO TABLE trips
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
 @ride_id, @rideable_type, @started_at, @ended_at,
 @start_station_name, @start_station_id,
 @end_station_name, @end_station_id,
 @start_lat, @start_lng, @end_lat, @end_lng,
 @member_casual, @extra1, @extra2
)
SET
 ride_id = @ride_id,
 rideable_type = @rideable_type,
 started_at = @started_at,
 ended_at = @ended_at,
 start_station_name = @start_station_name,
 start_station_id = @start_station_id,
 end_station_name = @end_station_name,
 end_station_id = @end_station_id,
 start_lat = @start_lat,
 start_lng = @start_lng,
 end_lat = @end_lat,
 end_lng = @end_lng,
 member_casual = @member_casual;

-- Why VARCHAR first?
-- Prevents import failures due to inconsistent formats, nulls, or extra columns