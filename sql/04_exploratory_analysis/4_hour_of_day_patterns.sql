/*
HOUR OF DAY PATTERNS

What to look for:
- When do members ride most? (Commute hours: 7-9 AM, 4-6 PM)
- When do casual riders peak? (Midday: 10 AM - 3 PM)
- Are there clear usage pattern differences?
*/

SELECT
    hour_of_day,
    COUNT(CASE WHEN member_casual = 'member' THEN 1 END) AS member_rides,
    COUNT(CASE WHEN member_casual = 'casual' THEN 1 END) AS casual_rides
FROM trips
GROUP BY hour_of_day
ORDER BY hour_of_day;