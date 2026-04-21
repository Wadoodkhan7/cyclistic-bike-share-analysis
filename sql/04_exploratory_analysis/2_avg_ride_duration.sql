/*
AVERAGE RIDE DURATION

What to look for:
- Do casual riders take longer trips than members?
- How big is the duration difference?
*/

SELECT
    AVG(CASE WHEN member_casual = 'member' THEN ride_length END) AS member_avg_ride,
    AVG(CASE WHEN member_casual = 'casual' THEN ride_length END) AS casual_avg_ride
FROM trips;