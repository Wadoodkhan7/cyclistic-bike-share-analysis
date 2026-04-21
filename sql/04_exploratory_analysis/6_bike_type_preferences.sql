/*
BIKE TYPE PREFERENCES

What to look for:
- Which bike types do members prefer?
- Which bike types do casuals prefer?
- Are there usage differences by bike type?
*/

SELECT
    rideable_type,
    COUNT(CASE WHEN member_casual = 'member' THEN 1 END) AS member_usage,
    COUNT(CASE WHEN member_casual = 'casual' THEN 1 END) AS casual_usage
FROM trips
GROUP BY rideable_type;