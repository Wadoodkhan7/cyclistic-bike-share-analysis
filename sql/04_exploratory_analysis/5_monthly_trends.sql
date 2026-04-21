/*
MONTHLY TRENDS

What to look for:
- Which months are busiest for members? For casuals?
- Is there seasonal variation?
- Do casuals ride more in summer?
*/

SELECT
    month_name,
    MONTH(started_at) AS month_num,
    COUNT(CASE WHEN member_casual = 'member' THEN 1 END) AS member_rides,
    COUNT(CASE WHEN member_casual = 'casual' THEN 1 END) AS casual_rides
FROM trips
GROUP BY month_name, month_num
ORDER BY month_num;