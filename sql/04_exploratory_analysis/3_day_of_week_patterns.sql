/*
DAY OF WEEK PATTERNS

What to look for:
- Which days are busiest for members? For casual riders?
- Is there a weekend spike for casual riders?
- Do members ride consistently throughout the week?
*/

SELECT
    day_of_week,
    COUNT(CASE WHEN member_casual = 'member' THEN 1 END) AS member_rides,
    COUNT(CASE WHEN member_casual = 'casual' THEN 1 END) AS casual_rides
FROM trips
GROUP BY day_of_week
ORDER BY FIELD(day_of_week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');