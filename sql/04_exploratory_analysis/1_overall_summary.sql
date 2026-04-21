/*
OVERALL SUMMARY

What to look for:
- How many total rides do members take vs casual riders?
- What is the percentage split between user types?
*/

SELECT
    COUNT(CASE WHEN member_casual = 'member' THEN 1 END) AS member_rides,
    COUNT(CASE WHEN member_casual = 'casual' THEN 1 END) AS casual_rides
FROM trips;